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
    galaxy_types text,
    size numeric(5,2),
    description text
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
-- Name: living_things; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.living_things (
    living_things_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    population integer
);


ALTER TABLE public.living_things OWNER TO freecodecamp;

--
-- Name: living_things_living_things_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.living_things_living_things_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.living_things_living_things_id_seq OWNER TO freecodecamp;

--
-- Name: living_things_living_things_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.living_things_living_things_id_seq OWNED BY public.living_things.living_things_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    distance_from_planet numeric(5,2),
    description text
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
    star_id integer NOT NULL,
    has_life boolean,
    is_spherical boolean
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
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer,
    number_of_orbiting_planets integer
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
-- Name: living_things living_things_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.living_things ALTER COLUMN living_things_id SET DEFAULT nextval('public.living_things_living_things_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spirals', 57.00, 'Galaxy of earth');
INSERT INTO public.galaxy VALUES (2, 'Large Mangellanic Cloud', 'Irregular', 140.00, 'A large galaxy with irregular shape');
INSERT INTO public.galaxy VALUES (3, 'Elliptical Galaxy', 'Elliptical', NULL, 'It has ac cucumber like shape');
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', 'Starburst', 37.00, 'Known as Krega');
INSERT INTO public.galaxy VALUES (5, 'Andromeda', 'Spirals', 220.00, 'Nearest galaxy in Milky Way');
INSERT INTO public.galaxy VALUES (6, 'Black Eye Galaxy', 'Spirals', 529.62, 'Known as Sleeping Beauty Galaxy');


--
-- Data for Name: living_things; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.living_things VALUES (1, 'Human', 5, 400000000);
INSERT INTO public.living_things VALUES (2, 'Cats', 5, 40000);
INSERT INTO public.living_things VALUES (3, 'Dogs', 5, 40000);
INSERT INTO public.living_things VALUES (4, 'Pigss', 5, 40000);
INSERT INTO public.living_things VALUES (5, 'Pepa', 5, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earths Moon', 5, 384.40, 'The only moon in earth');
INSERT INTO public.moon VALUES (2, 'Phobos', 8, 370.00, 'One of the moon in Mars');
INSERT INTO public.moon VALUES (3, 'Deimos', 8, 370.00, 'One of the moon in Mars');
INSERT INTO public.moon VALUES (4, 'Europa', 7, 370.00, 'One of the moon in Jupiter');
INSERT INTO public.moon VALUES (5, 'Io', 7, 370.00, 'One of the moon in Jupiter');
INSERT INTO public.moon VALUES (6, 'Ganymede', 7, 370.00, 'One of the moon in Jupiter');
INSERT INTO public.moon VALUES (7, 'Callisto', 7, 370.00, 'One of the moon in Jupiter');
INSERT INTO public.moon VALUES (8, 'Kallichore', 7, 370.00, 'One of the moon in Jupiter');
INSERT INTO public.moon VALUES (9, 'Amalthea', 7, 370.00, 'One of the moon in Jupiter');
INSERT INTO public.moon VALUES (10, 'Euporie', 7, 370.00, 'One of the moon in Jupiter');
INSERT INTO public.moon VALUES (11, 'Titan', 6, NULL, 'One of the moon in Saturn');
INSERT INTO public.moon VALUES (12, 'Enculadus', 6, NULL, 'One of the moon in Saturn');
INSERT INTO public.moon VALUES (13, 'Enceladus', 6, NULL, 'One of the moon in Saturn');
INSERT INTO public.moon VALUES (14, 'Mimas', 6, NULL, 'One of the moon in Saturn');
INSERT INTO public.moon VALUES (15, 'Dione', 6, NULL, 'One of the moon in Saturn');
INSERT INTO public.moon VALUES (16, 'Iapetus', 6, NULL, 'One of the moon in Saturn');
INSERT INTO public.moon VALUES (17, 'Tethys', 6, NULL, 'One of the moon in Saturn');
INSERT INTO public.moon VALUES (18, 'Hyperion', 6, NULL, 'One of the moon in Saturn');
INSERT INTO public.moon VALUES (19, 'Epimetheus', 6, NULL, 'One of the moon in Saturn');
INSERT INTO public.moon VALUES (20, 'Telesto', 6, NULL, 'One of the moon in Saturn');
INSERT INTO public.moon VALUES (21, 'Phoebe', 6, NULL, 'One of the moon in Saturn');
INSERT INTO public.moon VALUES (22, 'Daphnis', 6, NULL, 'One of the moon in Saturn');
INSERT INTO public.moon VALUES (23, 'Rhea', 6, NULL, 'One of the moon in Saturn');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, '61 Virginis b', 6, false, true);
INSERT INTO public.planet VALUES (2, '61 Virginis a', 6, false, false);
INSERT INTO public.planet VALUES (3, 'Gliese 581b', 5, false, false);
INSERT INTO public.planet VALUES (4, 'Gliese 581c', 5, false, true);
INSERT INTO public.planet VALUES (5, 'Earth', 1, true, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, false, true);
INSERT INTO public.planet VALUES (7, 'Jupiter', 1, false, true);
INSERT INTO public.planet VALUES (8, 'Mars', 1, false, true);
INSERT INTO public.planet VALUES (9, 'Venus', 1, false, true);
INSERT INTO public.planet VALUES (10, 'Mercury', 1, false, true);
INSERT INTO public.planet VALUES (11, 'Neptune', 1, false, true);
INSERT INTO public.planet VALUES (12, 'Uranus', 1, false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 4620, 8);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 1, 10, 0);
INSERT INTO public.star VALUES (3, 'Antares', 1, 11, 0);
INSERT INTO public.star VALUES (4, 'Vega', 1, 450, 0);
INSERT INTO public.star VALUES (5, 'Gliese 581', 1, 2000, 3);
INSERT INTO public.star VALUES (6, '61 Virginis', 1, 6300, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: living_things_living_things_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.living_things_living_things_id_seq', 5, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unq UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: living_things living_things_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.living_things
    ADD CONSTRAINT living_things_name_unq UNIQUE (name);


--
-- Name: living_things living_things_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.living_things
    ADD CONSTRAINT living_things_pkey PRIMARY KEY (living_things_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet name_un; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_un UNIQUE (name);


--
-- Name: moon name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_unq UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unq UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: living_things living_things_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.living_things
    ADD CONSTRAINT living_things_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

