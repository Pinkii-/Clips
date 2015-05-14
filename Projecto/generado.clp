;---------- Aqui empiezan las clases generadas por el protege ----------;

; Thu May 14 20:38:36 GMT+01:00 2015
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
	(single-slot PrctAprobado
		(type INTEGER)
		(range 0 100)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot AlumnoRecomendado
		(type INSTANCE)
;+		(allowed-classes Alumno)
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
		(allowed-values alto medio bajo np)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Dificultad
		(type SYMBOL)
		(allowed-values alto medio bajo np)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot PreRequesit
		(type INSTANCE)
;+		(allowed-classes Asignatura)
		(create-accessor read-write))
	(multislot AsignaturasRecomendadas
		(type INSTANCE)
;+		(allowed-classes AsignaturaRecomendada)
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
	(single-slot VolumenTrabajo
		(type SYMBOL)
		(allowed-values alto medio bajo np)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot HorarioAsig
		(type INSTANCE)
;+		(allowed-classes Horario)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Dificultad
		(type SYMBOL)
		(allowed-values alto medio bajo np)
;+		(cardinality 0 1)
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
		(allowed-values alto medio bajo np)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Dificultad
		(type SYMBOL)
		(allowed-values alto medio bajo np)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Convocatorias
		(type INSTANCE)
;+		(allowed-classes Convocatoria)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot DNI
		(type INTEGER)
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

(defclass OptativaEspecial
	(is-a Modalidad)
	(role concrete))
;-------- Aqui empiezan las instancias generadas por el protege --------;
(definstances instances
; Thu May 14 20:38:36 GMT+01:00 2015
; 
;+ (version "3.4.8")
;+ (build "Build 629")

([ontologia_Class0] of  Asignatura

	(Dificultad alto)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 400)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "FM")
	(PrctAprobado 60)
	(VolumenTrabajo medio))

([ontologia_Class10000] of  Asignatura

	(Dificultad medio)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 400)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "F")
	(PrctAprobado 50)
	(VolumenTrabajo medio))

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

	(Convocatorias
		[ontologia_Class10008]
		[ontologia_Class20003]
		[ontologia_Class20000])
	(DNI 47254514)
	(Nombre "Gonzalo Diez"))

([ontologia_Class20000] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class30012])
	(Cuatrimentre "2")
	(HorarioAsig [ontologia_Class10003])
	(Nota 2.0))

([ontologia_Class20001] of  Asignatura

	(Dificultad bajo)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 400)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "PRO1")
	(PrctAprobado 50)
	(VolumenTrabajo medio))

([ontologia_Class20002] of  Asignatura

	(Dificultad medio)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 400)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "IC")
	(PrctAprobado 50)
	(VolumenTrabajo alto))

([ontologia_Class20003] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class20002])
	(Cuatrimentre "1")
	(HorarioAsig [ontologia_Class10002])
	(Nota 9.5))

([ontologia_Class20004] of  Asignatura

	(Dificultad medio)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 280)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "PRO2")
	(PrctAprobado 50)
	(PreRequesit [ontologia_Class20001])
	(VolumenTrabajo medio))

([ontologia_Class30001] of  Alumno

	(Convocatorias
		[ontologia_Class40002]
		[ontologia_Class40003])
	(DNI 1)
	(Nombre "Fast DNI"))

([ontologia_Class30002] of  OptativaEspecial

	(Descripcion "OptativaEspecial"))

([ontologia_Class30003] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "EC"))

([ontologia_Class30004] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "M1"))

([ontologia_Class30005] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "M2"))

([ontologia_Class30006] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "BD"))

([ontologia_Class30007] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "CI"))

([ontologia_Class30008] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "EDA"))

([ontologia_Class30009] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "PE"))

([ontologia_Class30010] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "SO"))

([ontologia_Class30011] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "AC"))

([ontologia_Class30012] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "EEE"))

([ontologia_Class30013] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "IES"))

([ontologia_Class30014] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "PROP"))

([ontologia_Class30015] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "XC"))

([ontologia_Class30016] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "IDI"))

([ontologia_Class30017] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "PAR"))

([ontologia_Class40002] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class30007])
	(Cuatrimentre "1")
	(HorarioAsig [ontologia_Class10003])
	(Nota 10.0))

([ontologia_Class40003] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class10000])
	(Cuatrimentre "1")
	(HorarioAsig [ontologia_Class10003])
	(Nota 10.0))
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
  (not (tengoputodni))
  =>
  (bind ?dni (pregunta-general "Cual es su dni (unicamente los numeros)"))
  (assert (estudianteRand ?dni))
  (assert (tengoputodni))
)

; Mirar si el estudiante identificado por el dni introducido existe
(defrule buscar-estudiante
  (declare (salience 1))
  ?x <- (estudianteRand ?dni)
  ?t <- (object (is-a Alumno) (DNI ?dni) (Nombre ?name))
  =>
  (format t "Hola %s. " ?name)
  (printout t "Eres estudiante de la fib. Continuamos" crlf)
  (bind ?estudiantes (find-all-instances ((?inst Alumno)) (neq ?inst:DNI ?dni)))

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
  ?alumno <- (object (is-a Alumno))
  =>
  (bind ?respuesta (pregunta "Que carga de trabajo quieres asumir" alto medio bajo np))
  (send ?alumno put-VolumenTrabajo ?respuesta)
  (assert (pcarga))
)

; Preguntar por la dificultad asumible
(defrule pregunta-dificultad
  ?alumno <- (object (is-a Alumno))
  =>
  (bind ?respuesta (pregunta "Que dificultad quieres asumir" alto medio bajo np))
  (send ?alumno put-Dificultad ?respuesta)
  (assert (pdificultad))
)

; Mira si ya hemos hecho todas las preguntas
(defrule preguntas-acabadas
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
(defrule anadir-asignaturas
  (declare (salience 10))
  =>
  (bind $?lista (find-all-instances ((?inst Asignatura)) TRUE))
  (progn$ (?curr-con ?lista)
    (make-instance (gensym) of AsignaturaRecomendada (AsigName ?curr-con))
  )
)

; Quita las asignaturas que ya están aprovadas
;(defrule quitar-asignaturas-aprovadas
;?alumno <- (object (is-a Alumno) (Convocatorias ?conv))
;   ?resultado <- (object (is-a Resultado) (AlumnoRecomendado ?alumno) (AsignaturasRecomendadas $?recomendadas))
;   =>
;   (bind $?convocatorias (send ?alumno get-Convocatorias))

;   (progn$ (?conv $?convocatorias)
;     (bind ?nota (send (instance-address * ?conv) get-Nota))
;     (if (> ?nota 5) 
;       then 
;         (bind ?asig (send (instance-address * ?conv) get-AsignaturaMatriculada))
;         (progn$ (?asigRecom $?recomendadas)
;           (bind ?asigR (send (instance-address * (instance-name ?asigRecom)) get-AsigName))    
;           (if (eq (instance-name ?asigR) (instance-name ?asig))
;             then
;               (printout t "Aprobada la asignatura" ?asig crlf) ; DEBUG
;           )
;         )
;     )
;   ) 
; )