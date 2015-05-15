;---------- Aqui empiezan las clases generadas por el protege ----------;

; Fri May 15 14:29:16 GMT+01:00 2015
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
;+		(cardinality 0 1)
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
	(single-slot NumeroAsignaturas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Puntuacion
		(type INTEGER)
		(range 0 10000)
		(default 0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot AsigName
		(type INSTANCE)
;+		(allowed-classes Asignatura)
;+		(cardinality 0 1)
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
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot AsigName
		(type INSTANCE)
;+		(allowed-classes Asignatura)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Puntuacion
		(type INTEGER)
		(range 0 10000)
		(default 0)
;+		(cardinality 0 1)
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
	(single-slot NumeroAsignaturas
		(type INTEGER)
;+		(cardinality 0 1)
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

(defclass Esp_Comp
	(is-a Especialidad)
	(role concrete))

(defclass Esp_ES
	(is-a Especialidad)
	(role concrete))

(defclass Esp_TI
	(is-a Especialidad)
	(role concrete))

(defclass Esp_AC
	(is-a Especialidad)
	(role concrete))

(defclass Esp_SI
	(is-a Especialidad)
	(role concrete))

(defclass OptativaEspecial
	(is-a Modalidad)
	(role concrete))

(defclass OptEsp_Comp
	(is-a OptativaEspecial)
	(role concrete))

(defclass OptEsp_ES
	(is-a OptativaEspecial)
	(role concrete))

(defclass OptEsp_TI
	(is-a OptativaEspecial)
	(role concrete))

(defclass OptEsp_SI
	(is-a OptativaEspecial)
	(role concrete))

(defclass OptEsp_AC
	(is-a OptativaEspecial)
	(role concrete))
;-------- Aqui empiezan las instancias generadas por el protege --------;
(definstances instances
; Fri May 15 14:29:16 GMT+01:00 2015
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
		[ontologia_Class20003])
	(DNI 47254514)
	(Nombre "Gonzalo Diez"))

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
		[ontologia_Class50002]
		[ontologia_Class50003]
		[ontologia_Class50004]
		[ontologia_Class50006]
		[ontologia_Class50007])
	(DNI 1)
	(Nombre "ULTRA FAST DNI"))

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
	(Nombre "BD")
	(PreRequesit
		[ontologia_Class20001]
		[ontologia_Class20004]))

([ontologia_Class30007] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "CI")
	(PreRequesit
		[ontologia_Class30003]
		[ontologia_Class20002]))

([ontologia_Class30008] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "EDA")
	(PreRequesit
		[ontologia_Class20001]
		[ontologia_Class20004]))

([ontologia_Class30009] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "PE")
	(PreRequesit
		[ontologia_Class30004]
		[ontologia_Class30005]))

([ontologia_Class30010] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "SO")
	(PreRequesit
		[ontologia_Class30007]
		[ontologia_Class30003]))

([ontologia_Class30011] of  Asignatura

	(CoRequesit [ontologia_Class30009])
	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "AC")
	(PreRequesit
		[ontologia_Class30003]
		[ontologia_Class30010]))

([ontologia_Class30012] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "EEE"))

([ontologia_Class30013] of  Asignatura

	(CoRequesit [ontologia_Class30008])
	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "IES")
	(PreRequesit [ontologia_Class30006]))

([ontologia_Class30014] of  Asignatura

	(CoRequesit
		[ontologia_Class30006]
		[ontologia_Class30013])
	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "PROP")
	(PreRequesit [ontologia_Class30008]))

([ontologia_Class30015] of  Asignatura

	(CoRequesit [ontologia_Class30010])
	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "XC"))

([ontologia_Class30016] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "IDI")
	(PreRequesit
		[ontologia_Class30008]
		[ontologia_Class30004]))

([ontologia_Class30017] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "PAR")
	(PreRequesit
		[ontologia_Class30011]
		[ontologia_Class30008]
		[ontologia_Class30010]))

([ontologia_Class40002] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40003])
	(Nombre "G")
	(PreRequesit
		[ontologia_Class30016]
		[ontologia_Class30014]))

([ontologia_Class40003] of  Esp_Comp

	(Descripcion "Esp_Comp"))

([ontologia_Class40004] of  Esp_ES

	(Descripcion "Esp_ES"))

([ontologia_Class40013] of  Esp_TI

	(Descripcion "Esp_TI"))

([ontologia_Class40014] of  Esp_AC

	(Descripcion "Esp_AC"))

([ontologia_Class40015] of  Esp_SI

	(Descripcion "Esp_SI"))

([ontologia_Class40016] of  OptEsp_Comp

	(Descripcion "OptEsp_Comp"))

([ontologia_Class40017] of  OptEsp_ES

	(Descripcion "OptEsp_ES"))

([ontologia_Class40018] of  OptEsp_TI

	(Descripcion "OptEsp_TI"))

([ontologia_Class40019] of  OptEsp_SI

	(Descripcion "OptEsp_SI"))

([ontologia_Class40020] of  OptEsp_AC

	(Descripcion "OptEsp_AC"))

([ontologia_Class40021] of  Asignatura

	(CoRequesit
		[ontologia_Class30009]
		[ontologia_Class30014])
	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40003])
	(Nombre "A")
	(PreRequesit [ontologia_Class30008]))

([ontologia_Class40022] of  Asignatura

	(CoRequesit [ontologia_Class30014])
	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40003])
	(Nombre "IA")
	(PreRequesit [ontologia_Class30008]))

([ontologia_Class40023] of  Asignatura

	(CoRequesit [ontologia_Class30014])
	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40003])
	(Nombre "LI")
	(PreRequesit [ontologia_Class30008]))

([ontologia_Class40024] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40003])
	(Nombre "LP")
	(PreRequesit [ontologia_Class30014]))

([ontologia_Class40025] of  Asignatura

	(CoRequesit [ontologia_Class30014])
	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40003])
	(Nombre "TC")
	(PreRequesit [ontologia_Class30008]))

([ontologia_Class40026] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40016])
	(Nombre "AA")
	(PreRequesit [ontologia_Class40021]))

([ontologia_Class40027] of  Asignatura

	(CoRequesit [ontologia_Class30014])
	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40016])
	(Nombre "APA")
	(PreRequesit [ontologia_Class30009]))

([ontologia_Class40028] of  Asignatura

	(CoRequesit [ontologia_Class30014])
	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40016])
	(Nombre "CAIM")
	(PreRequesit
		[ontologia_Class30006]
		[ontologia_Class30009]))

([ontologia_Class40029] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40016])
	(Nombre "CL")
	(PreRequesit [ontologia_Class40025]))

([ontologia_Class40030] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40016])
	(Nombre "CN")
	(PreRequesit
		[ontologia_Class30004]
		[ontologia_Class30005]))

([ontologia_Class40031] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40016])
	(Nombre "IO")
	(PreRequesit [ontologia_Class30009]))

([ontologia_Class40032] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40016])
	(Nombre "SID")
	(PreRequesit [ontologia_Class40022]))

([ontologia_Class40033] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40014])
	(Nombre "AC2")
	(PreRequesit [ontologia_Class30011]))

([ontologia_Class40034] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40014])
	(Nombre "DSBM")
	(PreRequesit [ontologia_Class30007]))

([ontologia_Class40035] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40014])
	(Nombre "MP")
	(PreRequesit
		[ontologia_Class40033]
		[ontologia_Class30017]))

([ontologia_Class40036] of  Asignatura

	(CoRequesit
		[ontologia_Class40033]
		[ontologia_Class40034]
		[ontologia_Class40037])
	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40014])
	(Nombre "PEC"))

([ontologia_Class40037] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40014])
	(Nombre "SO2")
	(PreRequesit [ontologia_Class30010]))

([ontologia_Class40038] of  Asignatura

	(HorarioAsig [ontologia_Class10003])
	(ModalidadAsig [ontologia_Class40019])
	(Nombre "MI")
	(PreRequesit [ontologia_Class30012]))

([ontologia_Class40039] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40014])
	(Nombre "XC2"))

([ontologia_Class40040] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40020])
	(Nombre "CASO")
	(PreRequesit
		[ontologia_Class40037]
		[ontologia_Class40075]))

([ontologia_Class40041] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40020])
	(Nombre "CPD")
	(PreRequesit [ontologia_Class30015]))

([ontologia_Class40042] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40020])
	(Nombre "PAP")
	(PreRequesit [ontologia_Class30017]))

([ontologia_Class40043] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40020])
	(Nombre "PCA")
	(PreRequesit [ontologia_Class30011]))

([ontologia_Class40044] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40020])
	(Nombre "PDS")
	(PreRequesit [ontologia_Class30007]))

([ontologia_Class40045] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40020])
	(Nombre "STR")
	(PreRequesit
		[ontologia_Class40034]
		[ontologia_Class30010]))

([ontologia_Class40046] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40020])
	(Nombre "VLSI")
	(PreRequesit [ontologia_Class40033]))

([ontologia_Class40047] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40004])
	(Nombre "AS")
	(PreRequesit [ontologia_Class30013]))

([ontologia_Class40048] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40004])
	(Nombre "ASW")
	(PreRequesit [ontologia_Class40047]))

([ontologia_Class40049] of  Asignatura

	(CoRequesit [ontologia_Class30013])
	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40004])
	(Nombre "DBD")
	(PreRequesit [ontologia_Class30006]))

([ontologia_Class40050] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40004])
	(Nombre "ER")
	(PreRequesit
		[ontologia_Class30012]
		[ontologia_Class30013]))

([ontologia_Class40051] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40004])
	(Nombre "GPS")
	(PreRequesit
		[ontologia_Class30012]
		[ontologia_Class30013]))

([ontologia_Class40053] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40004])
	(Nombre "PES")
	(PreRequesit
		[ontologia_Class40050]
		[ontologia_Class40051]
		[ontologia_Class40047]))

([ontologia_Class40054] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40017])
	(Nombre "CBDE")
	(PreRequesit
		[ontologia_Class40070]
		[ontologia_Class40049]))

([ontologia_Class40055] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40017])
	(Nombre "CSI")
	(PreRequesit
		[ontologia_Class30006]
		[ontologia_Class30012]))

([ontologia_Class40056] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40017])
	(Nombre "ECSDI")
	(PreRequesit [ontologia_Class40047]))

([ontologia_Class40057] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40017])
	(Nombre "SIM")
	(PreRequesit [ontologia_Class30009]))

([ontologia_Class40058] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40017])
	(Nombre "SOAD")
	(PreRequesit [ontologia_Class30010]))

([ontologia_Class40059] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40017])
	(Nombre "CAP")
	(PreRequesit
		[ontologia_Class30013]
		[ontologia_Class30014]))

([ontologia_Class40060] of  Asignatura

	(HorarioAsig [ontologia_Class10003])
	(ModalidadAsig [ontologia_Class40015])
	(Nombre "ADEI")
	(PreRequesit
		[ontologia_Class30006]
		[ontologia_Class30009]))

([ontologia_Class40061] of  Asignatura

	(HorarioAsig [ontologia_Class10003])
	(ModalidadAsig [ontologia_Class40015])
	(Nombre "DSI")
	(PreRequesit [ontologia_Class30013]))

([ontologia_Class40063] of  Asignatura

	(HorarioAsig [ontologia_Class10003])
	(ModalidadAsig [ontologia_Class40015])
	(Nombre "NE"))

([ontologia_Class40064] of  Asignatura

	(CoRequesit
		[ontologia_Class40050]
		[ontologia_Class40063])
	(HorarioAsig [ontologia_Class10003])
	(ModalidadAsig [ontologia_Class40015])
	(Nombre "PSI")
	(PreRequesit [ontologia_Class40061]))

([ontologia_Class40065] of  Asignatura

	(HorarioAsig [ontologia_Class10003])
	(ModalidadAsig [ontologia_Class40015])
	(Nombre "SIO")
	(PreRequesit
		[ontologia_Class30012]
		[ontologia_Class30006]))

([ontologia_Class40069] of  Asignatura

	(HorarioAsig [ontologia_Class10003])
	(ModalidadAsig [ontologia_Class40019])
	(Nombre "VPE")
	(PreRequesit [ontologia_Class30012]))

([ontologia_Class40070] of  Asignatura

	(HorarioAsig [ontologia_Class10003])
	(ModalidadAsig [ontologia_Class40019])
	(Nombre "ABD")
	(PreRequesit [ontologia_Class30006]))

([ontologia_Class40071] of  Asignatura

	(CoRequesit [ontologia_Class30015])
	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40013])
	(Nombre "ASO")
	(PreRequesit [ontologia_Class30010]))

([ontologia_Class40072] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40013])
	(Nombre "PI")
	(PreRequesit
		[ontologia_Class30015]
		[ontologia_Class40021]))

([ontologia_Class40073] of  Asignatura

	(CoRequesit
		[ontologia_Class40071]
		[ontologia_Class40072])
	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40013])
	(Nombre "PTI"))

([ontologia_Class40074] of  Asignatura

	(CoRequesit
		[ontologia_Class30010]
		[ontologia_Class30015])
	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40013])
	(Nombre "SI"))

([ontologia_Class40075] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40013])
	(Nombre "SOA")
	(PreRequesit [ontologia_Class30010]))

([ontologia_Class40076] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40013])
	(Nombre "TXC")
	(PreRequesit [ontologia_Class30015]))

([ontologia_Class40077] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40018])
	(Nombre "AD")
	(PreRequesit [ontologia_Class30015]))

([ontologia_Class40080] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40018])
	(Nombre "IM")
	(PreRequesit [ontologia_Class30015]))

([ontologia_Class40081] of  Asignatura

	(CoRequesit
		[ontologia_Class40072]
		[ontologia_Class30010])
	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40018])
	(Nombre "SDX")
	(PreRequesit [ontologia_Class30015]))

([ontologia_Class40082] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40018])
	(Nombre "TCI")
	(PreRequesit
		[ontologia_Class0]
		[ontologia_Class30004]
		[ontologia_Class30005]))

([ontologia_Class40083] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "APSS"))

([ontologia_Class40084] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "ASDP"))

([ontologia_Class40085] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "ASMI"))

([ontologia_Class40086] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "C"))

([ontologia_Class40087] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "CCQ"))

([ontologia_Class40088] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "CDI"))

([ontologia_Class40089] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "DCS"))

([ontologia_Class40090] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "FOMAR"))

([ontologia_Class40091] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "GEOC"))

([ontologia_Class40092] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "MD"))

([ontologia_Class40093] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "ROB"))

([ontologia_Class40094] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "SLDS"))

([ontologia_Class40095] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "TGA"))

([ontologia_Class40096] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "VC"))

([ontologia_Class40097] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "VJ"))

([ontologia_Class40098] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "WSE"))

([ontologia_Class40099] of  Asignatura

	(HorarioAsig [ontologia_Class10001])
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "APC"))

([ontologia_Class50002] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class0])
	(Cuatrimentre "1")
	(HorarioAsig [ontologia_Class10003])
	(Nota 10.0))

([ontologia_Class50003] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class10000])
	(Cuatrimentre "1")
	(HorarioAsig [ontologia_Class10003])
	(Nota 10.0))

([ontologia_Class50004] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class20001])
	(Cuatrimentre "1")
	(HorarioAsig [ontologia_Class10003])
	(Nota 10.0))

([ontologia_Class50006] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class20002])
	(Cuatrimentre "1")
	(HorarioAsig [ontologia_Class10003])
	(Nota 10.0))

([ontologia_Class50007] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class20004])
	(Cuatrimentre "2")
	(HorarioAsig [ontologia_Class10003])
	(Nota 4.0))

([ontologia_Class50009] of  Asignatura

	(CoRequesit [ontologia_Class30010])
	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40018])
	(Nombre "CPD")
	(PreRequesit [ontologia_Class30015]))
)

;------------------ Aqui empieza el sistema experto --------------------;



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
  (progn$ (?var ?valores-permitidos) (lowcase ?var))
  (format t "¿%s? (%s) " ?pregunta (implode$ ?valores-permitidos))
  (bind ?respuesta (read))
  (while (not (member (lowcase ?respuesta) ?valores-permitidos)) do
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


; Template de lista de recomendaciones sin orden
(deftemplate MAIN::lista-asig-desordenada
  (multislot recomendaciones (type INSTANCE))
)

; Template de lista de recomendaciones con orden
(deftemplate MAIN::lista-asig-ordenada
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
    ; DEBUG
    (bind ?dnimuerto (send ?muerto get-DNI))
    (printout t "DEBUG: Borrando el alumno " ?dnimuerto crlf)
    ; \DEBUG
    (progn$ (?c $?convocatorias)
      ; DEBUG
    (printout t "DEBUG: Borrando Convocatoria" crlf)
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

; Preguntar por la dificultad asumible
(defrule pregunta-numeroAsig
  (not (noIdeaQuienEs))
  ?alumno <- (object (is-a Alumno))
  =>
  (if (si-o-no-p "Quieres elegir el numero de asignatura que el sistema te recomendara")
    then
      (bind ?respuesta (pregunta "Cuantas asignaturas quieres cursar?" 1 2 3 4 5 6 7 ))
      (send ?alumno put-NumeroAsignaturas ?respuesta)    
    else      
      (assert (calcularNasig))
      (send ?alumno put-NumeroAsignaturas np)  
  )
  (assert (nAsig))
)

; Mira si ya hemos hecho todas las preguntas
(defrule preguntas-acabadas
  (not (noIdeaQuienEs))
  ?a <- (pdificultad)
  ?b <- (pcarga)
  ?c <- (nAsig)
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
  (format t "Has decidido cursar: %s asignaturas" ?nAsignaturas)
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

; TODO hacer una regla que calcule el numero de asignaturas que el alumno quiere hacer
; Regla encargada de sacar el numero de asignaturas que suele hacer el alumno
(defrule calcular-numero-asignaturas
  ?a <- (calcularNasig)
  ?alumno <- (object (is-a Alumno))
  =>
  (printout t "DEBUG: Como el alumno ha elegido np en el numero de asignaturas, lo calculamos nosotros" crlf) ; DEBUG
  (send ?alumno put-NumeroAsignaturas 5)
  (retract ?a)
)

(defrule pasar-a-calcular
  ?alumno <- (object (is-a Alumno) (VolumenTrabajo alto|medio|bajo) (Dificultad alto|medio|bajo))
  (not (calcularNasig))
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
    (make-instance (gensym) of AsignaturaRecomendada (AsigName ?curr-con) (Motivos "olo") (Puntuacion 0))
  )
)

; Quita las asignaturas que ya están aprovadas
(defrule quitar-asignaturas-aprovadas
  ?r <- (object (is-a AsignaturaRecomendada) (AsigName ?asig1))
  ?c <- (object (is-a Convocatoria) (AsignaturaMatriculada ?asig2) (Nota ?nota&:(> ?nota 4.99)))
  (test (eq (send ?asig1 get-Nombre) (send (instance-address * ?asig2) get-Nombre)))
  =>
    (printout t "DEBUG: La asignatura " (send ?asig1 get-Nombre) " se descarta con nota " ?nota crlf)
    (send ?r delete)
)

; TODO hacer regla que quite las asignaturas que tengan un volumen de trabajo mayor al asumible
; TODO hacer regla que quite las asignaturas que tengan una dificultad mayor a la asumible
; TODO hacer regla que quite las asignaturas con prerrequisitos que no cumple (se haga de lo ultimo)


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
; TODO Hacer regla que le de puntos a las asignaturas (suspendidas el ultimo cuatrimestre | no aprovadas)



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
  (while (and (< (length$ $?r) (+ ?n 1)) (not (eq (length$ $?l) 0)))
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
    (printout t "Razones: " (send ?asigRec get-Motivos) crlf)
  )
)
