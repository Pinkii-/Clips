;---------- Aqui empiezan las clases generadas por el protege ----------;

; Thu May 14 14:58:34 GMT+01:00 2015
; 
;+ (version "3.4.8")
;+ (build "Build 629")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot AsignaturaMatriculada
		(type INSTANCE)
;+		(allowed-classes Asignatura)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot AlumnoRecomendado
		(type INSTANCE)
;+		(allowed-classes Alumno)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PrctAprobado
		(type INTEGER)
		(range 0 100)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot DificultadAsumible
		(type SYMBOL)
		(allowed-values Alto Medio Bajo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Descripcion
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Cuatrimentre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot DNI
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Motivos
		(type STRING)
		(default "Io k ze tio equisde")
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot VolumenTrabajo
		(type SYMBOL)
		(allowed-values Alto Medio Bajo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot PreRequesit
		(type INSTANCE)
;+		(allowed-classes Asignatura)
		(create-accessor read-write))
	(multislot AsignaturasRecomendadas
		(type INSTANCE)
;+		(allowed-classes AsignaturaRecomendada)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot HorarioAsig
		(type INSTANCE)
;+		(allowed-classes Horario)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Nota
		(type FLOAT)
		(range 0.0 10.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Convocatorias
		(type INSTANCE)
;+		(allowed-classes Convocatoria)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot CoRequesit
		(type INSTANCE)
;+		(allowed-classes Asignatura)
		(create-accessor read-write))
	(single-slot Matriculados
;+		(comment "Numero de alumnos matriculados.")
		(type INTEGER)
		(range 0 1000)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Puntuacion
		(type INTEGER)
		(range 0 10000)
		(default 0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot AsigName
		(type INSTANCE)
;+		(allowed-classes Asignatura)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot ModalidadAsig
		(type INSTANCE)
;+		(allowed-classes Modalidad)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Asignatura
	(is-a USER)
	(role concrete)
	(multislot PreRequesit
		(type INSTANCE)
;+		(allowed-classes Asignatura)
		(create-accessor read-write))
	(single-slot HorarioAsig
		(type INSTANCE)
;+		(allowed-classes Horario)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot ModalidadAsig
		(type INSTANCE)
;+		(allowed-classes Modalidad)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PrctAprobado
		(type INTEGER)
		(range 0 100)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot CoRequesit
		(type INSTANCE)
;+		(allowed-classes Asignatura)
		(create-accessor read-write))
	(single-slot Matriculados
;+		(comment "Numero de alumnos matriculados.")
		(type INTEGER)
		(range 0 1000)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Convocatoria
	(is-a USER)
	(role concrete)
	(single-slot AsignaturaMatriculada
		(type INSTANCE)
;+		(allowed-classes Asignatura)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot HorarioAsig
		(type INSTANCE)
;+		(allowed-classes Horario)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Cuatrimentre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Nota
		(type FLOAT)
		(range 0.0 10.0)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Alumno
	(is-a USER)
	(role concrete)
	(single-slot VolumenTrabajo
		(type SYMBOL)
		(allowed-values Alto Medio Bajo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Convocatorias
		(type INSTANCE)
;+		(allowed-classes Convocatoria)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot DificultadAsumible
		(type SYMBOL)
		(allowed-values Alto Medio Bajo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot DNI
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Resultado
	(is-a USER)
	(role concrete)
	(single-slot AlumnoRecomendado
		(type INSTANCE)
;+		(allowed-classes Alumno)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot AsignaturasRecomendadas
		(type INSTANCE)
;+		(allowed-classes AsignaturaRecomendada)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass AsignaturaRecomendada
	(is-a USER)
	(role concrete)
	(single-slot Motivos
		(type STRING)
		(default "Io k ze tio equisde")
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot AsigName
		(type INSTANCE)
;+		(allowed-classes Asignatura)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Puntuacion
		(type INTEGER)
		(range 0 10000)
		(default 0)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Horario
	(is-a USER)
	(role abstract)
	(single-slot Descripcion
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Tarde
	(is-a Horario)
	(role concrete))

(defclass Manana
	(is-a Horario)
	(role concrete))

(defclass Both
	(is-a Horario)
	(role concrete))

(defclass Modalidad
	(is-a USER)
	(role abstract)
	(single-slot Descripcion
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Obligatoria
	(is-a Modalidad)
	(role concrete))

(defclass Optativa
	(is-a Modalidad)
	(role concrete))

(defclass Especialidad
	(is-a Modalidad)
	(role concrete))
;-------- Aqui empiezan las instancias generadas por el protege --------;
(definstances instances
; Thu May 14 14:58:34 GMT+01:00 2015
; 
;+ (version "3.4.8")
;+ (build "Build 629")

([ontologia_Class0] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(Matriculados 400)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "FM")
	(PrctAprobado 60))

([ontologia_Class10001] of  Both

	(Descripcion "Manana y Tarde"))

([ontologia_Class10002] of  Manana

	(Descripcion "Manana"))

([ontologia_Class10003] of  Tarde

	(Descripcion "Tarde"))

([ontologia_Class10004] of  Especialidad

	(Descripcion "Especialidad"))

([ontologia_Class10005] of  Obligatoria

	(Descripcion "Obligatoria"))

([ontologia_Class10006] of  Optativa

	(Descripcion "Optativa"))

([ontologia_Class10008] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class0])
	(Cuatrimentre "1")
	(HorarioAsig [ontologia_Class10002])
	(Nota 8.5))

([ontologia_Class10016] of  Alumno

	(Convocatorias [ontologia_Class10008])
	(DNI 47254514)
	(Nombre "Gonzalo Diez"))
)

;------------------ Aqui empieza el sistema experto --------------------;



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