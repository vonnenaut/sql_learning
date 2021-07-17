CREATE TABLE IF NOT EXISTS manufacturing.categories
(
    category_id integer NOT NULL,
    name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    market character varying(20) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT categories_pkey PRIMARY KEY (category_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE manufacturing.categories
    OWNER to postgres;