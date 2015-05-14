;---------- Aqui empiezan las clases generadas por el protege ----------;

; Thu May 14 21:47:23 GMT+01:00 2015
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
; Thu May 14 21:47:23 GMT+01:00 2015
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

([ontologia_Class40002] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40003])
	(Nombre "G"))

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

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40003])
	(Nombre "A"))

([ontologia_Class40022] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40003])
	(Nombre "IA"))

([ontologia_Class40023] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40003])
	(Nombre "LI"))

([ontologia_Class40024] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40003])
	(Nombre "LP"))

([ontologia_Class40025] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40003])
	(Nombre "TC"))

([ontologia_Class40026] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40016])
	(Nombre "AA"))

([ontologia_Class40027] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40016])
	(Nombre "APA"))

([ontologia_Class40028] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40016])
	(Nombre "CAIM"))

([ontologia_Class40029] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40016])
	(Nombre "CL"))

([ontologia_Class40030] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40016])
	(Nombre "CN"))

([ontologia_Class40031] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40016])
	(Nombre "IO"))

([ontologia_Class40032] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40016])
	(Nombre "SID"))

([ontologia_Class40033] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40014])
	(Nombre "AC2"))

([ontologia_Class40034] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40014])
	(Nombre "DSBM"))

([ontologia_Class40035] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40014])
	(Nombre "MP"))

([ontologia_Class40036] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40014])
	(Nombre "PEC"))

([ontologia_Class40037] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40014])
	(Nombre "SO2"))

([ontologia_Class40038] of  Asignatura

	(HorarioAsig [ontologia_Class10003])
	(ModalidadAsig [ontologia_Class40019])
	(Nombre "MI"))

([ontologia_Class40039] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40014])
	(Nombre "XC2"))

([ontologia_Class40040] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40020])
	(Nombre "CASO"))

([ontologia_Class40041] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40020])
	(Nombre "CPD"))

([ontologia_Class40042] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40020])
	(Nombre "PAP"))

([ontologia_Class40043] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40020])
	(Nombre "PCA"))

([ontologia_Class40044] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40020])
	(Nombre "PDS"))

([ontologia_Class40045] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40020])
	(Nombre "STR"))

([ontologia_Class40046] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40020])
	(Nombre "VLSI"))

([ontologia_Class40047] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40004])
	(Nombre "AS"))

([ontologia_Class40048] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40004])
	(Nombre "ASW"))

([ontologia_Class40049] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40004])
	(Nombre "DBD"))

([ontologia_Class40050] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40004])
	(Nombre "ER"))

([ontologia_Class40051] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40004])
	(Nombre "GPS"))

([ontologia_Class40052] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40004])
	(Nombre "AS"))

([ontologia_Class40053] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40004])
	(Nombre "PES"))

([ontologia_Class40054] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40017])
	(Nombre "CBDE"))

([ontologia_Class40055] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40017])
	(Nombre "CSI"))

([ontologia_Class40056] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40017])
	(Nombre "ECSDI"))

([ontologia_Class40057] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40017])
	(Nombre "SIM"))

([ontologia_Class40058] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40017])
	(Nombre "SOAD"))

([ontologia_Class40059] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40017])
	(Nombre "CAP"))

([ontologia_Class40060] of  Asignatura

	(HorarioAsig [ontologia_Class10003])
	(ModalidadAsig [ontologia_Class40015])
	(Nombre "ADEI"))

([ontologia_Class40061] of  Asignatura

	(HorarioAsig [ontologia_Class10003])
	(ModalidadAsig [ontologia_Class40015])
	(Nombre "DSI"))

([ontologia_Class40062] of  Asignatura

	(HorarioAsig [ontologia_Class10003])
	(ModalidadAsig [ontologia_Class40015])
	(Nombre "ER"))

([ontologia_Class40063] of  Asignatura

	(HorarioAsig [ontologia_Class10003])
	(ModalidadAsig [ontologia_Class40015])
	(Nombre "NE"))

([ontologia_Class40064] of  Asignatura

	(HorarioAsig [ontologia_Class10003])
	(ModalidadAsig [ontologia_Class40015])
	(Nombre "PSI"))

([ontologia_Class40065] of  Asignatura

	(HorarioAsig [ontologia_Class10003])
	(ModalidadAsig [ontologia_Class40015])
	(Nombre "SIO"))

([ontologia_Class40066] of  Asignatura

	(HorarioAsig [ontologia_Class10003])
	(ModalidadAsig [ontologia_Class40019])
	(Nombre "CAIM"))

([ontologia_Class40067] of  Asignatura

	(HorarioAsig [ontologia_Class10003])
	(ModalidadAsig [ontologia_Class40019])
	(Nombre "IO"))

([ontologia_Class40069] of  Asignatura

	(HorarioAsig [ontologia_Class10003])
	(ModalidadAsig [ontologia_Class40019])
	(Nombre "VPE"))

([ontologia_Class40070] of  Asignatura

	(HorarioAsig [ontologia_Class10003])
	(ModalidadAsig [ontologia_Class40019])
	(Nombre "ABD"))

([ontologia_Class40071] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40013])
	(Nombre "ASO"))

([ontologia_Class40072] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40013])
	(Nombre "PI"))

([ontologia_Class40073] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40013])
	(Nombre "PTI"))

([ontologia_Class40074] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40013])
	(Nombre "SI"))

([ontologia_Class40075] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40013])
	(Nombre "SOA"))

([ontologia_Class40076] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40013])
	(Nombre "TXC"))

([ontologia_Class40077] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40018])
	(Nombre "AD"))

([ontologia_Class40078] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40018])
	(Nombre "CASO"))

([ontologia_Class40079] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40018])
	(Nombre "CPD"))

([ontologia_Class40080] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40018])
	(Nombre "IM"))

([ontologia_Class40081] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40018])
	(Nombre "SDX"))

([ontologia_Class40082] of  Asignatura

	(HorarioAsig [ontologia_Class10002])
	(ModalidadAsig [ontologia_Class40018])
	(Nombre "TCI"))

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