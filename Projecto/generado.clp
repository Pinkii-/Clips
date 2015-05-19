;---------- Aqui empiezan las clases generadas por el protege ----------;

; Mon May 18 23:02:37 GMT+01:00 2015
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
	(single-slot EspecialidadPref
		(type INSTANCE)
;+		(allowed-classes Especialidad)
;+		(cardinality 0 1)
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
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot DNI
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Motivos
		(type STRING)
		(default "Io k ze tio equisde")
		(create-accessor read-write))
	(single-slot VolumenTrabajo
		(type SYMBOL)
		(allowed-values alto medio bajo np)
		(default np)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Dificultad
		(type SYMBOL)
		(allowed-values alto medio bajo np)
		(default np)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot PreRequesit
		(type INSTANCE)
;+		(allowed-classes Asignatura)
		(create-accessor read-write))
	(single-slot HorarioPref
		(type INSTANCE)
;+		(allowed-classes Horario)
;+		(cardinality 0 1)
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
		(create-accessor read-write))
	(single-slot Cuatrimestre
;+		(comment "Es el numero de cuatrimestre que cursa el alumno. Dos convocatorias de una misma asignatura jamas tendrán el mimsmo numero")
		(type INTEGER)
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
		(default np)
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
		(default np)
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
	(multislot Motivos
		(type STRING)
		(default "Io k ze tio equisde")
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
	(single-slot Cuatrimestre
;+		(comment "Es el numero de cuatrimestre que cursa el alumno. Dos convocatorias de una misma asignatura jamas tendrán el mimsmo numero")
		(type INTEGER)
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
		(default np)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Dificultad
		(type SYMBOL)
		(allowed-values alto medio bajo np)
		(default np)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot HorarioPref
		(type INSTANCE)
;+		(allowed-classes Horario)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Convocatorias
		(type INSTANCE)
;+		(allowed-classes Convocatoria)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot EspecialidadPref
		(type INSTANCE)
;+		(allowed-classes Especialidad)
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

(defclass Horario
	(is-a USER)
	(role concrete)
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
	(role concrete)
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
; Mon May 18 23:02:37 GMT+01:00 2015
; 
;+ (version "3.4.8")
;+ (build "Build 629")

([ontologia_Class0] of  Asignatura

	(Dificultad alto)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 417)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "FM")
	(PrctAprobado 36)
	(VolumenTrabajo alto))

([ontologia_Class10000] of  Asignatura

	(Dificultad medio)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 398)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "F")
	(PrctAprobado 60)
	(VolumenTrabajo alto))

([ontologia_Class10001] of  Both

	(Descripcion "Both"))

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
	(Cuatrimestre 1)
	(HorarioAsig [ontologia_Class10002])
	(Nota 8.0))

([ontologia_Class10016] of  Alumno

	(Convocatorias
		[ontologia_Class10008]
		[ontologia_Class20003]
		[ontologia_Class20000]
		[ontologia_Class40001]
		[ontologia_Class60002]
		[ontologia_Class60003]
		[ontologia_Class60004]
		[ontologia_Class60005]
		[ontologia_Class60006]
		[ontologia_Class60007]
		[ontologia_Class60008]
		[ontologia_Class60009]
		[ontologia_Class60010])
	(DNI 47254514)
	(Nombre "Gonzalo Diez"))

([ontologia_Class20000] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class20001])
	(Cuatrimestre 1)
	(HorarioAsig [ontologia_Class10002])
	(Nota 8.1))

([ontologia_Class20001] of  Asignatura

	(Dificultad bajo)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 436)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "PRO1")
	(PrctAprobado 33)
	(VolumenTrabajo alto))

([ontologia_Class20002] of  Asignatura

	(Dificultad medio)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 422)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "IC")
	(PrctAprobado 52)
	(VolumenTrabajo alto))

([ontologia_Class20003] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class20002])
	(Cuatrimestre 1)
	(HorarioAsig [ontologia_Class10002])
	(Nota 9.5))

([ontologia_Class20004] of  Asignatura

	(Dificultad alto)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 210)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "PRO2")
	(PrctAprobado 50)
	(PreRequesit [ontologia_Class20001])
	(VolumenTrabajo alto))

([ontologia_Class30000] of  Alumno

	(Convocatorias
		[ontologia_Class50003]
		[ontologia_Class50002]
		[ontologia_Class50006]
		[ontologia_Class50004]
		[ontologia_Class50007])
	(Dificultad np)
	(DNI 1)
	(Nombre "ULTRA FAST DNI")
	(VolumenTrabajo np))

([ontologia_Class30002] of  OptativaEspecial

	(Descripcion "OptativaEspecial"))

([ontologia_Class30003] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 102)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "EC")
	(PrctAprobado 34)
	(VolumenTrabajo alto))

([ontologia_Class30004] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 105)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "M1")
	(PrctAprobado 43)
	(VolumenTrabajo medio))

([ontologia_Class30005] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 101)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "M2")
	(PrctAprobado 48)
	(VolumenTrabajo alto))

([ontologia_Class30006] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 163)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "BD")
	(PrctAprobado 76)
	(PreRequesit
		[ontologia_Class20001]
		[ontologia_Class20004])
	(VolumenTrabajo bajo))

([ontologia_Class30007] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 209)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "CI")
	(PrctAprobado 87)
	(PreRequesit
		[ontologia_Class30003]
		[ontologia_Class20002])
	(VolumenTrabajo bajo))

([ontologia_Class30008] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 184)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "EDA")
	(PrctAprobado 68)
	(PreRequesit
		[ontologia_Class20001]
		[ontologia_Class20004])
	(VolumenTrabajo medio))

([ontologia_Class30009] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 196)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "PE")
	(PrctAprobado 86)
	(PreRequesit
		[ontologia_Class30004]
		[ontologia_Class30005])
	(VolumenTrabajo bajo))

([ontologia_Class30010] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 203)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "SO")
	(PrctAprobado 84)
	(PreRequesit
		[ontologia_Class30007]
		[ontologia_Class30003])
	(VolumenTrabajo bajo))

([ontologia_Class30011] of  Asignatura

	(CoRequesit [ontologia_Class30009])
	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 125)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "AC")
	(PrctAprobado 77)
	(PreRequesit
		[ontologia_Class30003]
		[ontologia_Class30010])
	(VolumenTrabajo bajo))

([ontologia_Class30012] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 96)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "EEE")
	(PrctAprobado 89)
	(VolumenTrabajo bajo))

([ontologia_Class30013] of  Asignatura

	(CoRequesit [ontologia_Class30008])
	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 135)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "IES")
	(PrctAprobado 61)
	(PreRequesit [ontologia_Class30006])
	(VolumenTrabajo bajo))

([ontologia_Class30014] of  Asignatura

	(CoRequesit
		[ontologia_Class30006]
		[ontologia_Class30013])
	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 101)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "PROP")
	(PrctAprobado 84)
	(PreRequesit [ontologia_Class30008])
	(VolumenTrabajo alto))

([ontologia_Class30015] of  Asignatura

	(CoRequesit [ontologia_Class30010])
	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 135)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "XC")
	(PrctAprobado 64)
	(VolumenTrabajo bajo))

([ontologia_Class30016] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 173)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "IDI")
	(PrctAprobado 55)
	(PreRequesit
		[ontologia_Class30008]
		[ontologia_Class30004])
	(VolumenTrabajo bajo))

([ontologia_Class30017] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 145)
	(ModalidadAsig [ontologia_Class10005])
	(Nombre "PAR")
	(PrctAprobado 71)
	(PreRequesit
		[ontologia_Class30011]
		[ontologia_Class30008]
		[ontologia_Class30010])
	(VolumenTrabajo bajo))

([ontologia_Class40000] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40020])
	(Nombre "CASO")
	(PrctAprobado 100)
	(PreRequesit [ontologia_Class40037])
	(VolumenTrabajo bajo))

([ontologia_Class40001] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class10000])
	(Cuatrimestre 1)
	(HorarioAsig [ontologia_Class10002])
	(Nota 7.4))

([ontologia_Class40002] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 40)
	(ModalidadAsig [ontologia_Class40003])
	(Nombre "G")
	(PrctAprobado 90)
	(PreRequesit
		[ontologia_Class30016]
		[ontologia_Class30014])
	(VolumenTrabajo bajo))

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
	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 48)
	(ModalidadAsig [ontologia_Class40003])
	(Nombre "A")
	(PrctAprobado 81)
	(PreRequesit [ontologia_Class30008])
	(VolumenTrabajo bajo))

([ontologia_Class40022] of  Asignatura

	(CoRequesit [ontologia_Class30014])
	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 48)
	(ModalidadAsig [ontologia_Class40003])
	(Nombre "IA")
	(PrctAprobado 92)
	(PreRequesit [ontologia_Class30008])
	(VolumenTrabajo bajo))

([ontologia_Class40023] of  Asignatura

	(CoRequesit [ontologia_Class30014])
	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 51)
	(ModalidadAsig [ontologia_Class40003])
	(Nombre "LI")
	(PrctAprobado 63)
	(PreRequesit [ontologia_Class30008])
	(VolumenTrabajo bajo))

([ontologia_Class40024] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 61)
	(ModalidadAsig [ontologia_Class40003])
	(Nombre "LP")
	(PrctAprobado 67)
	(PreRequesit [ontologia_Class30014])
	(VolumenTrabajo bajo))

([ontologia_Class40025] of  Asignatura

	(CoRequesit [ontologia_Class30014])
	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 48)
	(ModalidadAsig [ontologia_Class40003])
	(Nombre "TC")
	(PrctAprobado 71)
	(PreRequesit [ontologia_Class30008])
	(VolumenTrabajo alto))

([ontologia_Class40026] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40016])
	(Nombre "AA")
	(PrctAprobado 79)
	(PreRequesit [ontologia_Class40021])
	(VolumenTrabajo bajo))

([ontologia_Class40027] of  Asignatura

	(CoRequesit [ontologia_Class30014])
	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40016])
	(Nombre "APA")
	(PrctAprobado 95)
	(PreRequesit [ontologia_Class30009])
	(VolumenTrabajo bajo))

([ontologia_Class40028] of  Asignatura

	(CoRequesit [ontologia_Class30014])
	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 19)
	(ModalidadAsig [ontologia_Class40016])
	(Nombre "CAIM")
	(PrctAprobado 95)
	(PreRequesit
		[ontologia_Class30006]
		[ontologia_Class30009])
	(VolumenTrabajo bajo))

([ontologia_Class40029] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40016])
	(Nombre "CL")
	(PrctAprobado 79)
	(PreRequesit [ontologia_Class40025])
	(VolumenTrabajo bajo))

([ontologia_Class40030] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40016])
	(Nombre "CN")
	(PrctAprobado 79)
	(PreRequesit
		[ontologia_Class30004]
		[ontologia_Class30005])
	(VolumenTrabajo bajo))

([ontologia_Class40031] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 11)
	(ModalidadAsig [ontologia_Class40016])
	(Nombre "IO")
	(PrctAprobado 63)
	(PreRequesit [ontologia_Class30009])
	(VolumenTrabajo bajo))

([ontologia_Class40032] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40016])
	(Nombre "SID")
	(PrctAprobado 79)
	(PreRequesit [ontologia_Class40022])
	(VolumenTrabajo bajo))

([ontologia_Class40033] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40014])
	(Nombre "AC2")
	(PrctAprobado 65)
	(PreRequesit [ontologia_Class30011])
	(VolumenTrabajo bajo))

([ontologia_Class40034] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 23)
	(ModalidadAsig [ontologia_Class40014])
	(Nombre "DSBM")
	(PrctAprobado 91)
	(PreRequesit [ontologia_Class30007])
	(VolumenTrabajo bajo))

([ontologia_Class40035] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 24)
	(ModalidadAsig [ontologia_Class40014])
	(Nombre "MP")
	(PrctAprobado 92)
	(PreRequesit
		[ontologia_Class40033]
		[ontologia_Class30017])
	(VolumenTrabajo bajo))

([ontologia_Class40036] of  Asignatura

	(CoRequesit
		[ontologia_Class40033]
		[ontologia_Class40034]
		[ontologia_Class40037])
	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40014])
	(Nombre "PEC")
	(PrctAprobado 100)
	(VolumenTrabajo medio))

([ontologia_Class40037] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 24)
	(ModalidadAsig [ontologia_Class40014])
	(Nombre "SO2")
	(PrctAprobado 100)
	(PreRequesit [ontologia_Class30010])
	(VolumenTrabajo bajo))

([ontologia_Class40038] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10003])
	(Matriculados 25)
	(ModalidadAsig [ontologia_Class40019])
	(Nombre "MI")
	(PrctAprobado 96)
	(PreRequesit [ontologia_Class30012])
	(VolumenTrabajo bajo))

([ontologia_Class40039] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 24)
	(ModalidadAsig [ontologia_Class40014])
	(Nombre "XC2")
	(PrctAprobado 96)
	(VolumenTrabajo bajo))

([ontologia_Class40040] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40018])
	(Nombre "CASO")
	(PrctAprobado 100)
	(PreRequesit [ontologia_Class40075])
	(VolumenTrabajo bajo))

([ontologia_Class40041] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40020])
	(Nombre "CPD")
	(PrctAprobado 79)
	(PreRequesit
		[ontologia_Class30015]
		[ontologia_Class30010])
	(VolumenTrabajo bajo))

([ontologia_Class40042] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40020])
	(Nombre "PAP")
	(PrctAprobado 79)
	(PreRequesit [ontologia_Class30017])
	(VolumenTrabajo bajo))

([ontologia_Class40043] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40020])
	(Nombre "PCA")
	(PrctAprobado 79)
	(PreRequesit [ontologia_Class30011])
	(VolumenTrabajo bajo))

([ontologia_Class40044] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 19)
	(ModalidadAsig [ontologia_Class40020])
	(Nombre "PDS")
	(PrctAprobado 95)
	(PreRequesit [ontologia_Class30007])
	(VolumenTrabajo bajo))

([ontologia_Class40045] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40020])
	(Nombre "STR")
	(PrctAprobado 79)
	(PreRequesit
		[ontologia_Class40034]
		[ontologia_Class30010])
	(VolumenTrabajo bajo))

([ontologia_Class40046] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40020])
	(Nombre "VLSI")
	(PrctAprobado 80)
	(PreRequesit [ontologia_Class40033])
	(VolumenTrabajo bajo))

([ontologia_Class40047] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 60)
	(ModalidadAsig [ontologia_Class40004])
	(Nombre "AS")
	(PrctAprobado 87)
	(PreRequesit [ontologia_Class30013])
	(VolumenTrabajo bajo))

([ontologia_Class40048] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 42)
	(ModalidadAsig [ontologia_Class40004])
	(Nombre "ASW")
	(PrctAprobado 100)
	(PreRequesit [ontologia_Class40047])
	(VolumenTrabajo bajo))

([ontologia_Class40049] of  Asignatura

	(CoRequesit [ontologia_Class30013])
	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 40)
	(ModalidadAsig [ontologia_Class40004])
	(Nombre "DBD")
	(PrctAprobado 87)
	(PreRequesit [ontologia_Class30006])
	(VolumenTrabajo bajo))

([ontologia_Class40050] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 60)
	(ModalidadAsig [ontologia_Class40015])
	(Nombre "ER")
	(PrctAprobado 92)
	(PreRequesit
		[ontologia_Class30012]
		[ontologia_Class30013])
	(VolumenTrabajo bajo))

([ontologia_Class40051] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 60)
	(ModalidadAsig [ontologia_Class40004])
	(Nombre "GPS")
	(PrctAprobado 95)
	(PreRequesit
		[ontologia_Class30012]
		[ontologia_Class30013])
	(VolumenTrabajo bajo))

([ontologia_Class40053] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40004])
	(Nombre "PES")
	(PrctAprobado 100)
	(PreRequesit
		[ontologia_Class40050]
		[ontologia_Class40051]
		[ontologia_Class40047])
	(VolumenTrabajo bajo))

([ontologia_Class40054] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 23)
	(ModalidadAsig [ontologia_Class40017])
	(Nombre "CBDE")
	(PrctAprobado 83)
	(PreRequesit
		[ontologia_Class40070]
		[ontologia_Class40049])
	(VolumenTrabajo bajo))

([ontologia_Class40055] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 37)
	(ModalidadAsig [ontologia_Class40017])
	(Nombre "CSI")
	(PrctAprobado 100)
	(PreRequesit
		[ontologia_Class30006]
		[ontologia_Class30012])
	(VolumenTrabajo bajo))

([ontologia_Class40056] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40017])
	(Nombre "ECSDI")
	(PrctAprobado 79)
	(PreRequesit [ontologia_Class40047])
	(VolumenTrabajo bajo))

([ontologia_Class40057] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40017])
	(Nombre "SIM")
	(PrctAprobado 79)
	(PreRequesit [ontologia_Class30009])
	(VolumenTrabajo bajo))

([ontologia_Class40058] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 19)
	(ModalidadAsig [ontologia_Class40017])
	(Nombre "SOAD")
	(PrctAprobado 100)
	(PreRequesit [ontologia_Class30010])
	(VolumenTrabajo bajo))

([ontologia_Class40059] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 25)
	(ModalidadAsig [ontologia_Class40017])
	(Nombre "CAP")
	(PrctAprobado 100)
	(PreRequesit
		[ontologia_Class30013]
		[ontologia_Class30014])
	(VolumenTrabajo bajo))

([ontologia_Class40060] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10003])
	(Matriculados 18)
	(ModalidadAsig [ontologia_Class40015])
	(Nombre "ADEI")
	(PrctAprobado 83)
	(PreRequesit
		[ontologia_Class30006]
		[ontologia_Class30009])
	(VolumenTrabajo bajo))

([ontologia_Class40061] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10003])
	(Matriculados 19)
	(ModalidadAsig [ontologia_Class40015])
	(Nombre "DSI")
	(PrctAprobado 100)
	(PreRequesit [ontologia_Class30013])
	(VolumenTrabajo bajo))

([ontologia_Class40063] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10003])
	(Matriculados 14)
	(ModalidadAsig [ontologia_Class40015])
	(Nombre "NE")
	(PrctAprobado 100)
	(VolumenTrabajo bajo))

([ontologia_Class40064] of  Asignatura

	(CoRequesit
		[ontologia_Class40050]
		[ontologia_Class40063])
	(Dificultad np)
	(HorarioAsig [ontologia_Class10003])
	(Matriculados 9)
	(ModalidadAsig [ontologia_Class40015])
	(Nombre "PSI")
	(PrctAprobado 100)
	(PreRequesit [ontologia_Class40061])
	(VolumenTrabajo bajo))

([ontologia_Class40065] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10003])
	(Matriculados 30)
	(ModalidadAsig [ontologia_Class40015])
	(Nombre "SIO")
	(PrctAprobado 100)
	(PreRequesit
		[ontologia_Class30012]
		[ontologia_Class30006])
	(VolumenTrabajo medio))

([ontologia_Class40069] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10003])
	(Matriculados 24)
	(ModalidadAsig [ontologia_Class40019])
	(Nombre "VPE")
	(PrctAprobado 96)
	(PreRequesit [ontologia_Class30012])
	(VolumenTrabajo bajo))

([ontologia_Class40070] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10003])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40019])
	(Nombre "ABD")
	(PrctAprobado 79)
	(PreRequesit [ontologia_Class30006])
	(VolumenTrabajo bajo))

([ontologia_Class40071] of  Asignatura

	(CoRequesit [ontologia_Class30015])
	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 34)
	(ModalidadAsig [ontologia_Class40013])
	(Nombre "ASO")
	(PrctAprobado 94)
	(PreRequesit [ontologia_Class30010])
	(VolumenTrabajo bajo))

([ontologia_Class40072] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 24)
	(ModalidadAsig [ontologia_Class40013])
	(Nombre "PI")
	(PrctAprobado 87)
	(PreRequesit
		[ontologia_Class30015]
		[ontologia_Class40021])
	(VolumenTrabajo bajo))

([ontologia_Class40073] of  Asignatura

	(CoRequesit
		[ontologia_Class40071]
		[ontologia_Class40072])
	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 8)
	(ModalidadAsig [ontologia_Class40013])
	(Nombre "PTI")
	(PrctAprobado 100)
	(VolumenTrabajo bajo))

([ontologia_Class40074] of  Asignatura

	(CoRequesit
		[ontologia_Class30010]
		[ontologia_Class30015])
	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 46)
	(ModalidadAsig [ontologia_Class40013])
	(Nombre "SI")
	(PrctAprobado 86)
	(VolumenTrabajo bajo))

([ontologia_Class40075] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40013])
	(Nombre "SOA")
	(PrctAprobado 95)
	(PreRequesit [ontologia_Class30010])
	(VolumenTrabajo bajo))

([ontologia_Class40076] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 23)
	(ModalidadAsig [ontologia_Class40013])
	(Nombre "TXC")
	(PrctAprobado 82)
	(PreRequesit [ontologia_Class30015])
	(VolumenTrabajo bajo))

([ontologia_Class40077] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 22)
	(ModalidadAsig [ontologia_Class40018])
	(Nombre "AD")
	(PrctAprobado 100)
	(PreRequesit [ontologia_Class30015])
	(VolumenTrabajo bajo))

([ontologia_Class40080] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40018])
	(Nombre "IM")
	(PrctAprobado 79)
	(PreRequesit [ontologia_Class30015])
	(VolumenTrabajo bajo))

([ontologia_Class40081] of  Asignatura

	(CoRequesit
		[ontologia_Class40072]
		[ontologia_Class30010])
	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40018])
	(Nombre "SDX")
	(PrctAprobado 79)
	(PreRequesit [ontologia_Class30015])
	(VolumenTrabajo bajo))

([ontologia_Class40082] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 19)
	(ModalidadAsig [ontologia_Class40018])
	(Nombre "TCI")
	(PrctAprobado 68)
	(PreRequesit
		[ontologia_Class0]
		[ontologia_Class30004]
		[ontologia_Class30005])
	(VolumenTrabajo bajo))

([ontologia_Class40083] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 27)
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "APSS")
	(PrctAprobado 100)
	(VolumenTrabajo bajo))

([ontologia_Class40084] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 25)
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "ASDP")
	(PrctAprobado 92)
	(VolumenTrabajo bajo))

([ontologia_Class40085] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "ASMI")
	(PrctAprobado 79)
	(VolumenTrabajo bajo))

([ontologia_Class40086] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 10)
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "C")
	(PrctAprobado 100)
	(VolumenTrabajo bajo))

([ontologia_Class40087] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 19)
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "CCQ")
	(PrctAprobado 95)
	(VolumenTrabajo medio))

([ontologia_Class40088] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "CDI")
	(PrctAprobado 79)
	(VolumenTrabajo bajo))

([ontologia_Class40089] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "DCS")
	(PrctAprobado 79)
	(VolumenTrabajo alto))

([ontologia_Class40090] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 12)
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "FOMAR")
	(PrctAprobado 83)
	(VolumenTrabajo bajo))

([ontologia_Class40091] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 12)
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "GEOC")
	(PrctAprobado 42)
	(VolumenTrabajo bajo))

([ontologia_Class40092] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "MD")
	(PrctAprobado 79)
	(VolumenTrabajo bajo))

([ontologia_Class40093] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 15)
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "ROB")
	(PrctAprobado 73)
	(VolumenTrabajo bajo))

([ontologia_Class40094] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 18)
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "SLDS")
	(PrctAprobado 94)
	(VolumenTrabajo bajo))

([ontologia_Class40095] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "TGA")
	(PrctAprobado 79)
	(VolumenTrabajo bajo))

([ontologia_Class40096] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 27)
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "VC")
	(PrctAprobado 85)
	(VolumenTrabajo bajo))

([ontologia_Class40097] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 30)
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "VJ")
	(PrctAprobado 87)
	(VolumenTrabajo bajo))

([ontologia_Class40098] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 27)
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "WSE")
	(PrctAprobado 96)
	(VolumenTrabajo bajo))

([ontologia_Class40099] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10001])
	(Matriculados 18)
	(ModalidadAsig [ontologia_Class10006])
	(Nombre "APC")
	(PrctAprobado 94)
	(VolumenTrabajo bajo))

([ontologia_Class50000] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40015])
	(Nombre "EDO")
	(PrctAprobado 79)
	(VolumenTrabajo bajo))

([ontologia_Class50001] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 11)
	(ModalidadAsig [ontologia_Class40019])
	(Nombre "IO")
	(PrctAprobado 63)
	(PreRequesit [ontologia_Class30009])
	(VolumenTrabajo np))

([ontologia_Class50002] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class0])
	(Cuatrimestre 1)
	(HorarioAsig [ontologia_Class10003])
	(Nota 10.0))

([ontologia_Class50003] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class10000])
	(Cuatrimestre 1)
	(HorarioAsig [ontologia_Class10003])
	(Nota 10.0))

([ontologia_Class50004] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class20001])
	(Cuatrimestre 1)
	(HorarioAsig [ontologia_Class10003])
	(Nota 10.0))

([ontologia_Class50006] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class20002])
	(Cuatrimestre 1)
	(HorarioAsig [ontologia_Class10003])
	(Nota 10.0))

([ontologia_Class50007] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class20004])
	(Cuatrimestre 2)
	(HorarioAsig [ontologia_Class10003])
	(Nota 4.0))

([ontologia_Class50009] of  Asignatura

	(CoRequesit [ontologia_Class30010])
	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 20)
	(ModalidadAsig [ontologia_Class40018])
	(Nombre "CPD")
	(PrctAprobado 79)
	(PreRequesit [ontologia_Class30015])
	(VolumenTrabajo bajo))

([ontologia_Class60002] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class20004])
	(Cuatrimestre 2)
	(HorarioAsig [ontologia_Class10002])
	(Nota 7.0))

([ontologia_Class60003] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class30003])
	(Cuatrimestre 2)
	(HorarioAsig [ontologia_Class10002])
	(Nota 5.9))

([ontologia_Class60004] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class30004])
	(Cuatrimestre 2)
	(HorarioAsig [ontologia_Class10002])
	(Nota 5.0))

([ontologia_Class60005] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class30005])
	(Cuatrimestre 2)
	(HorarioAsig [ontologia_Class10002])
	(Nota 5.0))

([ontologia_Class60006] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class30008])
	(Cuatrimestre 3)
	(HorarioAsig [ontologia_Class10002])
	(Nota 5.1))

([ontologia_Class60007] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class30007])
	(Cuatrimestre 3)
	(HorarioAsig [ontologia_Class10002])
	(Nota 5.4))

([ontologia_Class60008] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class30009])
	(Cuatrimestre 3)
	(HorarioAsig [ontologia_Class10002])
	(Nota 5.8))

([ontologia_Class60009] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class30006])
	(Cuatrimestre 3)
	(HorarioAsig [ontologia_Class10002])
	(Nota 5.0))

([ontologia_Class60010] of  Convocatoria

	(AsignaturaMatriculada [ontologia_Class30010])
	(Cuatrimestre 3)
	(HorarioAsig [ontologia_Class10002])
	(Nota 4.5))

([ontologia_Class70002] of  Asignatura

	(Dificultad np)
	(HorarioAsig [ontologia_Class10002])
	(Matriculados 60)
	(ModalidadAsig [ontologia_Class40004])
	(Nombre "ER")
	(PrctAprobado 92)
	(PreRequesit
		[ontologia_Class30012]
		[ontologia_Class30013])
	(VolumenTrabajo bajo))
)

;------------------ Aqui empieza el sistema experto --------------------;


; ==================HECHO DESDE LA ULTIMA ITERACION===============================
;
;=================================================================================
;str-cat = string concat

;progn$ (?elemento ?lista) (cosa a aplicar)

;send ?instancia get-slot = devuelve el contenido del slot de esa instancia

;Preguntar todo lo que quiere con opciona a no importar

;si no importa, calcularlo del historial

;dar recomendación

; TODO GENERAL
; Calcular la dificultad de las asignaturas segun su porcentaje de aprobados

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
  (lowcase ?respuesta)
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

; Funcion que retorna el elemento maximo
(deffunction max-element ($?lista)
  (bind ?max 0)
  (bind ?ret 0)
  (bind ?i 0)
  (progn$ (?elemento $?lista)
    (bind ?i (+ ?i 1))
    (if (> ?elemento ?max)
      then 
      (bind ?max ?elemento)
      (bind ?ret ?i)
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

(defrule pregunta-horario
  (not (noIdeaQuienEs))
  ?alumno <- (object (is-a Alumno))
  =>
  (if (si-o-no-p "Tienes alguna preferencia de horario")
    then
      (bind ?respuesta (pregunta "Cual" Manana Tarde Both))
      (switch ?respuesta
        (case manana then
          (bind ?h (find-instance ((?inst Manana)) TRUE))
          (send ?alumno put-HorarioPref ?h)
        )
        (case tarde then
          (bind ?h (find-instance ((?inst Tarde)) TRUE))
          (send ?alumno put-HorarioPref ?h)
        )
        (case both then
          (bind ?h (find-instance ((?inst Both)) TRUE))
          (send ?alumno put-HorarioPref ?h)
        )
      )
    else
      (bind ?h (find-instance ((?inst Both)) TRUE))
      (send ?alumno put-HorarioPref ?h)
  )
  (assert (phorario))
)

; Mira si ya hemos hecho todas las preguntas
(defrule preguntas-acabadas
  (not (noIdeaQuienEs))
  ?a <- (pdificultad)
  ?b <- (pcarga)
  ?c <- (nAsig)
  ?d <- (pespecialidad ?siono)
  ?e <- (phorario)
  ?alumno <- (object (is-a Alumno))
  =>
  (bind ?nombre (send ?alumno get-Nombre))
  (bind ?dni (send ?alumno get-DNI))
  (bind ?volumen (send ?alumno get-VolumenTrabajo))
  (bind ?dificultad (send ?alumno get-Dificultad))
  (bind ?nAsignaturas (send ?alumno get-NumeroAsignaturas))
  (bind ?horario (send (send ?alumno get-HorarioPref) get-Descripcion))

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
  (printout t "Como preferencia horaria tienes: " ?horario crlf)


  (printout t "" crlf)
  (printout t "Empezamos a calcular tus mejores opciones para asignaturas" crlf crlf)

  (retract ?a)
  (retract ?b)
  (retract ?c)
  (retract ?d)
  (retract ?e)

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
  ?alumno <- (object (is-a Alumno) (Convocatorias $?convs) (VolumenTrabajo np))
  (ultimoCuatri ?cuatri)
  =>
  (printout t "DEBUG: Como el alumno ha elegido np en  el volumen de trabajo, lo calculamos nosotros" crlf) ; DEBUG
  (bind ?alto FALSE)
  (bind ?medio FALSE)
  (bind ?bajo FALSE)
  (progn$ (?conv ?convs)
    (bind ?c (send (instance-address * ?conv) get-Cuatrimestre))
    (if (eq ?cuatri ?c)
      then
        (bind ?asig (send (instance-address * ?conv) get-AsignaturaMatriculada))
        (bind ?volumen (send (instance-address * ?asig) get-VolumenTrabajo))
        (if (eq ?volumen alto) then (bind ?alto TRUE) else
        (if (eq ?volumen medio) then (bind ?medio TRUE) else
        (if (eq ?volumen bajo) then (bind ?bajo TRUE)) ))
    )
  )
  (if (eq ?alto TRUE) then (send ?alumno put-VolumenTrabajo alto)
    else (if (eq ?medio TRUE) then (send ?alumno put-VolumenTrabajo medio)
      else (if (eq ?bajo TRUE) then (send ?alumno put-VolumenTrabajo bajo)
        else (send ?alumno put-VolumenTrabajo alto))))
  ;(send ?alumno put-VolumenTrabajo alto)
)

;Funcion encargada de calcular la dificultad asumible a partir de las ultimas convocatorias
(defrule calcular-dificultad ; TODO hacer que haga algo inteligente
  ?alumno <- (object (is-a Alumno) (Convocatorias $?convs) (Dificultad np))
  (ultimoCuatri ?cuatri)
  =>
  (printout t "DEBUG: Como el alumno ha elegido np en la eleccion de dificultad, lo calculamos nosotros" crlf) ; DEBUG
  (bind ?alto FALSE)
  (bind ?medio FALSE)
  (bind ?bajo FALSE)
  (progn$ (?conv ?convs)
    (bind ?c (send (instance-address * ?conv) get-Cuatrimestre))
    (if (eq ?cuatri ?c)
      then
        (bind ?asig (send (instance-address * ?conv) get-AsignaturaMatriculada))
        (bind ?volumen (send (instance-address * ?asig) get-Dificultad))
        (if (eq ?volumen alto) then (bind ?alto TRUE) else
        (if (eq ?volumen medio) then (bind ?medio TRUE) else
        (if (eq ?volumen bajo) then (bind ?bajo TRUE)) ))
    )
  )
  (if (eq ?alto TRUE) then (send ?alumno put-Dificultad alto)
    else (if (eq ?medio TRUE) then (send ?alumno put-Dificultad medio)
      else (if (eq ?bajo TRUE) then (send ?alumno put-Dificultad bajo)
        else (send ?alumno put-Dificultad alto))))
  
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
(defrule calcular-especialidad 
  ?alumno <- (object (is-a Alumno) (Convocatorias $?convs) (EspecialidadPref ?e))
  (test (eq ?e nil))
  (not (calculado-especialidad))
  =>
  (bind ?ac 0)
  (bind ?comp 0)
  (bind ?es 0)
  (bind ?si 0)
  (bind ?ti 0)
  (progn$ (?conv $?convs)
    (bind ?asig (send (instance-address * ?conv) get-AsignaturaMatriculada))
    (switch (send (instance-address * ?asig) get-ModalidadAsig)
      (case Esp_AC then 
        (bind ?ac (+ ?ac 1))
      )
      (case Esp_Comp then
        (bind ?comp (+ ?comp 1))
      )
      (case Esp_ES then
        (bind ?es (+ ?es 1))
      )
      (case Esp_SI then
        (bind ?si (+ ?si 1))
      )
      (case Esp_TI then
        (bind ?ti (+ ?ti 1))
      )
    )
  )
  (bind $?res (create$))
  (bind $?res (insert$ $?res 1 ?ac))
  (bind $?res (insert$ $?res 2 ?comp))
  (bind $?res (insert$ $?res 3 ?es))
  (bind $?res (insert$ $?res 4 ?si))
  (bind $?res (insert$ $?res 5 ?ti))
  (switch (max-element $?res)
    (case 1 then
      (send ?alumno put-EspecialidadPref (find-instance ((?inst Esp_AC)) TRUE))
    )
    (case 2 then
      (send ?alumno put-EspecialidadPref (find-instance ((?inst Esp_Comp)) TRUE))
    )
    (case 3 then
      (send ?alumno put-EspecialidadPref (find-instance ((?inst Esp_ES)) TRUE))
    )
    (case 4 then
      (send ?alumno put-EspecialidadPref (find-instance ((?inst Esp_SI)) TRUE))
    )
    (case 5 then
      (send ?alumno put-EspecialidadPref (find-instance ((?inst Esp_TI)) TRUE))
    )
    (case 0 then
      (printout t "DEBUG: No ha hecho nada de especialidad" crlf))
  )
  (assert (calculado-especialidad))
)

(defrule pasar-a-seleccion
  (declare (salience -10))
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
  (test (or (eq alto (send ?asig get-Dificultad)) (> 51 (send ?asig get-PrctAprobado))))
  =>
  (printout t "DEUBG: Quitando " (send ?asig get-Nombre) " ya que su dificultad es alta " crlf)
  (send ?a delete)
)

(defrule quitar-dificultad-media
  ?a <- (object (is-a AsignaturaRecomendada) (AsigName ?asig))
  (object (is-a Alumno) (Dificultad bajo))
  (test (or (eq alto (send ?asig get-Dificultad)) (eq medio (send ?asig get-Dificultad)) (> 85 (send ?asig get-PrctAprobado))))
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

; Regla que quita las asignaturas de mañanas si el usuario quiere solo de tardes, o viceversa
(defrule quitar-horario-incompatible
  ?alumno <- (object (is-a Alumno) (HorarioPref ?pref))
  ?asigRec <- (object (is-a AsignaturaRecomendada) (AsigName ?asig))
  (test (neq (send ?pref get-Descripcion) "Both"))
  (test (neq (send (instance-address * (send ?asig get-HorarioAsig)) get-Descripcion) "Both"))
  (test (neq (send (instance-address * (send ?asig get-HorarioAsig)) get-Descripcion) (send ?pref get-Descripcion)))
  =>
  (bind ?desc (send (instance-address * (send ?asig get-HorarioAsig)) get-Descripcion))
  (printout t "DEBUG: Preferencia horaria " (send ?pref get-Descripcion) " y asig " (send ?asig get-Nombre) " " ?desc  crlf)
  (send ?asigRec delete)
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

; Regla que le da puntos a las asignaturas obligatorias de la especialidad preferida
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
