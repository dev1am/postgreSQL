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
-- Name: five_element; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.five_element (
    five_element_id integer NOT NULL,
    name character varying(50) NOT NULL,
    element_weight integer,
    element_diameter integer
);


ALTER TABLE public.five_element OWNER TO freecodecamp;

--
-- Name: five_element_five_element_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.five_element_five_element_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.five_element_five_element_id_seq OWNER TO freecodecamp;

--
-- Name: five_element_five_element_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.five_element_five_element_id_seq OWNED BY public.five_element.five_element_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    amount_planets integer,
    amount_moons integer,
    description text,
    distance numeric
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
    name character varying(50) NOT NULL,
    moon_weight integer,
    moon_diameter integer,
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
    name character varying(50) NOT NULL,
    planet_weight integer,
    planet_diameter integer,
    had_moon boolean,
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
    name character varying(50) NOT NULL,
    star_weight integer,
    star_diameter integer,
    some_condition boolean,
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
-- Name: five_element five_element_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five_element ALTER COLUMN five_element_id SET DEFAULT nextval('public.five_element_five_element_id_seq'::regclass);


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
-- Data for Name: five_element; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.five_element VALUES (1, 'earth', NULL, NULL);
INSERT INTO public.five_element VALUES (2, 'fire', NULL, NULL);
INSERT INTO public.five_element VALUES (3, 'water', NULL, NULL);
INSERT INTO public.five_element VALUES (4, 'air', NULL, NULL);
INSERT INTO public.five_element VALUES (5, 'human', NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Butterfly', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Cigar', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Io', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymeda', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Mimas', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Dione', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Titan', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Miranda', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Ariel', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Oberon', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Titania', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Triton', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Hydra', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Nix', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Styx', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Gremvy', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Alees', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Yelbo', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Gerty', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Embro', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Iros', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'Reon', NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Corvus', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Virgo', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Ursa Majong', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Tucana', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Cetus', NULL, NULL, NULL, NULL);


--
-- Name: five_element_five_element_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.five_element_five_element_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: five_element five_element_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five_element
    ADD CONSTRAINT five_element_name_key UNIQUE (name);


--
-- Name: five_element five_element_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five_element
    ADD CONSTRAINT five_element_pkey PRIMARY KEY (five_element_id);


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

