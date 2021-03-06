--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.23
-- Dumped by pg_dump version 9.6.23

-- Started on 2021-08-31 23:19:05

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
-- TOC entry 2142 (class 1262 OID 16393)
-- Name: speed_racing; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE speed_racing WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';


ALTER DATABASE speed_racing OWNER TO postgres;

\connect speed_racing

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
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2144 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 188 (class 1259 OID 16428)
-- Name: article; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.article (
    id bigint NOT NULL,
    name_article character varying(255),
    text text,
    user_id bigint
);


ALTER TABLE public.article OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 16426)
-- Name: article_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.article_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_id_seq OWNER TO postgres;

--
-- TOC entry 2145 (class 0 OID 0)
-- Dependencies: 187
-- Name: article_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.article_id_seq OWNED BY public.article.id;


--
-- TOC entry 186 (class 1259 OID 16396)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    login character varying(255),
    password character varying(255),
    role character varying(255)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 16394)
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
-- TOC entry 2146 (class 0 OID 0)
-- Dependencies: 185
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 2010 (class 2604 OID 16431)
-- Name: article id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article ALTER COLUMN id SET DEFAULT nextval('public.article_id_seq'::regclass);


--
-- TOC entry 2009 (class 2604 OID 16399)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 2136 (class 0 OID 16428)
-- Dependencies: 188
-- Data for Name: article; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.article (id, name_article, text, user_id) VALUES (1, '?????????? ?????? ?????????????????????? ??????????????????', '?? ?????????????????????? ?????????? ???????????? ???????????????????????? ??? ?????? ?????????????????????? ??????????????. ???????? ???? ???????????????????? ???????? ?????? ?????????????????? ???? ??????????????, ?????????????? ?? ???????????? ???????????? ?????????????? ?????????? ???????????? ???????? ???????????????????????????????? ??????????????. ??????????????, ?? ???????? ?????????????? ???????? ???????? ????????????, ?????????????? ?????????? ???? ???????????????? ???? ????????????: ?????????? ?????????? ???????? ???????? ?????????? ?????? ???????? ????????. ???? ???? ???????????? ???????????????????? ???? ???????? ???????????? ?????????????? ?????? ????????????????????????, ?????? ??????????????, ????????????????????. ???????????? ?????? ???????????? ?????????????? ???? ????????????????, ???????????? ???????????????????? ???? ?????? ???? ?????? ????????????.?? ???????? ?????????? ?????????? ?????????????????? ??? ?????? ?????????????????? ??????????. ???? ?????? ?????????????? ???????????????????????? ?????????? ???????????? ???????????????????????? ???????? ???????? ????????????????????, ?? ???? ?????????????????????? ?????????????? ?????? ?????????? ???????????????????? ?????????????????????? ?????????????????????????? ???????????????? ???????????????? ?????????????????????????? ?????????????? ????????????????????????.???????? ???? ?????????????? ?????????? ???? ??????????-????????, ???? ?????? ?????????? ???????????????????? ???????? ??????. ?????????????????? ?????????? ???????? ?????????????? ?????????????????????? ???????? ???????? ?? ???????????????? ???? ?????????????????? ????????????. ?? ???????? ????????????, ???????? ?????????????? ?? ???????? ?????????? ?????????????????? ???????????????? ??????, ???? ?????????? ?????????????? ???????? ?????????????? ?????????? ???????????????? ?? ???????????????? ???????????????????? ?????????? ?????????????? ???????????? ????????????????????. ?? ???????? ??????????-?????????? ?????????? ?????????????? ?????????????????? ????????????. ?? ?????????? ???????? ?????? ???????????????????? ???????????????????? ???????????????? ???????????????????????? ?????????? ?????????????????????????????? ???? ?? ?????????? ?????????????? ?? ?????????????????????? ??????????????, ?? ?? ???????????????????? ?????????? ????????????????. ?????? ?????????? ???????? ????????????????? ?????? ???? ?????????? ???????????????????????? ?????????????????? ???????????????? ?????????????? ?????????????????? ??????????????, ?????????????? ???????????????????????? ?????????? ???????????????????? ?????????????????? ?? ????????????????????????????, ?? ?????????????????? ?????????????? ???????????????? ???????????? ?????????????? ???????? ???????????????? ??????????????.', 1);
INSERT INTO public.article (id, name_article, text, user_id) VALUES (2, '???????????? ?????????? - ?????? ?????????????????? ??????????, ?? ?????????????? - ?????????????', '?????????????????????? ?????????????? ?????????? ?????????? ?????? ?????????????? ???????????? ???????????????? ?????????? ?????????? ????????????, ?????????? ?????? ????????????, ?????????????? ?????????????? ?? ??????, ?????? ?????????? - ?????? ???? ???????????????????????? ??????????. ?????? ?????? ?????????????? ?????????????????? ???????? ????, ?????? ?????????????? ?????????????????????? ????????????????????, ????????????????, ???????? ?? ?????????????? ????????????????????. ?????????? ?????? ?????????? ???? ?????????????? ?????????????? ???????????????? ???? ???????? ?? - ?????? ?????????????? - ???????? ????????????, ???????????????? ???? ????????, ?????? ?????? ???????? ???????????? ???????? ?? ???????????? ??????????????????.
????????????, ???????????????? ?????????????? ?? ??????, ?????? ?????? ???????????????????? ???????????????????? ???????????? ?? ???????????????????? ???? ?????????? ???????????? ???????????? ???????????????? ?? ?????????????????????? ???? ?????????????? ????????????????????, ?????????????? ???? ?????????????? ???????????????????? ??????????. ???? ?????? ?????? ???????? ?????????? ?????????? ?????????? ?????????????? ???? ????????????, ?????????????? ?????????????? ???? ?????????? ???????????? ???? ???????????????? ?? ???????????????????? ???? ????????????????. ???? ?????????? Debate.org 43% ?????????? ???? ?????????????? ?????????????????? ??????????????, ?????????????????????? ?????????????????? ?????? ??????, ?????? ???????????? ????????????? ?? ?????????? ???????????????????????? ???????????? ?? ???????? ???? ?????????????????????. ?????????????? ??????????????, ?????? ???????????????? ?????? ???????????????? ?????????????? ????????????????, ?? ???????????? - ?????????????? - ???? ????????????, ?? ????, ?????? ?????? ???????????????????? ???? ?????????? ???????? ??????????????.', 1);
INSERT INTO public.article (id, name_article, text, user_id) VALUES (3, '?????????? ??? ?????? ?????????? ?????????? ?? ?????????? ??????????', '?????? ???????????????????? ??? ???????????? ???????????????? ??? ?????????????????? ?????????????????? ????????????????????, ?? ?????????????? ????????????????????, ???????????? ????????????, ?????????????? ???????? 1980 ????????, ?? ???????? ??? ?????????????????? ??????????????????????, ?????????????????? ?????????????????? ?????????????????? ?????????????????????? ???????????????? ?? ???????????????? ????????????, ?????????? ?????????? ???????????? ???????????????????????? ???? ???????????????? ????????????????????, ???????????????? ???????????????? ??????????, ????????????-????????????????????, ?????????????????????? ?????????????????????? ?? ?????????????????????????? ?????????????????????????????? ?????????????????? ???????????? ?????????? ?????????????????? ?????????????????????? ?? ?????????????????????????????????????? ?? ??????????????????????.???????????? ????????????????????, ?? ?? ???????????????? ?????????????????????????? ???????????????? ???????????????? ???????????? ?? ??????????. ???? ?????? ?????????? ?????????????????? ?????????????????????? ?? ????????????????????. ?? ???????? ???????????????? ???????? ???????????????????
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   - ???????????????? ?? ????????, ?????? ?? ?????????????? ?????? ?????????? ?????????????????? ????????????????????, ?? ?? ?????????????? ???????????????? ?????????? ???? ??????????????????????. ?????????? ?? ??????????, ?????? ???????????????????? ??? ?????? ?????????? ?????????????? ?????????? (?? ???????? ???? ?????????????? ?????????????? ??????????), ?? ?????? ???????????? ?????? ?????????? ???????????? ???? ??????????????????. ?????????? ?????????? ?????????????? ?????????????????? ???????????????????? ?? ??????????????. ???????? ???????????? ???????????? ?????????????????????? ?? ???????????????? (?? ?????? ?????????????????? ???????????????? ?? 1972 ????????) ?????????? ???? ????????. ?? ?????? ???? ?? ?????????? ?????????? ???????????? ???? ???????????????????????? ?????????? ?? ??????????: ?????? ?????? ??? ?????????????????? ??????????????, ?????????? ?????????????? ?????????????????? ??????????????! ?????????????? ?????????????? ?????????????????? ?????????????????? ???????????????????????? ????????????????????????. ???? ???????? ?????????????????? ???????????????? ??? ???????????????????????????????? ??????????. ???? ?????????????????? ?????????? ?? ???????????? ???? ?????????????? ????????????, ?????????? ????????????????, ?????? ?????? ?????????? ????????????????. ????????????????????!', 1);
INSERT INTO public.article (id, name_article, text, user_id) VALUES (4, '5 ???????????????? ?????????????????????? ?????????????????????? ???? ???????? ?????????? ????????????', '?????????????? ????????????????????, ???????????? ???????????????????????? ?? ????????????????: ???????????? ??????????????????, ???????? ?????????? ????????????, ???????? ???? ?????????????????????? ?????????????? ????????????. ?????????????? ????????????????????, ?????? ?????????? ???????????????????? ???????????? ?????????????????????????? ????????, ???????? ?????????????? ????????-???? ??????????????????????.

1. Honda Civic Type R
2. Renault Clio RS
3. Volkswagen Golf GTI
4. Subaru Impreza WRX
5. Opel Corsa D OPC', 1);


--
-- TOC entry 2147 (class 0 OID 0)
-- Dependencies: 187
-- Name: article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.article_id_seq', 4, true);


--
-- TOC entry 2134 (class 0 OID 16396)
-- Dependencies: 186
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, login, password, role) VALUES (1, 'admin', 'admin', 'USER');


--
-- TOC entry 2148 (class 0 OID 0)
-- Dependencies: 185
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 2014 (class 2606 OID 16436)
-- Name: article article_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_pkey PRIMARY KEY (id);


--
-- TOC entry 2012 (class 2606 OID 16404)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2015 (class 2606 OID 16437)
-- Name: article fk15yy37u1qw43hjduyhs3bgomr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT fk15yy37u1qw43hjduyhs3bgomr FOREIGN KEY (user_id) REFERENCES public.users(id);


-- Completed on 2021-08-31 23:19:05

--
-- PostgreSQL database dump complete
--

