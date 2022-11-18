/* CONSULTA #1
   - Mostrar el nombre del cliente con su respectiva mascota y la enfermedad que esta posee (de todas las que pueda tener un cliente)*/
   select c.apellido_cliente as Apellido, c.nombre_cliente as Nombre, m.especie_mascota as Mascota, e.nombre_enfermedad as Enfermedad 
   from Cliente c 
   inner join Historial_Clinico hc on c.id_cliente=hc.id_cliente
   inner join Mascota m on hc.id_mascota=m.id_mascota
   inner join Detalle_Historial_Clinico dhc on hc.id_his_cli=dhc.id_his_cli
   inner join Enfermedad e on dhc.id_enfermedad=e.id_enfermedad

/* CONSULTA #2
	- Mostrar el historial clínico de la o las mascotas de un cliente*/
	select c.apellido_cliente as Cliente, m.especie_mascota as Mascota, hc.raza_his_cli as Raza, hc.color_his_cli as Color, 
	hc.fecha_nacimiento_his_cli as FechaDeNacimiento, dhc.peso_det_his_cli as Peso, e.nombre_enfermedad as Enfermedad,
	va.nombre_vacuna as Vacuna, dv.dosis_det_vacuna as Dosis, ve.nombre_veterinario as Veterinario, dhc.fecha_consulta_det_his_cli as
	FechaDeConsulta
   from Historial_Clinico hc
   inner join Cliente c on hc.id_cliente=c.id_cliente
   inner join Mascota m on hc.id_mascota=m.id_mascota
   inner join Detalle_Historial_Clinico dhc on hc.id_his_cli=dhc.id_his_cli
   inner join Enfermedad e on dhc.id_enfermedad=e.id_enfermedad
   inner join Detalle_Vacunacion dv on hc.id_his_cli=dv.id_his_cli
   inner join Veterinario ve on dhc.id_veterinario=ve.id_veterinario
   inner join Vacunacion va on dv.id_vacuna=va.id_vacuna
   where c.id_cliente=1

/* CONSULTA #3
	- Mostrar la cantidad de mascotas que han atendido cada Veterinario*/
	select ve.nombre_veterinario as Veterinario, COUNT(hc.id_mascota) as MascotasAtendidas
	from Historial_Clinico hc
	inner join Mascota m on hc.id_mascota=m.id_mascota
	inner join Detalle_Historial_Clinico dhc on hc.id_his_cli=dhc.id_his_cli
	inner join Veterinario ve on dhc.id_veterinario=ve.id_veterinario
	GROUP BY ve.nombre_veterinario

/* CONSULTA #4
	- Mostrar la cantidad de mascotas que tiene cada cliente*/
	select c.apellido_cliente as Apellido, c.nombre_cliente as Nombre, COUNT(hc.id_mascota) as Mascotas
	from Cliente c 
    inner join Historial_Clinico hc on c.id_cliente=hc.id_cliente
    inner join Mascota m on hc.id_mascota=m.id_mascota
	GROUP BY c.nombre_cliente, c.apellido_cliente