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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    year integer NOT NULL,
    round character varying NOT NULL,
    game_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (2018, 'Final', 1, 34, 4, 2, 33);
INSERT INTO public.games VALUES (2018, 'Third Place', 2, 36, 2, 0, 35);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 3, 36, 2, 1, 34);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 4, 35, 1, 0, 33);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 5, 42, 3, 2, 34);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 6, 44, 2, 0, 36);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 7, 46, 2, 1, 35);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 8, 48, 2, 0, 33);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 9, 50, 2, 1, 36);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 10, 52, 1, 0, 44);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 11, 54, 3, 2, 35);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 12, 56, 2, 0, 46);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 13, 58, 2, 1, 34);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 14, 60, 2, 1, 42);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 15, 62, 2, 1, 48);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 16, 64, 4, 3, 33);
INSERT INTO public.games VALUES (2014, 'Final', 17, 64, 1, 0, 65);
INSERT INTO public.games VALUES (2014, 'Third Place', 18, 46, 3, 0, 67);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 19, 67, 1, 0, 64);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 20, 46, 7, 1, 65);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 21, 74, 1, 0, 67);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 22, 35, 1, 0, 64);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 23, 50, 2, 1, 46);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 24, 33, 1, 0, 65);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 25, 82, 2, 1, 46);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 26, 48, 2, 0, 50);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 27, 86, 2, 0, 33);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 28, 88, 2, 1, 65);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 29, 56, 2, 1, 67);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 30, 92, 2, 1, 74);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 31, 52, 1, 0, 64);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 32, 96, 2, 1, 35);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1, '');
INSERT INTO public.teams VALUES (33, 'France');
INSERT INTO public.teams VALUES (34, 'Croatia');
INSERT INTO public.teams VALUES (35, 'Belgium');
INSERT INTO public.teams VALUES (36, 'England');
INSERT INTO public.teams VALUES (42, 'Russia');
INSERT INTO public.teams VALUES (44, 'Sweden');
INSERT INTO public.teams VALUES (46, 'Brazil');
INSERT INTO public.teams VALUES (48, 'Uruguay');
INSERT INTO public.teams VALUES (50, 'Colombia');
INSERT INTO public.teams VALUES (52, 'Switzerland');
INSERT INTO public.teams VALUES (54, 'Japan');
INSERT INTO public.teams VALUES (56, 'Mexico');
INSERT INTO public.teams VALUES (58, 'Denmark');
INSERT INTO public.teams VALUES (60, 'Spain');
INSERT INTO public.teams VALUES (62, 'Portugal');
INSERT INTO public.teams VALUES (64, 'Argentina');
INSERT INTO public.teams VALUES (65, 'Germany');
INSERT INTO public.teams VALUES (67, 'Netherlands');
INSERT INTO public.teams VALUES (74, 'Costa Rica');
INSERT INTO public.teams VALUES (82, 'Chile');
INSERT INTO public.teams VALUES (86, 'Nigeria');
INSERT INTO public.teams VALUES (88, 'Algeria');
INSERT INTO public.teams VALUES (92, 'Greece');
INSERT INTO public.teams VALUES (96, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 160, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

