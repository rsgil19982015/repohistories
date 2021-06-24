--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

-- Started on 2021-06-24 08:56:35

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
-- TOC entry 201 (class 1259 OID 16577)
-- Name: client_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client_history (
    id bigint NOT NULL,
    client_id bigint NOT NULL,
    history_id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial923 character(1)
);


ALTER TABLE public.client_history OWNER TO postgres;

--
-- TOC entry 3062 (class 0 OID 0)
-- Dependencies: 201
-- Name: TABLE client_history; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.client_history IS 'TRIAL';


--
-- TOC entry 3063 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN client_history.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.client_history.id IS 'TRIAL';


--
-- TOC entry 3064 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN client_history.client_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.client_history.client_id IS 'TRIAL';


--
-- TOC entry 3065 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN client_history.history_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.client_history.history_id IS 'TRIAL';


--
-- TOC entry 3066 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN client_history.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.client_history.created_at IS 'TRIAL';


--
-- TOC entry 3067 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN client_history.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.client_history.updated_at IS 'TRIAL';


--
-- TOC entry 3068 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN client_history.trial923; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.client_history.trial923 IS 'TRIAL';


--
-- TOC entry 200 (class 1259 OID 16575)
-- Name: client_history_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.client_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.client_history_id_seq OWNER TO postgres;

--
-- TOC entry 3069 (class 0 OID 0)
-- Dependencies: 200
-- Name: client_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.client_history_id_seq OWNED BY public.client_history.id;


--
-- TOC entry 203 (class 1259 OID 16587)
-- Name: clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    cellphone character varying(255) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial930 character(1)
);


ALTER TABLE public.clients OWNER TO postgres;

--
-- TOC entry 3070 (class 0 OID 0)
-- Dependencies: 203
-- Name: TABLE clients; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.clients IS 'TRIAL';


--
-- TOC entry 3071 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN clients.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.clients.id IS 'TRIAL';


--
-- TOC entry 3072 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN clients.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.clients.name IS 'TRIAL';


--
-- TOC entry 3073 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN clients.last_name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.clients.last_name IS 'TRIAL';


--
-- TOC entry 3074 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN clients.email; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.clients.email IS 'TRIAL';


--
-- TOC entry 3075 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN clients.cellphone; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.clients.cellphone IS 'TRIAL';


--
-- TOC entry 3076 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN clients.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.clients.created_at IS 'TRIAL';


--
-- TOC entry 3077 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN clients.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.clients.updated_at IS 'TRIAL';


--
-- TOC entry 3078 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN clients.trial930; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.clients.trial930 IS 'TRIAL';


--
-- TOC entry 202 (class 1259 OID 16585)
-- Name: clients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clients_id_seq OWNER TO postgres;

--
-- TOC entry 3079 (class 0 OID 0)
-- Dependencies: 202
-- Name: clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;


--
-- TOC entry 205 (class 1259 OID 16598)
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    trial930 character(1)
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- TOC entry 3080 (class 0 OID 0)
-- Dependencies: 205
-- Name: TABLE failed_jobs; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.failed_jobs IS 'TRIAL';


--
-- TOC entry 3081 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN failed_jobs.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.failed_jobs.id IS 'TRIAL';


--
-- TOC entry 3082 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN failed_jobs.uuid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.failed_jobs.uuid IS 'TRIAL';


--
-- TOC entry 3083 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN failed_jobs.connection; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.failed_jobs.connection IS 'TRIAL';


--
-- TOC entry 3084 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN failed_jobs.queue; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.failed_jobs.queue IS 'TRIAL';


--
-- TOC entry 3085 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN failed_jobs.payload; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.failed_jobs.payload IS 'TRIAL';


--
-- TOC entry 3086 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN failed_jobs.exception; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.failed_jobs.exception IS 'TRIAL';


--
-- TOC entry 3087 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN failed_jobs.failed_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.failed_jobs.failed_at IS 'TRIAL';


--
-- TOC entry 3088 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN failed_jobs.trial930; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.failed_jobs.trial930 IS 'TRIAL';


--
-- TOC entry 204 (class 1259 OID 16596)
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO postgres;

--
-- TOC entry 3089 (class 0 OID 0)
-- Dependencies: 204
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- TOC entry 207 (class 1259 OID 16611)
-- Name: histories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.histories (
    id bigint NOT NULL,
    oxygen numeric(5,2) NOT NULL,
    temperature numeric(5,2) NOT NULL,
    frecuency integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial930 character(1)
);


ALTER TABLE public.histories OWNER TO postgres;

--
-- TOC entry 3090 (class 0 OID 0)
-- Dependencies: 207
-- Name: TABLE histories; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.histories IS 'TRIAL';


--
-- TOC entry 3091 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN histories.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.histories.id IS 'TRIAL';


--
-- TOC entry 3092 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN histories.oxygen; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.histories.oxygen IS 'TRIAL';


--
-- TOC entry 3093 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN histories.temperature; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.histories.temperature IS 'TRIAL';


--
-- TOC entry 3094 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN histories.frecuency; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.histories.frecuency IS 'TRIAL';


--
-- TOC entry 3095 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN histories.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.histories.created_at IS 'TRIAL';


--
-- TOC entry 3096 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN histories.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.histories.updated_at IS 'TRIAL';


--
-- TOC entry 3097 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN histories.trial930; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.histories.trial930 IS 'TRIAL';


--
-- TOC entry 206 (class 1259 OID 16609)
-- Name: histories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.histories_id_seq OWNER TO postgres;

--
-- TOC entry 3098 (class 0 OID 0)
-- Dependencies: 206
-- Name: histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.histories_id_seq OWNED BY public.histories.id;


--
-- TOC entry 209 (class 1259 OID 16619)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL,
    trial930 character(1)
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 3099 (class 0 OID 0)
-- Dependencies: 209
-- Name: TABLE migrations; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.migrations IS 'TRIAL';


--
-- TOC entry 3100 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN migrations.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.migrations.id IS 'TRIAL';


--
-- TOC entry 3101 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN migrations.migration; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.migrations.migration IS 'TRIAL';


--
-- TOC entry 3102 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN migrations.batch; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.migrations.batch IS 'TRIAL';


--
-- TOC entry 3103 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN migrations.trial930; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.migrations.trial930 IS 'TRIAL';


--
-- TOC entry 208 (class 1259 OID 16617)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3104 (class 0 OID 0)
-- Dependencies: 208
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 210 (class 1259 OID 16625)
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp without time zone,
    trial930 character(1)
);


ALTER TABLE public.password_resets OWNER TO postgres;

--
-- TOC entry 3105 (class 0 OID 0)
-- Dependencies: 210
-- Name: TABLE password_resets; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.password_resets IS 'TRIAL';


--
-- TOC entry 3106 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN password_resets.email; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.password_resets.email IS 'TRIAL';


--
-- TOC entry 3107 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN password_resets.token; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.password_resets.token IS 'TRIAL';


--
-- TOC entry 3108 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN password_resets.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.password_resets.created_at IS 'TRIAL';


--
-- TOC entry 3109 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN password_resets.trial930; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.password_resets.trial930 IS 'TRIAL';


--
-- TOC entry 212 (class 1259 OID 16634)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    trial930 character(1)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 3110 (class 0 OID 0)
-- Dependencies: 212
-- Name: TABLE users; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.users IS 'TRIAL';


--
-- TOC entry 3111 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN users.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.id IS 'TRIAL';


--
-- TOC entry 3112 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN users.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.name IS 'TRIAL';


--
-- TOC entry 3113 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN users.email; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.email IS 'TRIAL';


--
-- TOC entry 3114 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN users.email_verified_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.email_verified_at IS 'TRIAL';


--
-- TOC entry 3115 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN users.password; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.password IS 'TRIAL';


--
-- TOC entry 3116 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN users.remember_token; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.remember_token IS 'TRIAL';


--
-- TOC entry 3117 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN users.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.created_at IS 'TRIAL';


--
-- TOC entry 3118 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN users.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.updated_at IS 'TRIAL';


--
-- TOC entry 3119 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN users.trial930; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.trial930 IS 'TRIAL';


--
-- TOC entry 211 (class 1259 OID 16632)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3120 (class 0 OID 0)
-- Dependencies: 211
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 2888 (class 2604 OID 16580)
-- Name: client_history id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client_history ALTER COLUMN id SET DEFAULT nextval('public.client_history_id_seq'::regclass);


--
-- TOC entry 2889 (class 2604 OID 16590)
-- Name: clients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);


--
-- TOC entry 2890 (class 2604 OID 16601)
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- TOC entry 2892 (class 2604 OID 16614)
-- Name: histories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.histories ALTER COLUMN id SET DEFAULT nextval('public.histories_id_seq'::regclass);


--
-- TOC entry 2893 (class 2604 OID 16622)
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 2894 (class 2604 OID 16637)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3045 (class 0 OID 16577)
-- Dependencies: 201
-- Data for Name: client_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.client_history (id, client_id, history_id, created_at, updated_at, trial923) FROM stdin;
1	1	1	\N	\N	T
3	3	3	\N	\N	T
\.


--
-- TOC entry 3047 (class 0 OID 16587)
-- Dependencies: 203
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clients (id, name, last_name, email, cellphone, created_at, updated_at, trial930) FROM stdin;
1	luis	Chicaiza	luiscont@fsd	0959743877	\N	2021-06-21 04:00:11	T
3	Armando	Chicaiza	luiscont1502@gmail.com	0959743877	2021-06-21 12:42:03	2021-06-21 12:42:03	T
\.


--
-- TOC entry 3049 (class 0 OID 16598)
-- Dependencies: 205
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at, trial930) FROM stdin;
\.


--
-- TOC entry 3051 (class 0 OID 16611)
-- Dependencies: 207
-- Data for Name: histories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.histories (id, oxygen, temperature, frecuency, created_at, updated_at, trial930) FROM stdin;
1	25.25	35.80	95	\N	\N	T
2	15.00	15.12	95	2021-06-21 03:40:07	2021-06-21 03:40:07	T
3	15.00	15.12	95	2021-06-21 12:42:03	2021-06-21 12:42:03	T
\.


--
-- TOC entry 3053 (class 0 OID 16619)
-- Dependencies: 209
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch, trial930) FROM stdin;
1	2014_10_12_000000_create_users_table	1	T
2	2014_10_12_100000_create_password_resets_table	1	T
3	2019_08_19_000000_create_failed_jobs_table	1	T
4	2021_06_21_032203_create_clients_table	1	T
5	2021_06_21_032226_create_histories_table	1	T
6	2021_06_21_032350_create_client_history_table	1	T
\.


--
-- TOC entry 3054 (class 0 OID 16625)
-- Dependencies: 210
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_resets (email, token, created_at, trial930) FROM stdin;
\.


--
-- TOC entry 3056 (class 0 OID 16634)
-- Dependencies: 212
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, trial930) FROM stdin;
\.


--
-- TOC entry 3121 (class 0 OID 0)
-- Dependencies: 200
-- Name: client_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.client_history_id_seq', 3, true);


--
-- TOC entry 3122 (class 0 OID 0)
-- Dependencies: 202
-- Name: clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clients_id_seq', 3, true);


--
-- TOC entry 3123 (class 0 OID 0)
-- Dependencies: 204
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- TOC entry 3124 (class 0 OID 0)
-- Dependencies: 206
-- Name: histories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.histories_id_seq', 3, true);


--
-- TOC entry 3125 (class 0 OID 0)
-- Dependencies: 208
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 6, true);


--
-- TOC entry 3126 (class 0 OID 0)
-- Dependencies: 211
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 2898 (class 2606 OID 16582)
-- Name: client_history pk_client_history; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client_history
    ADD CONSTRAINT pk_client_history PRIMARY KEY (id);


--
-- TOC entry 2900 (class 2606 OID 16595)
-- Name: clients pk_clients; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT pk_clients PRIMARY KEY (id);


--
-- TOC entry 2903 (class 2606 OID 16607)
-- Name: failed_jobs pk_failed_jobs; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT pk_failed_jobs PRIMARY KEY (id);


--
-- TOC entry 2905 (class 2606 OID 16616)
-- Name: histories pk_histories; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.histories
    ADD CONSTRAINT pk_histories PRIMARY KEY (id);


--
-- TOC entry 2907 (class 2606 OID 16624)
-- Name: migrations pk_migrations; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT pk_migrations PRIMARY KEY (id);


--
-- TOC entry 2910 (class 2606 OID 16642)
-- Name: users pk_users; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT pk_users PRIMARY KEY (id);


--
-- TOC entry 2895 (class 1259 OID 16583)
-- Name: client_history_client_id_foreign; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX client_history_client_id_foreign ON public.client_history USING btree (client_id);


--
-- TOC entry 2896 (class 1259 OID 16584)
-- Name: client_history_history_id_foreign; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX client_history_history_id_foreign ON public.client_history USING btree (history_id);


--
-- TOC entry 2901 (class 1259 OID 16608)
-- Name: failed_jobs_uuid_unique; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX failed_jobs_uuid_unique ON public.failed_jobs USING btree (uuid);


--
-- TOC entry 2908 (class 1259 OID 16631)
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- TOC entry 2911 (class 1259 OID 16643)
-- Name: users_email_unique; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX users_email_unique ON public.users USING btree (email);


--
-- TOC entry 2912 (class 2606 OID 16644)
-- Name: client_history client_history_client_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client_history
    ADD CONSTRAINT client_history_client_id_foreign FOREIGN KEY (client_id) REFERENCES public.clients(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2913 (class 2606 OID 16649)
-- Name: client_history client_history_history_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client_history
    ADD CONSTRAINT client_history_history_id_foreign FOREIGN KEY (history_id) REFERENCES public.histories(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2021-06-24 08:56:35

--
-- PostgreSQL database dump complete
--

