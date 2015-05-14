

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

(defrule buscar-estudiante
  (declare (salience 1))
  ?x <- (estudianteRand ?dni)
  ?t <- (object (is-a Alumno) (DNI ?dni))
  =>
  (format t "Hola %d. " ?dni)
  (printout t "Eres estudiante de la fib. Continuamos" crlf)
  (make-instance of Resultado (AlumnoRecomendado ?t))
  (retract ?x)
)

(defrule estudiate-random
  (declare (salience -1))
  (estudianteRand ?dni)
  =>
  (format t "%d " ?dni)
  (printout t "No eres estudiante de la fib. Ha ver hestudiao" crlf)
)