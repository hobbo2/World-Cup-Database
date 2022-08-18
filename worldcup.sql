--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (65, 2018, 'Final', 289, 290, 4, 2);
INSERT INTO public.games VALUES (66, 2018, 'Third Place', 291, 292, 2, 0);
INSERT INTO public.games VALUES (67, 2018, 'Semi-Final', 290, 292, 2, 1);
INSERT INTO public.games VALUES (68, 2018, 'Semi-Final', 289, 291, 1, 0);
INSERT INTO public.games VALUES (69, 2018, 'Quarter-Final', 290, 293, 3, 2);
INSERT INTO public.games VALUES (70, 2018, 'Quarter-Final', 292, 294, 2, 0);
INSERT INTO public.games VALUES (71, 2018, 'Quarter-Final', 291, 295, 2, 1);
INSERT INTO public.games VALUES (72, 2018, 'Quarter-Final', 289, 296, 2, 0);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 292, 297, 2, 1);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 294, 298, 1, 0);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 291, 299, 3, 2);
INSERT INTO public.games VALUES (76, 2018, 'Eighth-Final', 295, 300, 2, 0);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 290, 301, 2, 1);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 293, 302, 2, 1);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 296, 303, 2, 1);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 289, 304, 4, 3);
INSERT INTO public.games VALUES (81, 2014, 'Final', 305, 304, 1, 0);
INSERT INTO public.games VALUES (82, 2014, 'Third Place', 306, 295, 3, 0);
INSERT INTO public.games VALUES (83, 2014, 'Semi-Final', 304, 306, 1, 0);
INSERT INTO public.games VALUES (84, 2014, 'Semi-Final', 305, 295, 7, 1);
INSERT INTO public.games VALUES (85, 2014, 'Quarter-Final', 306, 307, 1, 0);
INSERT INTO public.games VALUES (86, 2014, 'Quarter-Final', 304, 291, 1, 0);
INSERT INTO public.games VALUES (87, 2014, 'Quarter-Final', 295, 297, 2, 1);
INSERT INTO public.games VALUES (88, 2014, 'Quarter-Final', 305, 289, 1, 0);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 295, 308, 2, 1);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 297, 296, 2, 0);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 289, 309, 2, 0);
INSERT INTO public.games VALUES (92, 2014, 'Eighth-Final', 305, 310, 2, 1);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 306, 300, 2, 1);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 307, 311, 2, 1);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 304, 298, 1, 0);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 291, 312, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (289, 'France');
INSERT INTO public.teams VALUES (290, 'Croatia');
INSERT INTO public.teams VALUES (291, 'Belgium');
INSERT INTO public.teams VALUES (292, 'England');
INSERT INTO public.teams VALUES (293, 'Russia');
INSERT INTO public.teams VALUES (294, 'Sweden');
INSERT INTO public.teams VALUES (295, 'Brazil');
INSERT INTO public.teams VALUES (296, 'Uruguay');
INSERT INTO public.teams VALUES (297, 'Colombia');
INSERT INTO public.teams VALUES (298, 'Switzerland');
INSERT INTO public.teams VALUES (299, 'Japan');
INSERT INTO public.teams VALUES (300, 'Mexico');
INSERT INTO public.teams VALUES (301, 'Denmark');
INSERT INTO public.teams VALUES (302, 'Spain');
INSERT INTO public.teams VALUES (303, 'Portugal');
INSERT INTO public.teams VALUES (304, 'Argentina');
INSERT INTO public.teams VALUES (305, 'Germany');
INSERT INTO public.teams VALUES (306, 'Netherlands');
INSERT INTO public.teams VALUES (307, 'Costa Rica');
INSERT INTO public.teams VALUES (308, 'Chile');
INSERT INTO public.teams VALUES (309, 'Nigeria');
INSERT INTO public.teams VALUES (310, 'Algeria');
INSERT INTO public.teams VALUES (311, 'Greece');
INSERT INTO public.teams VALUES (312, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 312, true);


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

