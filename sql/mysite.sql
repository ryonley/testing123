--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: weather; Type: TABLE; Schema: public; Owner: festool; Tablespace: 
--

CREATE TABLE weather (
    city character varying(80),
    temp_lo integer,
    temp_hi integer,
    prcp real,
    date date
);


ALTER TABLE public.weather OWNER TO festool;

--
-- Data for Name: weather; Type: TABLE DATA; Schema: public; Owner: festool
--

COPY weather (city, temp_lo, temp_hi, prcp, date) FROM stdin;
Dallas	5	300	10	\N
Chicago	2	200	39	\N
\.


--
-- Name: public; Type: ACL; Schema: -; Owner: festool
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM festool;
GRANT ALL ON SCHEMA public TO festool;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

