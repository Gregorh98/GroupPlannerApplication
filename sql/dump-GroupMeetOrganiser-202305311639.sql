--
-- PostgreSQL database cluster dump
--

-- Started on 2023-05-31 16:39:11

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE "Flex";
ALTER ROLE "Flex" WITH SUPERUSER NOINHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-31 16:39:11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2023-05-31 16:39:12

--
-- PostgreSQL database dump complete
--

--
-- Database "GroupMeetOrganiser" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-31 16:39:12

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3334 (class 1262 OID 16486)
-- Name: GroupMeetOrganiser; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "GroupMeetOrganiser" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Kingdom.1252';


ALTER DATABASE "GroupMeetOrganiser" OWNER TO postgres;

\connect "GroupMeetOrganiser"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 7 (class 2615 OID 16494)
-- Name: entries; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA entries;


ALTER SCHEMA entries OWNER TO postgres;

--
-- TOC entry 6 (class 2615 OID 16487)
-- Name: users; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA users;


ALTER SCHEMA users OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 16502)
-- Name: entries; Type: TABLE; Schema: entries; Owner: postgres
--

CREATE TABLE entries.entries (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    user_id uuid NOT NULL,
    date date NOT NULL,
    available boolean DEFAULT false NOT NULL
);


ALTER TABLE entries.entries OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16488)
-- Name: users; Type: TABLE; Schema: users; Owner: postgres
--

CREATE TABLE users.users (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name character varying NOT NULL,
    group_code character varying NOT NULL
);


ALTER TABLE users.users OWNER TO postgres;

--
-- TOC entry 3328 (class 0 OID 16502)
-- Dependencies: 217
-- Data for Name: entries; Type: TABLE DATA; Schema: entries; Owner: postgres
--

COPY entries.entries (id, user_id, date, available) FROM stdin;
ff62c5e9-72b1-421b-880e-8dbfd94ef0b8	dfe742b1-8c96-400d-b4dd-b078b12d0b4e	2023-05-01	t
f45b29bd-f280-4a31-abf0-faa0394d0b72	dfe742b1-8c96-400d-b4dd-b078b12d0b4e	2023-05-03	t
401d1c11-be90-4e85-b609-34bd4df55c15	dfe742b1-8c96-400d-b4dd-b078b12d0b4e	2023-05-05	t
28b4b76e-514d-4674-8756-29c9c4234aca	dfe742b1-8c96-400d-b4dd-b078b12d0b4e	2023-05-09	t
25574d54-9d46-43e6-856f-0a6c3c411a30	dfe742b1-8c96-400d-b4dd-b078b12d0b4e	2023-05-11	t
21164738-6185-40fd-be39-f3ceaeb18d33	dfe742b1-8c96-400d-b4dd-b078b12d0b4e	2023-05-17	t
aeb77ef2-8059-4350-983b-7d36ee531561	aeb20cb8-4c7e-40f3-8982-f92fcbcbab22	2023-05-03	t
25804c2d-5a14-46c8-8f60-26e24f0e2d22	aeb20cb8-4c7e-40f3-8982-f92fcbcbab22	2023-05-04	t
ed479dce-6292-471b-a76f-73d97e4a2ef6	aeb20cb8-4c7e-40f3-8982-f92fcbcbab22	2023-05-05	t
585831b4-843c-46ae-8735-616b5d6a8dab	aeb20cb8-4c7e-40f3-8982-f92fcbcbab22	2023-05-11	t
0eff879c-07a0-4a33-a04e-01ac6828b341	aeb20cb8-4c7e-40f3-8982-f92fcbcbab22	2023-05-18	t
\.


--
-- TOC entry 3327 (class 0 OID 16488)
-- Dependencies: 216
-- Data for Name: users; Type: TABLE DATA; Schema: users; Owner: postgres
--

COPY users.users (id, name, group_code) FROM stdin;
aeb20cb8-4c7e-40f3-8982-f92fcbcbab22	GREGOR	1
dfe742b1-8c96-400d-b4dd-b078b12d0b4e	TEST	1
\.


--
-- TOC entry 3184 (class 2606 OID 16512)
-- Name: entries entries_pk; Type: CONSTRAINT; Schema: entries; Owner: postgres
--

ALTER TABLE ONLY entries.entries
    ADD CONSTRAINT entries_pk PRIMARY KEY (id);


--
-- TOC entry 3182 (class 2606 OID 16510)
-- Name: users users_pk; Type: CONSTRAINT; Schema: users; Owner: postgres
--

ALTER TABLE ONLY users.users
    ADD CONSTRAINT users_pk PRIMARY KEY (id);


-- Completed on 2023-05-31 16:39:12

--
-- PostgreSQL database dump complete
--

-- Completed on 2023-05-31 16:39:12

--
-- PostgreSQL database cluster dump complete
--

