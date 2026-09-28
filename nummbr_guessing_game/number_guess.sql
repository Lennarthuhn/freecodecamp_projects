--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    name character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    high_score integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('me', 0, NULL);
INSERT INTO public.users VALUES ('user_1790602376319', 0, NULL);
INSERT INTO public.users VALUES ('user_1790602376318', 0, NULL);
INSERT INTO public.users VALUES ('user_1790602415486', 0, NULL);
INSERT INTO public.users VALUES ('user_1790602415485', 0, NULL);
INSERT INTO public.users VALUES ('user_1790603319854', 0, NULL);
INSERT INTO public.users VALUES ('user_1790603319853', 0, NULL);
INSERT INTO public.users VALUES ('user_1790603386349', 0, NULL);
INSERT INTO public.users VALUES ('user_1790603386348', 0, NULL);
INSERT INTO public.users VALUES ('user_1790603505970', 0, NULL);
INSERT INTO public.users VALUES ('user_1790603505969', 0, NULL);
INSERT INTO public.users VALUES ('user_1790603558540', 0, NULL);
INSERT INTO public.users VALUES ('user_1790603558539', 0, NULL);
INSERT INTO public.users VALUES ('user_1790604271327', 0, NULL);
INSERT INTO public.users VALUES ('user_1790604271326', 0, NULL);
INSERT INTO public.users VALUES ('i', 0, NULL);
INSERT INTO public.users VALUES ('user_1790604431924', 1, 990);
INSERT INTO public.users VALUES ('user_1790604431923', 2, 676);
INSERT INTO public.users VALUES ('user_1790604529404', 2, 641);
INSERT INTO public.users VALUES ('user_1790604529405', 5, 795);
INSERT INTO public.users VALUES ('user_1790604586884', 2, 518);
INSERT INTO public.users VALUES ('user_1790604586885', 5, 768);
INSERT INTO public.users VALUES ('user_1790604804408', 2, 644);
INSERT INTO public.users VALUES ('user_1790604804409', 5, 923);
INSERT INTO public.users VALUES ('b', 1, 16);
INSERT INTO public.users VALUES ('user_1790604919611', 2, 682);
INSERT INTO public.users VALUES ('user_1790604919612', 5, 753);
INSERT INTO public.users VALUES ('user_1790604951580', 2, 562);
INSERT INTO public.users VALUES ('user_1790604951581', 5, 972);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (name);


--
-- PostgreSQL database dump complete
--

