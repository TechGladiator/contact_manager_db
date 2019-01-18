SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: tbl_address_info; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_address_info (
    id integer NOT NULL,
    tbl_contact_contact_id integer NOT NULL,
    street_1 character varying NOT NULL,
    street_2 character varying,
    city character varying NOT NULL,
    state character varying(2) NOT NULL,
    zip character varying(5) NOT NULL
);


--
-- Name: tbl_address_info_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_address_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tbl_address_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_address_info_id_seq OWNED BY public.tbl_address_info.id;


--
-- Name: tbl_contact; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_contact (
    contact_id integer NOT NULL,
    fname character varying NOT NULL,
    mname character varying,
    lname character varying NOT NULL,
    title character varying,
    tbl_contact_type_id integer NOT NULL,
    tbl_import_id integer
);


--
-- Name: tbl_contact_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_contact_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tbl_contact_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_contact_contact_id_seq OWNED BY public.tbl_contact.contact_id;


--
-- Name: tbl_contact_info; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_contact_info (
    id integer NOT NULL,
    tbl_contact_info_type_id integer NOT NULL,
    tbl_contact_contact_id integer NOT NULL,
    value character varying NOT NULL
);


--
-- Name: tbl_contact_info_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_contact_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tbl_contact_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_contact_info_id_seq OWNED BY public.tbl_contact_info.id;


--
-- Name: tbl_contact_info_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_contact_info_type (
    id integer NOT NULL,
    type character varying NOT NULL
);


--
-- Name: tbl_contact_info_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_contact_info_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tbl_contact_info_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_contact_info_type_id_seq OWNED BY public.tbl_contact_info_type.id;


--
-- Name: tbl_contact_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_contact_type (
    id integer NOT NULL,
    type character varying NOT NULL,
    description character varying
);


--
-- Name: tbl_contact_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_contact_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tbl_contact_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_contact_type_id_seq OWNED BY public.tbl_contact_type.id;


--
-- Name: tbl_import; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_import (
    id integer NOT NULL,
    import_name character varying NOT NULL
);


--
-- Name: tbl_import_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_import_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tbl_import_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_import_id_seq OWNED BY public.tbl_import.id;


--
-- Name: tbl_states; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_states (
    id integer NOT NULL,
    short_name character varying(2) NOT NULL,
    long_name character varying NOT NULL
);


--
-- Name: tbl_states_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_states_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tbl_states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_states_id_seq OWNED BY public.tbl_states.id;


--
-- Name: tbl_address_info id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_address_info ALTER COLUMN id SET DEFAULT nextval('public.tbl_address_info_id_seq'::regclass);


--
-- Name: tbl_contact contact_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_contact ALTER COLUMN contact_id SET DEFAULT nextval('public.tbl_contact_contact_id_seq'::regclass);


--
-- Name: tbl_contact_info id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_contact_info ALTER COLUMN id SET DEFAULT nextval('public.tbl_contact_info_id_seq'::regclass);


--
-- Name: tbl_contact_info_type id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_contact_info_type ALTER COLUMN id SET DEFAULT nextval('public.tbl_contact_info_type_id_seq'::regclass);


--
-- Name: tbl_contact_type id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_contact_type ALTER COLUMN id SET DEFAULT nextval('public.tbl_contact_type_id_seq'::regclass);


--
-- Name: tbl_import id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_import ALTER COLUMN id SET DEFAULT nextval('public.tbl_import_id_seq'::regclass);


--
-- Name: tbl_states id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_states ALTER COLUMN id SET DEFAULT nextval('public.tbl_states_id_seq'::regclass);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: tbl_states states_long_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_states
    ADD CONSTRAINT states_long_name_key UNIQUE (long_name);


--
-- Name: tbl_states states_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_states
    ADD CONSTRAINT states_pkey PRIMARY KEY (short_name);


--
-- Name: tbl_contact_info tbl_contact_info_tbl_contact_info_type_id_tbl_contact_conta_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_contact_info
    ADD CONSTRAINT tbl_contact_info_tbl_contact_info_type_id_tbl_contact_conta_key UNIQUE (tbl_contact_info_type_id, tbl_contact_contact_id, value);


--
-- Name: tbl_contact_info_type tbl_contact_info_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_contact_info_type
    ADD CONSTRAINT tbl_contact_info_type_pkey PRIMARY KEY (id);


--
-- Name: tbl_contact tbl_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_contact
    ADD CONSTRAINT tbl_contact_pkey PRIMARY KEY (contact_id);


--
-- Name: tbl_contact_type tbl_contact_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_contact_type
    ADD CONSTRAINT tbl_contact_type_pkey PRIMARY KEY (id);


--
-- Name: tbl_import tbl_import_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_import
    ADD CONSTRAINT tbl_import_pkey PRIMARY KEY (id);


--
-- Name: tbl_address_info tbl_address_info_state_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_address_info
    ADD CONSTRAINT tbl_address_info_state_fkey FOREIGN KEY (state) REFERENCES public.tbl_states(short_name);


--
-- Name: tbl_address_info tbl_address_info_tbl_contact_contact_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_address_info
    ADD CONSTRAINT tbl_address_info_tbl_contact_contact_id_fkey FOREIGN KEY (tbl_contact_contact_id) REFERENCES public.tbl_contact(contact_id);


--
-- Name: tbl_contact tbl_contact_contact_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_contact
    ADD CONSTRAINT tbl_contact_contact_type_id_fkey FOREIGN KEY (tbl_contact_type_id) REFERENCES public.tbl_contact_type(id);


--
-- Name: tbl_contact_info tbl_contact_info_tbl_contact_contact_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_contact_info
    ADD CONSTRAINT tbl_contact_info_tbl_contact_contact_id_fkey FOREIGN KEY (tbl_contact_info_type_id) REFERENCES public.tbl_contact_info_type(id);


--
-- Name: tbl_contact_info tbl_contact_info_tbl_contact_info_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_contact_info
    ADD CONSTRAINT tbl_contact_info_tbl_contact_info_type_id_fkey FOREIGN KEY (tbl_contact_contact_id) REFERENCES public.tbl_contact(contact_id);


--
-- Name: tbl_contact tbl_contact_tbl_import_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_contact
    ADD CONSTRAINT tbl_contact_tbl_import_id_fkey FOREIGN KEY (tbl_import_id) REFERENCES public.tbl_import(id);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;



