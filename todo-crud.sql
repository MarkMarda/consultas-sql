--- created db-diagram
CREATE TABLE "todo" (
  "task_id" uuid PRIMARY KEY,
  "task_name" varchar,
  "responsable" varchar,
  "init_date" timestamp,
  "finish_date" timestamp,
  "task_status" varchar,
  "notes" text,
  "shared" boolean,
  "difficulty" varchar,
  "task_relevance" varchar
);

--- DBeaver
insert into todo (
	task_id,
  	task_name,
  	responsable,
  	init_date,
  	finish_date,
  	task_status,
  	notes,
  	shared,
  	difficulty,
  	task_relevance
) 
values 
(
	'0cd74d9f-b581-4f1f-a5f7-19a082139dfc',
	'Pasear al perro',
	'Berselis',
	'2022-09-19 7:30:00',
	'2022-09-19 8:00:00',
	'Finished',
	'El perro tiene una herida',
	false,
	'Fácil',
	'No importante'
),
(
	'6925d118-b1eb-4377-9dba-aab3a0b51e4a',
	'Hacer el súper',
	'Orlando',
	'2022-09-22 19:00:00',
	'2022-09-22 20:00:00',
	'Finished',
	'No había queso',
	true,
	'Fácil',
	'Importante'
),
(
	'bef33299-445b-45bf-bb31-d2e01186d753',
	'Ir al banco',
	'Marco',
	'2022-09-21 14:00:00',
	'2022-09-21 15:40:00',
	'Not Started',
	'Ninguna',
	false,
	'Fácil',
	'Importante'
),
(
	'52771f0e-86e3-46ce-8a4d-10a14fe56f5d',
	'Hacer la tarea',
	'Roberto',
	'2022-09-21 23:00:00',
	'2022-09-21 23:30:00',
	'Not Started',
	'',
	false,
	'Fácil',
	'No importante'
);

--- Consultas
select task_id, task_name, task_status, task_relevance from todo; 

select * from todo where task_status = 'Finished';
