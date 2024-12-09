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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    third_column integer
);

ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_three integer,
    number_four integer,
    number_five integer
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    four integer,
    five integer
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
    num_from_sun integer,
    num_of_moons integer,
    description text,
    habitable boolean,
    has_water boolean,
    weight_in_kg_x10_to_24th numeric(3,2),
    star_id integer
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
    galaxy_id integer,
    fourth integer,
    fifth integer
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);

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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'one', NULL);
INSERT INTO public.asteroid VALUES (2, 'two', NULL);
INSERT INTO public.asteroid VALUES (3, 'three', NULL);

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Snickers', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Twix', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Reeses', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Payday', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Three Musketeers', NULL, NULL, NULL);

--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Tuxedo Mask', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Ami', 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Minako', 1, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Hotaru', 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Sailor Jupiter', 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Sailor Pluto', 3, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Sailor Uranus', 8, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Usagi', 8, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Luna', 4, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Artemis', 4, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Diana', 5, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Haruna', 5, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Ikuko', 6, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Makoto', 6, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Naru', 6, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Serenity', 6, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Firefly', 7, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'River', 7, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Pluto', 10, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Popeye', 10, NULL, NULL);

--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Saturn', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Venus', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Mars', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Mercury', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Myanus', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Heranus', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'Hisanus', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'Doganus', NULL, NULL, NULL, NULL, NULL, NULL, 1);

--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'These', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'are', 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'really', 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'cool', 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'and', 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'totally', 1, NULL, NULL);
INSERT INTO public.star VALUES (7, 'real', 1, NULL, NULL);
INSERT INTO public.star VALUES (8, 'names', 1, NULL, NULL);
INSERT INTO public.star VALUES (9, 'of', 1, NULL, NULL);
INSERT INTO public.star VALUES (10, 'stars', 1, NULL, NULL);
INSERT INTO public.star VALUES (11, 'I', 1, NULL, NULL);
INSERT INTO public.star VALUES (12, 'know', 1, NULL, NULL);

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);

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

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);

--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);

--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);

--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);

--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);

--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);

--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);

--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);

--
-- Name: asteroid unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT unique_name UNIQUE (name);

--
-- Name: planet unique_name_num_from_sun; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_num_from_sun UNIQUE (name, num_from_sun);

--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);

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
-- Name: star star_glaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_glaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);

--
-- PostgreSQL database dump complete
--


