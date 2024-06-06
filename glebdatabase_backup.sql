--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 16.3 (Ubuntu 16.3-1.pgdg22.04+1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: table1; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.table1 (
    id integer NOT NULL,
    name character varying(100),
    age integer
);


ALTER TABLE public.table1 OWNER TO "user";

--
-- Name: table1_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.table1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table1_id_seq OWNER TO "user";

--
-- Name: table1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.table1_id_seq OWNED BY public.table1.id;


--
-- Name: table2; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.table2 (
    id integer NOT NULL,
    address character varying(255),
    city character varying(100)
);


ALTER TABLE public.table2 OWNER TO "user";

--
-- Name: table2_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.table2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table2_id_seq OWNER TO "user";

--
-- Name: table2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.table2_id_seq OWNED BY public.table2.id;


--
-- Name: table1 id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.table1 ALTER COLUMN id SET DEFAULT nextval('public.table1_id_seq'::regclass);


--
-- Name: table2 id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.table2 ALTER COLUMN id SET DEFAULT nextval('public.table2_id_seq'::regclass);


--
-- Data for Name: table1; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.table1 (id, name, age) FROM stdin;
1	Alice	30
2	Bob	25
\.


--
-- Data for Name: table2; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.table2 (id, address, city) FROM stdin;
1	123 Main St	New York
2	456 Elm St	Los Angeles
\.


--
-- Name: table1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.table1_id_seq', 2, true);


--
-- Name: table2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.table2_id_seq', 2, true);


--
-- Name: table1 table1_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.table1
    ADD CONSTRAINT table1_pkey PRIMARY KEY (id);


--
-- Name: table2 table2_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.table2
    ADD CONSTRAINT table2_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

