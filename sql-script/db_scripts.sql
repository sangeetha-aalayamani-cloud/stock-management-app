-- Table: public.stock

-- DROP TABLE public.stock;

CREATE TABLE public.stock
(
    "stock_Number" integer NOT NULL,
    "stock_Name" character varying(300) COLLATE pg_catalog."default",
    "purchase_Price" double precision,
    "purchase_Date" date,
    quantity double precision,
    CONSTRAINT stock_pkey PRIMARY KEY ("stock_Number")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.stock
    OWNER to postgres;