

;str-cat = string concat

;progn$ (?elemento ?lista) (cosa a aplicar)

;send ?instancia get-slot = devuelve el contenido del slot de esa instancia

;Preguntar todo lo que quiere con opciona a no importar

;si no importa, calcularlo del historial

;dar recomendación

(defmodule MAIN (export ?ALL))

; Aquí van los mensage handlers, las funciones de pregunta

;;; Obtiene una respuesta del conjunto de posibles respuestas
(deffunction pregunta (?pregunta $?valores-permitidos)
  (progn$ (?var ?valores-permitidos) (lowcase ?var))
  (format t "¿%s? (%s) " ?pregunta (implode$ ?valores-permitidos))
  (bind ?respuesta (read))
  (while (not (member (lowcase ?respuesta) ?valores-permitidos)) do
    (format t "¿%s? (%s) " ?pregunta (implode$ ?valores-permitidos))
    (bind ?respuesta (read))
  )
  ?respuesta
)

;;; Obtiene una respuesta 
(deffunction pregunta-general (?pregunta)
  (format t "¿%s? " ?pregunta)
  (bind ?respuesta (read))
  ?respuesta
)

;;; Realiza una pregunta binaria
(deffunction si-o-no-p (?pregunta)
  (bind ?respuesta (pregunta ?pregunta si no s n))
  (if (or (eq (lowcase ?respuesta) si) (eq (lowcase ?respuesta) s))
    then TRUE 
    else FALSE
  )
)

(defrule olakase
  (declare (salience 10))
  =>
  (printout t "---------------------------------------------------" crlf)
  (printout t "----- Sistema Experto para elegir asignaturas -----" crlf)
  (printout t "---------------------------------------------------" crlf)
  (printout t crlf)
  (focus preguntas-preferencias)
)

(defmodule preguntas-preferencias "Modulo para conocer mejor al usuario"
  (import MAIN ?ALL)
  (export ?ALL)
)

(defrule pregunta-dni
  (not (object (is-a Resultado)))
  =>
  (bind ?dni (pregunta-general "Cual es su dni (unicamente los numeros)"))
  (assert (estudianteRand ?dni))
)

; Mirar si el estudiante identificado por el dni introducido existe
(defrule buscar-estudiante
  (declare (salience 1))
  ?x <- (estudianteRand ?dni)
  ?t <- (object (is-a Alumno) (DNI ?dni) (Nombre ?name))
  =>
  (format t "Hola %s. " ?name)
  (printout t "Eres estudiante de la fib. Continuamos" crlf)
  (make-instance of Resultado (AlumnoRecomendado ?t))
  (retract ?x)
)

; Si no existe, a iorar
(defrule estudiate-random
  (declare (salience -1))
  (estudianteRand ?dni)
  =>
  (format t "No hay ni ha habido ningun estudiandte con el dni %d." ?dni)
  (printout t "Ha ver hestudiao" crlf)
)

; Preguntar por la carga de trabajo asumible
(defrule pregunta-carga
  ?resultado <- (object (is-a Resultado) (AlumnoRecomendado ?alumno))
  =>
  (bind ?respuesta (pregunta "Que carga de trabajo quieres asumir" alto medio bajo np))
  (send ?alumno put-VolumenTrabajo ?respuesta)
  (assert (pcarga))
)

; Preguntar por la dificultad asumible
(defrule pregunta-dificultad
  ?resultado <- (object (is-a Resultado) (AlumnoRecomendado ?alumno))
  =>
  (bind ?respuesta (pregunta "Que dificultad quieres asumir" alto medio bajo np))
  (send ?alumno put-Dificultad ?respuesta)
  (assert (pdificultad))
)

; Mira si ya hemos hecho todas las preguntas
(defrule preguntas-acabadas
  ?a <- (pdificultad)
  ?b <- (pcarga)
  (object (is-a Resultado) (AlumnoRecomendado ?alumno))
  =>
  (retract ?a)
  (retract ?b)
  (bind ?nombre (send ?alumno get-Nombre))
  (bind ?dni (send ?alumno get-DNI))
  (bind ?volumen (send ?alumno get-VolumenTrabajo))
  (bind ?dificultad (send ?alumno get-Dificultad))

  (printout t "" crlf)
  (format t "Hola %s, %d  " ?nombre ?dni)
  (printout t "" crlf)
  (format t "Has elegido un volumen de trabajo: %s" ?volumen)
  (printout t "" crlf)
  (format t "Has elegido una dificultad: %s" ?dificultad)
  (printout t "" crlf)


  (printout t "" crlf)
  (printout t "Empezamos a calcular tus mejores opciones para asignaturas" crlf)
  (focus quitar-imposibles)
)


(defmodule quitar-imposibles "Modulo encargado de seleccionar las asignaturas posibles"
  (import MAIN ?ALL)
  (export ?ALL)
)

(defrule seleccionar-todas-asignaturas
  (declare (salience 1))
  ?resultado <- (object (is-a Resultado) (AsignaturasRecomendadas $?asignaturas))
  ?asig <- (object (is-a Asignatura) (Nombre ?nombre))
  (test (not (member$ ?asig $?asignaturas)))
  =>
  (printout t "Agregada la asignatura " ?nombre crlf) ; DEBUG

  ;(if (member$ nil $?asignaturas)
   ; then (replace$ ?asignaturas 0 0 $?asig)  
    ;else
      (bind $?asignaturas (insert$ ?asignaturas (+ (length ?asignaturas) 1) ?asig))
      (send ?resultado put-AsignaturasRecomendadas $?asignaturas)
  ;)
)

; Quita las asignaturas que ya están aprovadas
(defrule quitar-asignaturas-aprovadas
  ;?alumno <- (object (is-a Alumno) (Convocatorias ?conv))
  ?resultado <- (object (is-a Resultado) (AlumnoRecomendado ?alumno) (AsignaturasRecomendadas $?recomendadas))
  =>
  (bind $?convocatorias (send ?alumno get-Convocatorias))

  (progn$ (?conv $?convocatorias)
    (bind ?nota (send (instance-address * ?conv) get-Nota))
    (if (> ?nota 5) 
      then 
        (bind ?asig (send (instance-address * ?conv) get-AsignaturaMatriculada))
        (progn$ (?asigRecom $?recomendadas)
          (bind ?asigR (send (instance-address * ?asigRecom) get-AsigName))    
          (if (eq (instance-name ?asigR) (instance-name ?asig))
            then
              (printout t "Aprobada la asignatura" ?asig crlf) ; DEBUG
          )
        )
    ;(format t "Has sacado un %d en la asignatura %s " ?nota ?nAsig)
    )
  ) 
)