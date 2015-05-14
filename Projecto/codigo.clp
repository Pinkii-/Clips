

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
  (not (tengoputodni))
  =>
  (bind ?dni (pregunta-general "Cual es su dni (unicamente los numeros)"))
  (assert (estudianteRand ?dni))
  (assert (tengoputodni))
  (assert (noIdeaQuienEs))
)

;Mirar si el estudiante identificado por el dni introducido existe
(defrule buscar-estudiante
  (declare (salience 1))
  ?z <-(noIdeaQuienEs)
  ?x <- (estudianteRand ?dni)
  ?t <- (object (is-a Alumno) (DNI ?dni) (Nombre ?name))
  =>
  (format t "Hola %s. " ?name)
  (printout t "Eres estudiante de la fib. Continuamos" crlf)
  (bind ?estudiantes (find-all-instances ((?inst Alumno)) (neq ?inst:DNI ?dni)))
  (progn$ (?muerto $?estudiantes)
    (bind ?convocatorias (send ?muerto get-Convocatorias))
    ; DEBUG
    (bind ?dnimuerto (send ?muerto get-DNI))
    (printout t "Borrando el alumno " ?dnimuerto crlf)
    ; \DEBUG
    (progn$ (?c $?convocatorias)
      ; DEBUG
    (printout t "Borrando Convocatoria" crlf)
    ; \DEBUG
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
  (noIdeaQuienEs)
  (estudianteRand ?dni)
  =>
  (format t "No hay ni ha habido ningun estudiandte con el dni %d." ?dni)
  (printout t "Ha ver hestudiao" crlf)
)

; Preguntar por la carga de trabajo asumible
(defrule pregunta-carga
  (not (noIdeaQuienEs))
  ?alumno <- (object (is-a Alumno))
  =>
  (bind ?respuesta (pregunta "Que carga de trabajo quieres asumir" alto medio bajo np))
  (send ?alumno put-VolumenTrabajo ?respuesta)
  (assert (pcarga))
)

; Preguntar por la dificultad asumible
(defrule pregunta-dificultad
  (not (noIdeaQuienEs))
  ?alumno <- (object (is-a Alumno))
  =>
  (bind ?respuesta (pregunta "Que dificultad quieres asumir" alto medio bajo np))
  (send ?alumno put-Dificultad ?respuesta)
  (assert (pdificultad))
)

; Mira si ya hemos hecho todas las preguntas
(defrule preguntas-acabadas
  (not (noIdeaQuienEs))
  ?a <- (pdificultad)
  ?b <- (pcarga)
  ?alumno <- (object (is-a Alumno))
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
  (printout t "Empezamos a calcular tus mejores opciones para asignaturas" crlf crlf)
  (focus quitar-imposibles)
)


(defmodule quitar-imposibles "Modulo encargado de seleccionar las asignaturas posibles"
  (import MAIN ?ALL)
  (export ?ALL)
)

; Todas las asignaturas son posibles inicialmente
(defrule quitar-imposibles::anadir-asignaturas
  (declare (salience 10))
  =>
  (bind $?lista (find-all-instances ((?inst Asignatura)) TRUE))
  (progn$ (?curr-con ?lista)
    (make-instance (gensym) of AsignaturaRecomendada (AsigName ?curr-con) (Motivos "olo") (Puntuacion 0))
  )
)

; Quita las asignaturas que ya están aprovadas
(defrule quitar-asignaturas-aprovadas
  ?r <- (object (is-a AsignaturaRecomendada) (AsigName ?asig1))
  ?c <- (object (is-a Convocatoria) (AsignaturaMatriculada ?asig2))
  (test (eq (send ?asig1 get-Nombre) (send (instance-address * ?asig2) get-Nombre)))
  =>
    (printout t "La asignatura " (send ?asig1 get-Nombre) " se descarta porque está aprovada" crlf)
    (send ?r delete)
)