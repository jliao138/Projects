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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    pic_avail boolean,
    type text,
    ly_size numeric
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
    pic_avail boolean,
    planet_id integer,
    atmo text
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
    name character varying(30) NOT NULL,
    star_id integer,
    dwarf boolean,
    yr_in_days integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_pix; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_pix (
    planet_pix_id integer NOT NULL,
    name character varying(30),
    credit text NOT NULL,
    copies_avail integer
);


ALTER TABLE public.planet_pix OWNER TO freecodecamp;

--
-- Name: planet_pix_planet_pix_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_pix_planet_pix_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_pix_planet_pix_id_seq OWNER TO freecodecamp;

--
-- Name: planet_pix_planet_pix_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_pix_planet_pix_id_seq OWNED BY public.planet_pix.planet_pix_id;


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
    constellation character varying(30),
    multistar_system boolean,
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_pix planet_pix_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_pix ALTER COLUMN planet_pix_id SET DEFAULT nextval('public.planet_pix_planet_pix_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', false, 'spiral', 150000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, 'spiral', 220000);
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', false, 'spiral', 14000);
INSERT INTO public.galaxy VALUES (4, 'Small Magellanic Cloud', false, 'dwarf', 7000);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', false, 'spiral', 60000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', false, 'spiral', 50000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', false, 3, 'none');
INSERT INTO public.moon VALUES (2, 'Phobos', false, 4, 'none');
INSERT INTO public.moon VALUES (3, 'Deimos', false, 4, 'none');
INSERT INTO public.moon VALUES (4, 'Ganymede', false, 5, 'trace O2');
INSERT INTO public.moon VALUES (5, 'Callisto', false, 5, 'trace O2 CO2');
INSERT INTO public.moon VALUES (6, 'Io', false, 5, 'SO2');
INSERT INTO public.moon VALUES (7, 'Europa', false, 5, 'trace O2');
INSERT INTO public.moon VALUES (8, 'Amalthea', false, 5, 'none');
INSERT INTO public.moon VALUES (9, 'Titan', false, 6, 'N');
INSERT INTO public.moon VALUES (10, 'Rhea', false, 6, 'O2 CO2');
INSERT INTO public.moon VALUES (11, 'Iapetus', false, 6, 'none');
INSERT INTO public.moon VALUES (12, 'Titania', false, 7, 'CO2');
INSERT INTO public.moon VALUES (13, 'Oberon', false, 7, 'none');
INSERT INTO public.moon VALUES (14, 'Umbriel', false, 7, 'none');
INSERT INTO public.moon VALUES (15, 'Triton', false, 8, 'N');
INSERT INTO public.moon VALUES (16, 'Proteus', false, 8, 'none');
INSERT INTO public.moon VALUES (17, 'Nereid', false, 8, 'none');
INSERT INTO public.moon VALUES (18, 'Charon', false, 9, 'none');
INSERT INTO public.moon VALUES (19, 'Hydra', false, 9, 'none');
INSERT INTO public.moon VALUES (20, 'Nix', false, 9, 'none');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 7, false, 88, 1);
INSERT INTO public.planet VALUES ('Venus', 7, false, 225, 2);
INSERT INTO public.planet VALUES ('Earth', 7, false, 365, 3);
INSERT INTO public.planet VALUES ('Mars', 7, false, 687, 4);
INSERT INTO public.planet VALUES ('Jupiter', 7, false, 4380, 5);
INSERT INTO public.planet VALUES ('Saturn', 7, false, 10585, 6);
INSERT INTO public.planet VALUES ('Uranus', 7, false, 30660, 7);
INSERT INTO public.planet VALUES ('Neptune', 7, false, 60225, 8);
INSERT INTO public.planet VALUES ('Pluto', 7, true, 90520, 9);
INSERT INTO public.planet VALUES ('Ceres', 7, true, 1682, 10);
INSERT INTO public.planet VALUES ('Makemake', 7, true, 113150, 11);
INSERT INTO public.planet VALUES ('Haumea', 7, true, 104025, 12);


--
-- Data for Name: planet_pix; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_pix VALUES (1, 'Earth', 'John Marten', 6);
INSERT INTO public.planet_pix VALUES (2, 'Pluto', 'Diane Doe', 3);
INSERT INTO public.planet_pix VALUES (3, 'Mars', 'Kit Callahan', 17);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Polaris', 'Ursa Minor', true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'Canis Major', true, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 'Centaurus', true, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Orion', false, 1);
INSERT INTO public.star VALUES (5, 'Rigel', 'Orion', true, 1);
INSERT INTO public.star VALUES (6, 'Vega', 'Lyra', false, 1);
INSERT INTO public.star VALUES (7, 'Sun', 'n/a', false, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_pix_planet_pix_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_pix_planet_pix_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: planet_pix planet_pix_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_pix
    ADD CONSTRAINT planet_pix_name_key UNIQUE (name);


--
-- Name: planet_pix planet_pix_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_pix
    ADD CONSTRAINT planet_pix_pkey PRIMARY KEY (planet_pix_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star uniquectm_const; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uniquectm_const UNIQUE (name);


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

