DO $$
DECLARE
		PERIODO RECORD;
		CUR_ATENCION CURSOR FOR 
							  SELECT
							  veterinario.nombre_veterinario as Nombre_Veterinario,
							  mascota.especie_mascota as Especie_Mascota,
							  detalle_historial_clinico.fecha_consulta_det_his_cli as Fecha_Atencion
							  from veterinario, historial_clinico
							  inner join mascota on mascota.id_mascota = historial_clinico.id_mascota
							  inner join detalle_historial_clinico on detalle_historial_clinico.id_his_cli = detalle_historial_clinico.id_det_his_cli
							  group by veterinario.nombre_veterinario, mascota.especie_mascota, detalle_historial_clinico.fecha_consulta_det_his_cli;
BEGIN
OPEN CUR_ATENCION;
FETCH CUR_ATENCION INTO PERIODO;
WHILE(FOUND)LOOP
RAISE NOTICE 'Nombre_Veterinario: %, Especie_Mascota: %, Fecha_Atencion: %',
	PERIODO.Nombre_Veterinario,
	PERIODO.Especie_Mascota,
	PERIODO.Fecha_Atencion;
FETCH CUR_ATENCION INTO PERIODO;
END LOOP;
END $$
LANGUAGE PLPGSQL;