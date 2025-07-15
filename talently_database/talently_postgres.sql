--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2025-07-15 20:49:12

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

--
-- TOC entry 851 (class 1247 OID 16391)
-- Name: employment_status; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.employment_status AS ENUM (
    'employed',
    'self-employed',
    'unemployed'
);


ALTER TYPE public.employment_status OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 222 (class 1259 OID 16469)
-- Name: conversations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conversations (
    id integer NOT NULL,
    user_id integer,
    employer_id integer,
    message text NOT NULL,
    date_sent timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.conversations OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16468)
-- Name: conversations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.conversations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.conversations_id_seq OWNER TO postgres;

--
-- TOC entry 4824 (class 0 OID 0)
-- Dependencies: 221
-- Name: conversations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.conversations_id_seq OWNED BY public.conversations.id;


--
-- TOC entry 220 (class 1259 OID 16458)
-- Name: employers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employers (
    id integer NOT NULL,
    company_name character varying(300) NOT NULL,
    company_address character varying(300) NOT NULL,
    yearly_revenue double precision,
    is_hiring boolean DEFAULT false,
    CONSTRAINT employers_yearly_revenue_check CHECK ((yearly_revenue > (0)::double precision))
);


ALTER TABLE public.employers OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16457)
-- Name: employers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employers_id_seq OWNER TO postgres;

--
-- TOC entry 4825 (class 0 OID 0)
-- Dependencies: 219
-- Name: employers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employers_id_seq OWNED BY public.employers.id;


--
-- TOC entry 218 (class 1259 OID 16447)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying(200) NOT NULL,
    last_name character varying(200) NOT NULL,
    full_name character varying(400) GENERATED ALWAYS AS ((((first_name)::text || ' '::text) || (last_name)::text)) STORED,
    yearly_salary integer,
    current_status public.employment_status NOT NULL,
    CONSTRAINT users_yearly_salary_check CHECK ((yearly_salary > 0))
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16446)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 4826 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4658 (class 2604 OID 16472)
-- Name: conversations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversations ALTER COLUMN id SET DEFAULT nextval('public.conversations_id_seq'::regclass);


--
-- TOC entry 4656 (class 2604 OID 16461)
-- Name: employers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employers ALTER COLUMN id SET DEFAULT nextval('public.employers_id_seq'::regclass);


--
-- TOC entry 4654 (class 2604 OID 16450)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4818 (class 0 OID 16469)
-- Dependencies: 222
-- Data for Name: conversations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.conversations (id, user_id, employer_id, message, date_sent) FROM stdin;
1	9	1	I am very interested in the software engineer position.	2023-10-01 10:00:00
2	10	2	I would like to apply for the project manager role.	2023-10-02 11:30:00
3	11	3	Can you provide more details about the data analyst position?	2023-10-03 14:15:00
4	12	4	I am excited about the teaching opportunity.	2023-10-04 09:45:00
5	13	5	I have experience in financial analysis and would love to join your team.	2023-10-05 16:20:00
6	14	6	I am passionate about travel and would like to apply for the marketing role.	2023-10-06 12:30:00
7	15	7	I am interested in the business development position.	2023-10-07 08:00:00
8	16	8	I have a background in graphic design and would love to work with you.	2023-10-08 15:45:00
\.


--
-- TOC entry 4816 (class 0 OID 16458)
-- Dependencies: 220
-- Data for Name: employers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employers (id, company_name, company_address, yearly_revenue, is_hiring) FROM stdin;
1	Tech Innovations	123 Tech Lane, Silicon Valley	120	t
2	Green Solutions	456 Eco St, Green City	90	f
3	HealthCare Corp	789 Wellness Blvd, Health Town	110	t
4	EduTech Ltd.	101 Learning Ave, Knowledge City	95	t
5	Finance Experts	202 Money St, Finance District	130	f
6	Travel Ventures	303 Adventure Rd, Travel Land	85	t
7	Global Enterprises	404 Business Park, Global City	140	t
8	Creative Minds	505 Art St, Creative Town	80	t
\.


--
-- TOC entry 4814 (class 0 OID 16447)
-- Dependencies: 218
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, first_name, last_name, yearly_salary, current_status) FROM stdin;
1	Alice	Smith	50000	employed
2	Bob	Johnson	60000	self-employed
3	Charlie	Brown	\N	unemployed
4	Diana	Prince	70000	employed
5	Ethan	Hunt	80000	self-employed
6	Fiona	Apple	\N	unemployed
7	George	Lucas	90000	employed
8	Hannah	Montana	100000	self-employed
\.


--
-- TOC entry 4827 (class 0 OID 0)
-- Dependencies: 221
-- Name: conversations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.conversations_id_seq', 8, true);


--
-- TOC entry 4828 (class 0 OID 0)
-- Dependencies: 219
-- Name: employers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employers_id_seq', 8, true);


--
-- TOC entry 4829 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 8, true);


--
-- TOC entry 4667 (class 2606 OID 16477)
-- Name: conversations conversations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversations
    ADD CONSTRAINT conversations_pkey PRIMARY KEY (id);


--
-- TOC entry 4665 (class 2606 OID 16467)
-- Name: employers employers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employers
    ADD CONSTRAINT employers_pkey PRIMARY KEY (id);


--
-- TOC entry 4663 (class 2606 OID 16456)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


-- Completed on 2025-07-15 20:49:13

--
-- PostgreSQL database dump complete
--

