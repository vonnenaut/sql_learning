CREATE TABLE IF NOT EXISTS human_resources.departments
(
    department_id integer NOT NULL,
    department_name character varying(30) COLLATE pg_catalog."default" NOT NULL,
    building character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT departments_pkey PRIMARY KEY (department_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE human_resources.departments
    OWNER to postgres;