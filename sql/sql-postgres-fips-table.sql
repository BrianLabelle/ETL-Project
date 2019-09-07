
CREATE TABLE public."FIPS"
(
    zipcode character varying COLLATE pg_catalog."default" NOT NULL,
    county character varying COLLATE pg_catalog."default",
    state character varying COLLATE pg_catalog."default",
    fips character varying COLLATE pg_catalog."default",
    classfips character varying COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."FIPS"
    OWNER to postgres;
COMMENT ON TABLE public."FIPS"
    IS 'ZIPCODE / COUNTY / FIPS 2017';