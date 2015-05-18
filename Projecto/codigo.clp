
; ==================HECHO DESDE LA ULTIMA ITERACION===============================
; Si el alumno le faltan asignaturas obligatorias por aprobar, +1000 a esas asig
; El sistema pregunta por la especialidad que prefiere el alumno
; Si al alumno le faltan asignatura obligatorias de especialidad por aprobar, +400
;
;
;=================================================================================
;str-cat = string concat

;progn$ (?elemento ?lista) (cosa a aplicar)

;send ?instancia get-slot = devuelve el contenido del slot de esa instancia

;Preguntar todo lo que quiere con opciona a no importar

;si no importa, calcularlo del historial

;dar recomendación

(defmodule MAIN (export ?ALL))

; Aquí van los mensage handlers, las funciones de pregunta, los templates

; Obtiene una respuesta del conjunto de posibles respuestas
(deffunction pregunta (?pregunta $?valores-permitidos)
  (bind $?lowcase-valores (create$))
  (progn$ (?var ?valores-permitidos) 
    (bind $?lowcase-valores (insert$ $?lowcase-valores (+ (length $?lowcase-valores) 1) (lowcase ?var)))
  )
  (format t "¿%s? (%s) " ?pregunta (implode$ ?valores-permitidos))
  (bind ?respuesta (read))
  (while (not (member (lowcase ?respuesta) ?lowcase-valores)) do
    (format t "¿%s? (%s) " ?pregunta (implode$ ?valores-permitidos))
    (bind ?respuesta (read))
  )
  ?respuesta
)

; Obtiene una respuesta 
(deffunction pregunta-general (?pregunta)
  (format t "¿%s? " ?pregunta)
  (bind ?respuesta (read))
  ?respuesta
)

; Realiza una pregunta binaria
(deffunction si-o-no-p (?pregunta)
  (bind ?respuesta (pregunta ?pregunta si no s n))
  (if (or (eq (lowcase ?respuesta) si) (eq (lowcase ?respuesta) s))
    then TRUE 
    else FALSE
  )
)

; Funcion para hacer una pregunta con respuesta numerica unica
(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi)
  (format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
  (bind ?respuesta (read))
  (while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do
    (format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
    (bind ?respuesta (read))
  )
  ?respuesta
)

; Template de lista de recomendaciones sin orden
(deftemplate lista-asig-desordenada
  (multislot recomendaciones (type INSTANCE))
)

; Template de lista de recomendaciones con orden
(deftemplate lista-asig-ordenada
  (multislot recomendaciones (type INSTANCE))
)

; Funcion que retorna el elemento con puntuacion maxima
(deffunction max-puntuacion ($?lista)
  (bind ?max -1)
  (bind ?ret nil)
  (progn$ (?elemento $?lista)
    (bind ?puntuacion (send ?elemento get-Puntuacion))
    (if (> ?puntuacion ?max)
      then 
      (bind ?max ?puntuacion)
      (bind ?ret ?elemento)
    )
  )
  ?ret
)

;

(defrule olakase
  (declare (salience 10))
  =>
  (printout t "---------------------------------------------------" crlf)
  (printout t "----- Sistema Experto para elegir asignaturas -----" crlf)
  (printout t "---------------------------------------------------" crlf)
  (printout t crlf)
  (focus preguntas-preferencias)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Nuevo modulo ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defmodule preguntas-preferencias "Modulo para conocer mejor al usuario"
  (import MAIN ?ALL)
  (export ?ALL)
)

(defrule pregunta-dni
  (declare (salience 10))
  (not (tengoputodni))
  =>
  (bind ?dni (pregunta-general "Cual es su dni (unicamente los numeros)"))
  (assert (estudianteRand ?dni))
  (assert (tengoputodni))
  (assert (noIdeaQuienEs))
  (assert (miraQuienEs))
)

;Mirar si el estudiante identificado por el dni introducido existe
(defrule buscar-estudiante
  (declare (salience 1))
  ?z <- (noIdeaQuienEs)
  ?y <- (miraQuienEs)
  ?x <- (estudianteRand ?dni)
  ?t <- (object (is-a Alumno) (DNI ?dni) (Nombre ?name))
  =>
  (format t "Hola %s. " ?name)
  (printout t "Eres estudiante de la fib. Continuamos" crlf)
  (bind ?estudiantes (find-all-instances ((?inst Alumno)) (neq ?inst:DNI ?dni)))
  (progn$ (?muerto $?estudiantes)
    (bind ?convocatorias (send ?muerto get-Convocatorias))
    (printout t "DEBUG: Borrando el alumno " (send ?muerto get-DNI) crlf)
    (progn$ (?c $?convocatorias)
      (printout t "DEBUG: Borrando Convocatoria" crlf)
      (send (instance-address * ?c) delete)
    )
    (send ?muerto delete)
  ) 
  (retract ?x)
  (retract ?z)
)

; Si no existe, a iorar
(defrule estudiate-random
  (declare (salience -1))
  ?z <- (tengoputodni)
  ?y <- (noIdeaQuienEs)
  ?x <- (estudianteRand ?dni)
  =>
  (format t "No hay ni ha habido ningun estudiandte con el dni %d." ?dni)
  (printout t "Llama a secretaria o Ha ver hestudiao" crlf)
  (retract ?z)
  (retract ?y)
  (retract ?x)
)

; Preguntar por la carga de trabajo asumible
(defrule pregunta-carga
  (not (noIdeaQuienEs))
  ?alumno <- (object (is-a Alumno))
  =>
  (bind ?respuesta (pregunta "Que carga de trabajo quieres asumir" Alto Medio Bajo np))
  (send ?alumno put-VolumenTrabajo ?respuesta)
  (assert (pcarga))
)

; Preguntar por la dificultad asumible
(defrule pregunta-dificultad
  (not (noIdeaQuienEs))
  ?alumno <- (object (is-a Alumno))
  =>
  (bind ?respuesta (pregunta "Que dificultad quieres asumir" Alto Medio Bajo np))
  (send ?alumno put-Dificultad ?respuesta)
  (assert (pdificultad))
)

; Preguntar por la dificultad asumible
(defrule pregunta-numeroAsig
  (not (noIdeaQuienEs))
  ?alumno <- (object (is-a Alumno))
  =>
  (if (si-o-no-p "Quieres elegir el numero de asignatura que el sistema te recomendara")
    then
      (bind ?respuesta (pregunta-numerica "Cuantas asignaturas quieres cursar" 1 10 ))
      (send ?alumno put-NumeroAsignaturas ?respuesta)    
    else      
      (send ?alumno put-NumeroAsignaturas np)  
  )
  (assert (nAsig))
)

(defrule pregunta-especialidad
  (not (noIdeaQuienEs))
  ?alumno <- (object (is-a Alumno))
  =>
  (if (si-o-no-p "Tienes preferencia por alguna especialidad")
    then
      (bind ?respuesta (pregunta "Cual" AC Comp ES SI TI))
      (switch ?respuesta
        (case ac then 
          (bind ?especialidad (find-instance ((?inst Esp_AC)) TRUE))
          (send ?alumno put-EspecialidadPref ?especialidad)
        )
        (case comp then
          (bind ?especialidad (find-instance ((?inst Esp_Comp)) TRUE))
          (send ?alumno put-EspecialidadPref ?especialidad)
        )
        (case es then
          (bind ?especialidad (find-instance ((?inst Esp_ES)) TRUE))
          (send ?alumno put-EspecialidadPref ?especialidad)
        )
        (case si then
          (bind ?especialidad (find-instance ((?inst Esp_SI)) TRUE))
          (send ?alumno put-EspecialidadPref ?especialidad)
        )
        (case ti then
          (bind ?especialidad (find-instance ((?inst Esp_TI)) TRUE))
          (send ?alumno put-EspecialidadPref ?especialidad)
        )
      )
      (assert (pespecialidad si))
    else
      (assert (pespecialidad no))
      (send ?alumno put-EspecialidadPref nil)
  )
)

; Mira si ya hemos hecho todas las preguntas
(defrule preguntas-acabadas
  (not (noIdeaQuienEs))
  ?a <- (pdificultad)
  ?b <- (pcarga)
  ?c <- (nAsig)
  ?d <- (pespecialidad ?siono)
  ?alumno <- (object (is-a Alumno))
  =>
  (retract ?a)
  (retract ?b)
  (retract ?c)
  (bind ?nombre (send ?alumno get-Nombre))
  (bind ?dni (send ?alumno get-DNI))
  (bind ?volumen (send ?alumno get-VolumenTrabajo))
  (bind ?dificultad (send ?alumno get-Dificultad))
  (bind ?nAsignaturas (send ?alumno get-NumeroAsignaturas))

  (printout t "" crlf)
  (format t "Hola %s, %d  " ?nombre ?dni)
  (printout t "" crlf)
  (format t "Has elegido un volumen de trabajo: %s" ?volumen)
  (printout t "" crlf)
  (format t "Has elegido una dificultad: %s" ?dificultad)
  (printout t "" crlf)
  (format t "Has decidido cursar: %s asignaturas" (str-cat ?nAsignaturas ""))
  (printout t "" crlf)
  (if (eq ?siono si)
    then
      (bind ?especialidad (send ?alumno get-EspecialidadPref))
      (format t "Tienes preferencia por la especialidad %s" (send ?especialidad get-Descripcion))
    else
      (printout t "No tienes preferencia por ninguna especialidad (El sistema tratara de deducir tu preferencia)")
  )
  (printout t "" crlf)


  (printout t "" crlf)
  (printout t "Empezamos a calcular tus mejores opciones para asignaturas" crlf crlf)
  (focus calcular-preferencias)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Nuevo modulo ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defmodule calcular-preferencias "Modulo encargado de calcular las preferencias que no nos dice el usuario"
  (import MAIN ?ALL)
  (export ?ALL)
)

(defrule calcular-ultimo-cuatrimestre
  (not (ultimoCuatri))
  =>
  (bind $?convs (find-all-instances ((?inst Convocatoria)) TRUE))
  (bind ?ultimo-cuatri 0)
  (progn$ (?conv $?convs)
    (bind ?cuatri (send ?conv get-Cuatrimestre))
    (if (> ?cuatri ?ultimo-cuatri)
      then (bind ?ultimo-cuatri ?cuatri)
    )
  )
  (assert (ultimoCuatri ?ultimo-cuatri))
  (printout t "DEBUG: El ultimo cuatri es el " ?ultimo-cuatri crlf) ; DEBUG
  
)

;Funcion encargada de calcular el volumen de trabajo a partir de las ultimas convocatorias
(defrule calcular-volumen ; TODO hacer que haga algo inteligente
  ?alumno <- (object (is-a Alumno) (VolumenTrabajo np))
  =>
  (printout t "DEBUG: Como el alumno ha elegido np en  el volumen de trabajo, lo calculamos nosotros" crlf) ; DEBUG
  (send ?alumno put-VolumenTrabajo alto)
)

;Funcion encargada de calcular la dificultad asumible a partir de las ultimas convocatorias
(defrule calcular-dificultad ; TODO hacer que haga algo inteligente
  ?alumno <- (object (is-a Alumno) (Dificultad np))
  =>
  (printout t "DEBUG: Como el alumno ha elegido np en la eleccion de dificultad, lo calculamos nosotros" crlf) ; DEBUG
  (send ?alumno put-Dificultad alto)
)

; Regla encargada de sacar el numero de asignaturas que suele hacer el alumno
(defrule calcular-numero-asignaturas
  ?alumno <- (object (is-a Alumno) (Convocatorias $?convs) (NumeroAsignaturas ?na))
  (ultimoCuatri ?cuatri)
  (test (eq ?na np))
  =>
  (printout t "DEBUG: Como el alumno ha elegido np en el numero de asignaturas, lo calculamos nosotros" crlf) ; DEBUG
  (bind ?num-asig 0)
  (progn$ (?conv ?convs)
    (bind ?c (send (instance-address * ?conv) get-Cuatrimestre))
    (if (eq ?cuatri ?c)
      then (bind ?num-asig (+ ?num-asig 1))
    )
  )
  (send ?alumno put-NumeroAsignaturas ?num-asig)
  (printout t "DEBUG: El numero de asignaturas es " ?num-asig crlf) ; DEBUG
)

; Regla que busca la especialidad mas afin al usuario
(defrule calcular-especialidad ; TODO Buscar a especialidad mas acertada
  ?alumno <- (object (is-a Alumno) (Convocatorias $?convs) (EspecialidadPref ?e))
  (test (eq ?e nil))
  =>
  (printout t "DERP" crlf)
)

(defrule pasar-a-seleccion
  ?alumno <- (object (is-a Alumno) (VolumenTrabajo alto|medio|bajo) (Dificultad alto|medio|bajo) (NumeroAsignaturas ?na))
  (test (neq ?na np))
  =>
  (focus quitar-imposibles)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Nuevo modulo ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defmodule quitar-imposibles "Modulo encargado de seleccionar las asignaturas posibles"
  (import MAIN ?ALL)
  (export ?ALL)
)

; Todas las asignaturas son posibles inicialmente
(defrule anadir-asignaturas
  (declare (salience 10))
  =>
  (bind $?lista (find-all-instances ((?inst Asignatura)) TRUE))
  (progn$ (?curr-con ?lista)
    (make-instance (gensym) of AsignaturaRecomendada (AsigName ?curr-con) (Puntuacion 0))
  )
)

; Quita las asignaturas que ya están aprovadas
(defrule quitar-asignaturas-aprovadas
  (declare (salience 9))
  ?r <- (object (is-a AsignaturaRecomendada) (AsigName ?asig1))
  ?c <- (object (is-a Convocatoria) (AsignaturaMatriculada ?asig2) (Nota ?nota&:(> ?nota 4.99)))
  (test (eq (send ?asig1 get-Nombre) (send (instance-address * ?asig2) get-Nombre)))
  =>
    (printout t "DEBUG: La asignatura " (send ?asig1 get-Nombre) " se descarta con nota " ?nota crlf)
    (send ?r delete)
)

; Regla que quita las asignaturas que tengan un volumen de trabajo mayor al asumible
(defrule quitar-volumen-alto
  ?a <- (object (is-a AsignaturaRecomendada) (AsigName ?asig))
  (object (is-a Alumno) (VolumenTrabajo medio))
  (test (eq alto (send ?asig get-VolumenTrabajo)))
  =>
  (printout t "DEUBG: Quitando " (send ?asig get-Nombre) " ya que su volumen de trabajo es alto " crlf)
  (send ?a delete)
)

(defrule quitar-volumen-medio
  ?a <- (object (is-a AsignaturaRecomendada) (AsigName ?asig))
  (object (is-a Alumno) (VolumenTrabajo bajo))
  (test (or (eq alto (send ?asig get-VolumenTrabajo)) (eq medio (send ?asig get-VolumenTrabajo))))
  =>
  (printout t "DEUBG: Quitando " (send ?asig get-Nombre) " ya que su volumen de trabajo es alto o medio " crlf)
  (send ?a delete)
)

; Regla que quita las asignaturas que tengan una dificultad mayor a la asumible
(defrule quitar-dificultad-alta
  ?a <- (object (is-a AsignaturaRecomendada) (AsigName ?asig))
  (object (is-a Alumno) (Dificultad medio))
  (test (eq alto (send ?asig get-Dificultad)))
  =>
  (printout t "DEUBG: Quitando " (send ?asig get-Nombre) " ya que su dificultad es alta " crlf)
  (send ?a delete)
)

(defrule quitar-dificultad-media
  ?a <- (object (is-a AsignaturaRecomendada) (AsigName ?asig))
  (object (is-a Alumno) (Dificultad bajo))
  (test (or (eq alto (send ?asig get-Dificultad)) (eq medio (send ?asig get-Dificultad))))
  =>
  (printout t "DEUBG: Quitando " (send ?asig get-Nombre) " ya que su dificultad es alta o media " crlf)
  (send ?a delete)
)

; Regla que quita las asignaturas con prerequisitos que no cumple 
(defrule quitar-prerequesitos
  ?asigRec <- (object (is-a AsignaturaRecomendada) (AsigName ?asig))
  =>
  (bind ?borrar FALSE)
  (bind $?preres (send ?asig get-PreRequesit))
  (progn$ (?prere ?preres)
    (bind ?encontrado FALSE)
    (bind ?nombre (send (instance-address * ?prere) get-Nombre))
    (bind $?convs (find-all-instances ((?inst Convocatoria)) (eq (send (instance-address * ?inst:AsignaturaMatriculada) get-Nombre) ?nombre)))
    (progn$ (?conv $?convs)
      (bind ?alguno TRUE)
      (if (> (send ?conv get-Nota) 4.99)
        then (bind ?encontrado TRUE)
      )
    )
    (if (eq ?encontrado FALSE) then (bind ?borrar TRUE))
  )
  (if (eq ?borrar TRUE) 
    then 
      (send ?asigRec delete)
      (printout t "DEBUG: La asignaura " (send ?asig get-Nombre) " ha sido borrada ya que no cumple los prerequesitos" crlf)
    
  )
  (assert (q-prerequesitos))
)





(defrule saltar-a-calculo
  (declare (salience -10))
  =>
  (printout t "Ha acabado de quitar asignaturas imposibles" crlf)
  (focus calcular)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Nuevo modulo ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defmodule calcular "Modulo encargado de darle mas puntos a las asignaturas mas afines con el usuario"
  (import MAIN ?ALL)
  (export ?ALL)
)
; TODO Hacer este modulo entero huehue
; TODO HAcer regla que mire en que periodo estas, y le de mas puntos a las asignaturas te ese periodo (acabar las obligatorias antes que las obligatorias de especialidad)

; Regla que le da puntos a las asignaturas (suspendidas el ultimo cuatrimestre | no aprovadas)
(defrule asignaturas-suspendidas
  ?asigRec <- (object (is-a AsignaturaRecomendada) (AsigName ?asig1) (Puntuacion ?p) (Motivos $?m))
  (object (is-a Convocatoria) (AsignaturaMatriculada ?asig2) (Nota ?nota&:(< ?nota 5)))
  (test (eq (send ?asig1 get-Nombre) (send (instance-address * ?asig2) get-Nombre)))
  (not (asignatura-suspendida ?asig1))
  =>
  (bind ?p (+ ?p 150))
  (bind ?motivo "La asignatura no está aprovada +150")
  (bind $?m (insert$ $?m (+ (length$ $?m) 1) ?motivo))
  (send ?asigRec put-Puntuacion ?p)
  (send ?asigRec put-Motivos ?m)
  (assert (asignatura-suspendida ?asig1))
  (printout t "DEBUG: +150 La asignaura " (send ?asig1 get-Nombre) " ha sido cursada y no esta aprovada" crlf)

)

; Regla que le da puntos a las asignaturas obligatorias que faltan por aprovar
(defrule asignaturas-obligatorias
  ?asigRec <- (object (is-a AsignaturaRecomendada) (AsigName ?asig) (Puntuacion ?p) (Motivos $?m))
  (object (is-a Obligatoria) (Descripcion ?d))
  (test (eq (send (instance-address * (send ?asig get-ModalidadAsig)) get-Descripcion) ?d))
  (not (asignatura-obligatoria ?asig))
  =>
  (bind ?p (+ ?p 1000))
  (bind ?motivo "La asignatura es obligatoria +1000")
  (bind $?m (insert$ $?m (+ (length$ $?m) 1) ?motivo))
  (send ?asigRec put-Puntuacion ?p)
  (send ?asigRec put-Motivos ?m)
  (assert (asignatura-obligatoria ?asig))
  (printout t "DEBUG: +1000 La asignaura " (send ?asig get-Nombre) " es obligatoria y no esta aprovada" crlf)
)

; Regla que le da puntos a las asignaturas de la especialidad preferida
(defrule asignaturas-especialidad
  ?asigRec <- (object (is-a AsignaturaRecomendada) (AsigName ?asig) (Puntuacion ?p) (Motivos $?m))
  (object (is-a Alumno) (EspecialidadPref ?especialidad))
  (test (neq ?especialidad nil))
  (test (eq (send (instance-address * (send ?asig get-ModalidadAsig)) get-Descripcion) (send ?especialidad get-Descripcion)))
  (not (asignatura-especialidad ?asig))
  =>
  (bind ?p (+ ?p 400))
  (bind ?motivo (str-cat "La asignatura es de la especilidad " (send ?especialidad get-Descripcion )" y obligatoria +400"))
  (bind $?m (insert$ $?m (+ (length$ $?m) 1) ?motivo))
  (send ?asigRec put-Puntuacion ?p)
  (send ?asigRec put-Motivos ?m)
  (assert (asignatura-especialidad ?asig))
  (printout t "DEBUG: +400 La asignaura " (send ?asig get-Nombre) " es de la especialidad preferida del usuario" crlf)  
)


(defrule saltar-a-presentacion
  (declare (salience -10))
  =>
  (printout t "Ha acabado de buscar las mejores asignaturas solo para ti." crlf)
  (focus ordenar-e-imprimir)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Nuevo modulo ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defmodule ordenar-e-imprimir "Modulo encargado de presentar la solucion al usuario"
  (import MAIN ?ALL)
  (export ?ALL)
)
; Inicializa la lista desordenada
(defrule crear-desordenada
  (not (lista-asig-desordenada))
  =>
  (assert (lista-asig-desordenada))
  (printout t "DEBUG: creando lista desordenada." crlf)
)

(defrule insertar-asignaturas
  ?asigrec <- (object (is-a AsignaturaRecomendada))
  ?desor <- (lista-asig-desordenada (recomendaciones $?l))
  (test (not (member$ ?asigrec $?l)))
  =>
  (bind $?l (insert$ $?l (+ (length$ $?l) 1) ?asigrec))
  (modify ?desor (recomendaciones $?l))
  (printout t "DEBUG: insertando asignaturas en lista desordenada." crlf)
)

; Regla que ordena la lista desordenada
(defrule ordenar
  (declare (salience -5))
  (not (lista-asig-ordenada))
  (lista-asig-desordenada (recomendaciones $?l))
  (object (is-a Alumno) (NumeroAsignaturas ?n))
  =>
  (bind $?r (create$))
  (while (and (< (length$ $?r) (+ ?n 0 )) (not (eq (length$ $?l) 0)))
    (bind ?elemento (max-puntuacion $?l))
    (bind $?l (delete-member$ $?l ?elemento))
    (bind $?r (insert$ $?r (+ (length $?r) 1) ?elemento))
  )
  (assert (lista-asig-ordenada (recomendaciones $?r)))
  (printout t "DEBUG: ordenado." crlf)
)


; regla encargada de imprimir la solucion
(defrule imprimir ; TODO Hacer que se imprima de una manera bonita :D
  (object (is-a Alumno) (Nombre ?nombre))
  (lista-asig-ordenada (recomendaciones $?l))
  =>
  (printout t "Hola " ?nombre ". Aqui tienes tu recomendacion" crlf)
  (progn$ (?asigRec $?l)
    (bind ?asig (send ?asigRec get-AsigName))
    (printout t "=======================================" crlf)
    (printout t "Nombre: " (send ?asig get-Nombre) crlf)
    (printout t "Puntuacion: " (send ?asigRec get-Puntuacion) crlf)
    (printout t "Razones: "crlf)
    (progn$ (?motivo (send ?asigRec get-Motivos))
      (printout t " * " ?motivo crlf)
    )
  )
)
