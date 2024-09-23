--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance integer NOT NULL,
    diameter integer,
    first_found_by text,
    viewable boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: i_dont_know; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.i_dont_know (
    i_dont_know_id integer NOT NULL,
    name character varying(100) NOT NULL,
    u_decide boolean NOT NULL
);


ALTER TABLE public.i_dont_know OWNER TO freecodecamp;

--
-- Name: i_dont_know_know_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.i_dont_know_know_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i_dont_know_know_id_seq OWNER TO freecodecamp;

--
-- Name: i_dont_know_know_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.i_dont_know_know_id_seq OWNED BY public.i_dont_know.i_dont_know_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance integer NOT NULL,
    diameter integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance bigint NOT NULL,
    diameter integer,
    gravity numeric(4,1),
    star_id integer,
    viewable boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance integer NOT NULL,
    diameter integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: i_dont_know i_dont_know_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.i_dont_know ALTER COLUMN i_dont_know_id SET DEFAULT nextval('public.i_dont_know_know_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 27000, 105700, 'Galileo Galilei', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2537000, 220000, 'Abd al-Rahman al-Sufi', true);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 29000000, 49000, 'Pierre Méchain', true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 23000000, 76000, 'Charles Messier', true);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 21000000, 170000, 'Pierre Méchain', true);
INSERT INTO public.galaxy VALUES (6, 'Triangulum', 3000000, 60000, 'Giovanni Battista Hodierna', false);


--
-- Data for Name: i_dont_know; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.i_dont_know VALUES (4, 'What is the meaning of life?', false);
INSERT INTO public.i_dont_know VALUES (5, 'Is there life on other planets?', true);
INSERT INTO public.i_dont_know VALUES (6, 'Will I ever travel to space?', false);
INSERT INTO public.i_dont_know VALUES (7, 'What is consciousness?', true);
INSERT INTO public.i_dont_know VALUES (8, 'Are we alone in the universe?', false);
INSERT INTO public.i_dont_know VALUES (9, 'What happens after death?', true);
INSERT INTO public.i_dont_know VALUES (10, 'Is time travel possible?', false);
INSERT INTO public.i_dont_know VALUES (11, 'Can we ever achieve world peace?', true);
INSERT INTO public.i_dont_know VALUES (12, 'What is dark matter?', false);
INSERT INTO public.i_dont_know VALUES (13, 'Do parallel universes exist?', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 384400, 3474, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 9376, 22, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 23460, 12, 4);
INSERT INTO public.moon VALUES (4, 'Io', 421800, 3642, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 671100, 3121, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 1070400, 5262, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 1882700, 4821, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 1222000, 5150, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 527600, 1528, 6);
INSERT INTO public.moon VALUES (10, 'Triton', 354800, 2706, 7);
INSERT INTO public.moon VALUES (11, 'Miranda', 129800, 472, 7);
INSERT INTO public.moon VALUES (12, 'Ariel', 191000, 1158, 7);
INSERT INTO public.moon VALUES (13, 'Umbriel', 266000, 1169, 7);
INSERT INTO public.moon VALUES (14, 'Oberon', 583000, 1538, 7);
INSERT INTO public.moon VALUES (15, 'Titania', 436000, 1577, 7);
INSERT INTO public.moon VALUES (16, 'Mimas', 185000, 396, 6);
INSERT INTO public.moon VALUES (17, 'Enceladus', 238000, 504, 6);
INSERT INTO public.moon VALUES (18, 'Dione', 561000, 1123, 6);
INSERT INTO public.moon VALUES (19, 'Iapetus', 3560000, 1469, 6);
INSERT INTO public.moon VALUES (20, 'Charon', 197000, 1212, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 57900000, 4879, 3.7, 1, true);
INSERT INTO public.planet VALUES (2, 'Venus', 108200000, 12104, 8.9, 1, true);
INSERT INTO public.planet VALUES (3, 'Earth', 149600000, 12742, 9.8, 1, true);
INSERT INTO public.planet VALUES (4, 'Mars', 227900000, 6779, 3.7, 1, true);
INSERT INTO public.planet VALUES (5, 'Jupiter', 778500000, 139820, 24.8, 1, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 1434000000, 116460, 10.4, 1, true);
INSERT INTO public.planet VALUES (8, 'Neptune', 4495000000, 49244, 11.0, 1, true);
INSERT INTO public.planet VALUES (7, 'Uranus', 2871000000, 50724, 8.7, 1, false);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 600000000, 25000, 10.5, 2, false);
INSERT INTO public.planet VALUES (10, 'Gliese 581g', 20000000, 23000, 9.1, 3, false);
INSERT INTO public.planet VALUES (11, 'Proxima b', 4000000, 12000, 8.7, 4, false);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 39000000, 11500, 9.3, 5, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Proxima Centauri', 4240, 200000, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 642, 1200000, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 81, 2400000, 1);
INSERT INTO public.star VALUES (4, 'Rigel', 863, 990000, 2);
INSERT INTO public.star VALUES (5, 'Aldebaran', 652, 610000, 3);
INSERT INTO public.star VALUES (6, 'Polaris', 433, 440000, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: i_dont_know_know_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.i_dont_know_know_id_seq', 13, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: i_dont_know i_dont_know_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.i_dont_know
    ADD CONSTRAINT i_dont_know_name_key UNIQUE (name);


--
-- Name: i_dont_know i_dont_know_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.i_dont_know
    ADD CONSTRAINT i_dont_know_pkey PRIMARY KEY (i_dont_know_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

