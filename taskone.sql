--
-- PostgreSQL database dump
--

-- Dumped from database version 17rc1
-- Dumped by pg_dump version 17rc1

-- Started on 2024-09-18 11:27:51

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 218 (class 1259 OID 16412)
-- Name: company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.company (
    companyid integer NOT NULL,
    companyname character varying(30) NOT NULL,
    websitename character varying(35) NOT NULL,
    username character varying(35) NOT NULL,
    url character varying(255) NOT NULL
);


ALTER TABLE public.company OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16411)
-- Name: company_companyid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.company_companyid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.company_companyid_seq OWNER TO postgres;

--
-- TOC entry 4796 (class 0 OID 0)
-- Dependencies: 217
-- Name: company_companyid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.company_companyid_seq OWNED BY public.company.companyid;


--
-- TOC entry 4641 (class 2604 OID 16415)
-- Name: company companyid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company ALTER COLUMN companyid SET DEFAULT nextval('public.company_companyid_seq'::regclass);


--
-- TOC entry 4790 (class 0 OID 16412)
-- Dependencies: 218
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.company (companyid, companyname, websitename, username, url) FROM stdin;
1	Moepi Publishing	moepipublishing.co.za	moepipgy	https://missouri.aserv.co.za:2083/logout/?locale=en
2	Tekete	tekete.co.za	teketibk	https://trident.aserv.co.za:2083/logout/?locale=en*/
\.


--
-- TOC entry 4797 (class 0 OID 0)
-- Dependencies: 217
-- Name: company_companyid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.company_companyid_seq', 2, true);


--
-- TOC entry 4643 (class 2606 OID 16417)
-- Name: company company_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (companyid);


-- Completed on 2024-09-18 11:27:53

--
-- PostgreSQL database dump complete
--

