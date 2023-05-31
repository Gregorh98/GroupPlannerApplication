--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-31 21:31:45

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

DROP DATABASE "GroupMeetOrganiser";
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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 3335 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


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

INSERT INTO entries.entries VALUES ('ff62c5e9-72b1-421b-880e-8dbfd94ef0b8', 'dfe742b1-8c96-400d-b4dd-b078b12d0b4e', '2023-05-01', true);
INSERT INTO entries.entries VALUES ('f45b29bd-f280-4a31-abf0-faa0394d0b72', 'dfe742b1-8c96-400d-b4dd-b078b12d0b4e', '2023-05-03', true);
INSERT INTO entries.entries VALUES ('401d1c11-be90-4e85-b609-34bd4df55c15', 'dfe742b1-8c96-400d-b4dd-b078b12d0b4e', '2023-05-05', true);
INSERT INTO entries.entries VALUES ('28b4b76e-514d-4674-8756-29c9c4234aca', 'dfe742b1-8c96-400d-b4dd-b078b12d0b4e', '2023-05-09', true);
INSERT INTO entries.entries VALUES ('25574d54-9d46-43e6-856f-0a6c3c411a30', 'dfe742b1-8c96-400d-b4dd-b078b12d0b4e', '2023-05-11', true);
INSERT INTO entries.entries VALUES ('21164738-6185-40fd-be39-f3ceaeb18d33', 'dfe742b1-8c96-400d-b4dd-b078b12d0b4e', '2023-05-17', true);
INSERT INTO entries.entries VALUES ('aeb77ef2-8059-4350-983b-7d36ee531561', 'aeb20cb8-4c7e-40f3-8982-f92fcbcbab22', '2023-05-03', true);
INSERT INTO entries.entries VALUES ('25804c2d-5a14-46c8-8f60-26e24f0e2d22', 'aeb20cb8-4c7e-40f3-8982-f92fcbcbab22', '2023-05-04', true);
INSERT INTO entries.entries VALUES ('ed479dce-6292-471b-a76f-73d97e4a2ef6', 'aeb20cb8-4c7e-40f3-8982-f92fcbcbab22', '2023-05-05', true);
INSERT INTO entries.entries VALUES ('585831b4-843c-46ae-8735-616b5d6a8dab', 'aeb20cb8-4c7e-40f3-8982-f92fcbcbab22', '2023-05-11', true);
INSERT INTO entries.entries VALUES ('0eff879c-07a0-4a33-a04e-01ac6828b341', 'aeb20cb8-4c7e-40f3-8982-f92fcbcbab22', '2023-05-18', true);
INSERT INTO entries.entries VALUES ('9a71ea2f-0946-4291-8682-9a271b84bafe', '94dcbeff-2bc8-4178-a8a9-a4dcfe37ef08', '2023-05-02', true);
INSERT INTO entries.entries VALUES ('9130f64c-4914-47bf-898d-8f42ca9a970e', '94dcbeff-2bc8-4178-a8a9-a4dcfe37ef08', '2023-05-09', true);
INSERT INTO entries.entries VALUES ('751773a6-61c0-4f7d-bf55-ff287776bc21', '94dcbeff-2bc8-4178-a8a9-a4dcfe37ef08', '2023-05-16', true);
INSERT INTO entries.entries VALUES ('21c72c92-d8d9-4ad6-80a8-ab1e3165cf7b', '94dcbeff-2bc8-4178-a8a9-a4dcfe37ef08', '2023-05-23', true);
INSERT INTO entries.entries VALUES ('77a9940a-5cd7-473a-b029-e49501adbf6c', '94dcbeff-2bc8-4178-a8a9-a4dcfe37ef08', '2023-05-30', true);
INSERT INTO entries.entries VALUES ('f6392df5-871a-48ce-ac70-8b08eb9c62a4', '94dcbeff-2bc8-4178-a8a9-a4dcfe37ef08', '2023-05-04', true);
INSERT INTO entries.entries VALUES ('52bb12d5-171c-431a-8206-35cef69c0aa1', '94dcbeff-2bc8-4178-a8a9-a4dcfe37ef08', '2023-05-11', true);
INSERT INTO entries.entries VALUES ('0ca3dffc-fda6-4ba9-be66-0a50fef36301', '94dcbeff-2bc8-4178-a8a9-a4dcfe37ef08', '2023-05-18', true);
INSERT INTO entries.entries VALUES ('37d2286e-1aa5-48a9-9e8c-d419e4717c4b', '94dcbeff-2bc8-4178-a8a9-a4dcfe37ef08', '2023-05-25', true);
INSERT INTO entries.entries VALUES ('901d1d6f-0d7b-4048-bd25-600d3ba54071', 'e5f3d0d7-2112-4de0-a704-8ebb99abbb34', '2023-05-01', true);
INSERT INTO entries.entries VALUES ('840e2edd-a646-406f-b7f9-a6f8729f93fb', 'e5f3d0d7-2112-4de0-a704-8ebb99abbb34', '2023-05-08', true);
INSERT INTO entries.entries VALUES ('fa792854-e3a4-404b-bc9a-28a3d5f3bc99', 'e5f3d0d7-2112-4de0-a704-8ebb99abbb34', '2023-05-15', true);
INSERT INTO entries.entries VALUES ('5138aff4-86df-4ed0-95c6-19d2ad84aefc', 'e5f3d0d7-2112-4de0-a704-8ebb99abbb34', '2023-05-17', true);
INSERT INTO entries.entries VALUES ('2e18bf28-ae8d-425c-a6f6-5083113f051f', 'e5f3d0d7-2112-4de0-a704-8ebb99abbb34', '2023-05-04', true);
INSERT INTO entries.entries VALUES ('8caf68d1-8021-4cb7-bd75-e629e8daf085', 'e5f3d0d7-2112-4de0-a704-8ebb99abbb34', '2023-05-29', true);
INSERT INTO entries.entries VALUES ('4219ecbe-8dc6-4639-b928-f1f02fde3f12', '253c084e-b81f-4472-b00f-405c81d07bf6', '2023-05-17', true);
INSERT INTO entries.entries VALUES ('6024d753-b498-4097-810d-28fcce71f80a', '5a3cd673-a1f9-4c4e-9177-755d46a405ae', '2023-05-08', true);
INSERT INTO entries.entries VALUES ('04e2423d-5890-42a9-8c54-1dd8e4fb0bdb', '5a3cd673-a1f9-4c4e-9177-755d46a405ae', '2023-05-15', true);
INSERT INTO entries.entries VALUES ('0e62bd03-6cee-4f41-9735-d54c8edd569d', '5a3cd673-a1f9-4c4e-9177-755d46a405ae', '2023-05-17', true);
INSERT INTO entries.entries VALUES ('e7423fec-b15c-4737-a634-3c8e1d9eb510', '5a3cd673-a1f9-4c4e-9177-755d46a405ae', '2023-05-03', true);
INSERT INTO entries.entries VALUES ('19ad2cb1-9353-4715-942d-828cd1ca68ef', '5a3cd673-a1f9-4c4e-9177-755d46a405ae', '2023-05-11', true);
INSERT INTO entries.entries VALUES ('d25c0afe-fb6d-480b-af1f-d5efba15efb6', '5a3cd673-a1f9-4c4e-9177-755d46a405ae', '2023-05-18', true);
INSERT INTO entries.entries VALUES ('0fe0a8e4-0f85-4695-91b0-b3831f0bda5c', '5a3cd673-a1f9-4c4e-9177-755d46a405ae', '2023-05-25', true);
INSERT INTO entries.entries VALUES ('d3716f87-c202-4706-83dc-cd51f3f640ab', '5a3cd673-a1f9-4c4e-9177-755d46a405ae', '2023-05-09', true);
INSERT INTO entries.entries VALUES ('49d17208-0427-437f-84dc-34fce83ebb96', '5a3cd673-a1f9-4c4e-9177-755d46a405ae', '2023-05-16', true);
INSERT INTO entries.entries VALUES ('7787af3d-c9a5-4638-8405-89727a8cc3b4', '5a3cd673-a1f9-4c4e-9177-755d46a405ae', '2023-05-23', true);
INSERT INTO entries.entries VALUES ('e550276f-8a61-4520-ad5c-b668b638d419', 'd8384860-a8bb-4bf9-814e-85747eba4c9d', '2023-05-29', true);
INSERT INTO entries.entries VALUES ('1f5fcd5b-f33f-4e9d-9017-827dd4021d07', 'd8384860-a8bb-4bf9-814e-85747eba4c9d', '2023-05-15', true);
INSERT INTO entries.entries VALUES ('c7eaa158-bace-45d4-8339-3d9bb133896c', 'd8384860-a8bb-4bf9-814e-85747eba4c9d', '2023-05-08', true);
INSERT INTO entries.entries VALUES ('ef50a5b0-e698-4e7c-b599-5962e66e0ae6', 'd8384860-a8bb-4bf9-814e-85747eba4c9d', '2023-05-01', true);
INSERT INTO entries.entries VALUES ('f6d87892-fc81-4bce-86c3-49e3cb3150c1', 'd8384860-a8bb-4bf9-814e-85747eba4c9d', '2023-05-23', true);
INSERT INTO entries.entries VALUES ('f21f416f-b536-4332-93d3-b4bc1ac0c63c', 'd8384860-a8bb-4bf9-814e-85747eba4c9d', '2023-05-16', true);
INSERT INTO entries.entries VALUES ('707801b0-531b-4efe-9edf-44979409ccfd', 'd8384860-a8bb-4bf9-814e-85747eba4c9d', '2023-05-17', true);


--
-- TOC entry 3327 (class 0 OID 16488)
-- Dependencies: 216
-- Data for Name: users; Type: TABLE DATA; Schema: users; Owner: postgres
--

INSERT INTO users.users VALUES ('aeb20cb8-4c7e-40f3-8982-f92fcbcbab22', 'GREGOR', '1');
INSERT INTO users.users VALUES ('dfe742b1-8c96-400d-b4dd-b078b12d0b4e', 'TEST', '1');
INSERT INTO users.users VALUES ('94dcbeff-2bc8-4178-a8a9-a4dcfe37ef08', 'GREGOR', 'NOICE');
INSERT INTO users.users VALUES ('e5f3d0d7-2112-4de0-a704-8ebb99abbb34', 'ALISTAIR', 'NOICE');
INSERT INTO users.users VALUES ('253c084e-b81f-4472-b00f-405c81d07bf6', 'ALEX', 'NOICE');
INSERT INTO users.users VALUES ('5a3cd673-a1f9-4c4e-9177-755d46a405ae', 'GEORGE', 'NOICE');
INSERT INTO users.users VALUES ('d8384860-a8bb-4bf9-814e-85747eba4c9d', 'TEST', 'NOICE');


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


-- Completed on 2023-05-31 21:31:45

--
-- PostgreSQL database dump complete
--

