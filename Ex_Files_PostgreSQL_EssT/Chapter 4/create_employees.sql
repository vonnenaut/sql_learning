CREATE TABLE IF NOT EXISTS human_resources.employees
(
    employee_id integer NOT NULL,
    first_name character varying(30) COLLATE pg_catalog."default",
    last_name character varying(30) COLLATE pg_catalog."default",
    hire_date date,
    department_id integer,
    CONSTRAINT employees_pkey PRIMARY KEY (employee_id),
    CONSTRAINT employees_department_id_fkey FOREIGN KEY (department_id)
        REFERENCES human_resources.departments (department_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE human_resources.employees
    OWNER to postgres;
-- Index: department_id

-- DROP INDEX human_resources.department_id;

CREATE INDEX department_id
    ON human_resources.employees USING btree
    (department_id ASC NULLS LAST)
    TABLESPACE pg_default;