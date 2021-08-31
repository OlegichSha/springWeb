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

INSERT INTO public.article (id, name_article, text, user_id) VALUES (1, 'Гонки как современное искусство', 'В большинстве видов спорта соревнование — это непрерывное зрелище. Будь то футбольный матч или чемпионат по хапкидо, зритель в каждый момент времени может видеть весь соревновательный процесс. Конечно, в ряде случаев свою роль играет, сколько денег он заплатил за билеты: обзор может быть чуть лучше или чуть хуже. Но на гонках независимо от цены билета увидеть всё соревнование, как правило, невозможно. Обычно нет такого сектора на трибунах, откуда открывался бы вид на всю трассу.В этом плане самые зрелищные — это кольцевые гонки. На них зритель периодически будет видеть проносящиеся мимо него автомобили, а на специальных экранах ему будут показывать старательно выхватываемые камерами наиболее захватывающие моменты соревнования.Если же зритель попал на ралли-рейд, то ему будет недоступно даже это. Участники гонки лишь однажды промелькнут мимо него и скроются за ближайшим холмом. В этом смысле, если подойти к МКАД после окончания рабочего дня, то можно ощутить куда больший накал страстей и испытать несравнимо более сильный выброс адреналина. А ведь ралли-рейды могут длиться несколько недель. В итоге даже для преданного поклонника просмотр соревнования будет ассоциироваться не с ревом моторов и мастерством пилотов, а с просмотром ленты новостей. Что может быть скучнее?И тем не менее поклонниками автогонок являются десятки миллионов человек, крупные соревнования легко привлекают спонсоров и рекламодателей, а виднейшие мировые компании охотно создают свои гоночные команды.', 1);
INSERT INTO public.article (id, name_article, text, user_id) VALUES (2, 'Почему гонки - это настоящий спорт, а гонщики - атлеты?', 'Большинство фанатов гонок знают как минимум одного человека среди своих друзей, семьи или коллег, который убежден в том, что гонки - это не “настоящий” спорт. Для них спортом считается лишь то, что требует физического напряжения, идеально, если в большом количестве. Также они могут не считать спортом стрельбу из лука и - Бог простит - даже футбол, невзирая на факт, что эти виды спорта есть в летней Олимпиаде.
Обычно, проблема связана с тем, что они сравнивают физические усилия в автоспорте со своим личным опытом вождения в супермаркет на обычном автомобиле, который не требует напряжения вовсе. Но эти две вещи имеют между собой столько же общего, сколько рыбалка на озере похожа на сражение с крокодилом на Амазонке. На сайте Debate.org 43% людей не считают автогонки спортом, большинство объясняет это тем, что пилоты “сидят в своем водительском кресле и даже не двигаются”. Другими словами, они убеждены что атлетизм требует движений, а значит - гонщики - не атлеты, а то, чем они занимаются не может быть спортом.', 1);
INSERT INTO public.article (id, name_article, text, user_id) VALUES (3, 'Гонки – это образ жизни и образ мысли', 'Наш собеседник – Михаил Горбачев – известный энтузиаст автоспорта, в прошлом автогонщик, мастер спорта, чемпион СССР 1980 года, а ныне – известный автоэксперт, создатель авторской программы безопасного вождения и гоночной теории, автор более десяти бестселлеров по вождению автомобиля, дизайнер гоночных трасс, тренер-инструктор, реставратор автомобилей и преподаватель образовательной программы Высшей школы экономики «Менеджмент и предпринимательство в автоспорте».Михаил Георгиевич, я с огромным удовольствием прочитал трилогию «ГОНКИ В СССР». Вы всю жизнь посвятили автомобилям и автоспорту. С чего началось ваше увлечение?
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   - Началось с того, что в детстве мне очень нравились автомобили, и я страшно отчаянно гонял на велосипедах. Позже я понял, что автомобиль – это очень опасный зверь (у меня он вызывал сильный страх), и что водить его нужно только на «отлично». Далее пошла цепочка случайных совпадений и везения. Меня научил водить продвинутый в вождении (а это большущая редкость в 1972 году) сосед по даче. С ним же я потом начал ездить на любительские ралли и понял: вот оно – достойное занятие, здесь рубятся настоящие мужчины! Сначала проехал множество различных любительских соревнований. Но душа требовала большего – профессиональных гонок. На настоящие гонки я выехал на маминой машине, чтобы доказать, что мне можно доверять. Получилось!', 1);
INSERT INTO public.article (id, name_article, text, user_id) VALUES (4, '5 надежных подержанных «зажигалок» по цене «Лады Весты»', 'Выбирая автомобили, многие сталкиваются с дилеммой: купить бюджетную, зато новую машину, либо же подержанную «машину мечты». Сегодня рассмотрим, что можно приобрести взамен отечественной Лады, если хочется чего-то «погорячее».

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

