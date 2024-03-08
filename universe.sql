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
-- Name: continent; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.continent (
    continent_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet character varying(20) NOT NULL
);


ALTER TABLE public.continent OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.continent_continent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.continent_continent_id_seq OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.continent_continent_id_seq OWNED BY public.continent.continent_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    galaxy_types character varying(20) NOT NULL,
    age_in_millions_of_years integer
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
    name character varying(20) NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric(16,4),
    is_spherical boolean,
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
    name character varying(20) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    planet_types character varying(30) NOT NULL,
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
    name character varying(20) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_year integer,
    distance_from_earth numeric(16,4),
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
-- Name: continent continent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent ALTER COLUMN continent_id SET DEFAULT nextval('public.continent_continent_id_seq'::regclass);


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
-- Data for Name: continent; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.continent VALUES (1, 'africa', 'earth');
INSERT INTO public.continent VALUES (2, 'europe', 'earth');
INSERT INTO public.continent VALUES (3, 'america', 'earth');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral galaxy containing our Solar System', 'Spiral', 13000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest spiral galaxy to the Milky Way', 'Spiral', 13000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral galaxy in the constellation Triangulum', 'Spiral', 13000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Interacting spiral galaxy in the constellation Canes Venatici', 'Spiral', 13000);
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 'Spiral galaxy in the constellation Coma Berenices', 'Spiral', 13000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Unusual galaxy with a prominent bulge and a wide, circular disk', 'Spiral', 13000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (61, 'Luna', 'Earth''s natural satellite', 384400.0000, true, 25);
INSERT INTO public.moon VALUES (62, 'Phobos', 'Larger and closer of Mars'' two moons', 9377.0000, true, 26);
INSERT INTO public.moon VALUES (63, 'Deimos', 'Smaller and outer of Mars'' two moons', 23460.0000, true, 26);
INSERT INTO public.moon VALUES (64, 'Ganymede', 'Largest moon of Jupiter', 1070400.0000, true, 28);
INSERT INTO public.moon VALUES (65, 'Europa', 'Smoothest surface of any known solid object in the Solar System', 671100.0000, true, 28);
INSERT INTO public.moon VALUES (66, 'Io', 'Most volcanically active body in the Solar System', 421700.0000, true, 25);
INSERT INTO public.moon VALUES (67, 'Callisto', 'Most heavily cratered object in the Solar System', 1882700.0000, true, 35);
INSERT INTO public.moon VALUES (68, 'Titan', 'Largest moon of Saturn', 1257060.0000, true, 36);
INSERT INTO public.moon VALUES (69, 'Rhea', 'Second-largest moon of Saturn', 527040.0000, true, 36);
INSERT INTO public.moon VALUES (70, 'Iapetus', 'Third-largest moon of Saturn', 3560820.0000, true, 29);
INSERT INTO public.moon VALUES (71, 'Triton', 'Largest moon of Neptune', 354760.0000, true, 30);
INSERT INTO public.moon VALUES (72, 'Charon', 'Largest moon of Pluto', 19591.0000, true, 31);
INSERT INTO public.moon VALUES (73, 'PhobosII', 'Larger and closer of Mars'' two moons', 9377.0000, true, 27);
INSERT INTO public.moon VALUES (74, 'DeimosII', 'Smaller and outer of Mars'' two moons', 23460.0000, true, 32);
INSERT INTO public.moon VALUES (75, 'Enceladus', 'Sixth-largest moon of Saturn', 238020.0000, true, 33);
INSERT INTO public.moon VALUES (76, 'Mimas', 'Smallest astronomical body that is known to be rounded in shape because of self-gravitation', 185520.0000, true, 34);
INSERT INTO public.moon VALUES (77, 'Dione', 'Fourth-largest moon of Saturn', 377420.0000, true, 35);
INSERT INTO public.moon VALUES (78, 'Miranda', 'Smallest and innermost of Uranus'' five major moons', 129390.0000, true, 27);
INSERT INTO public.moon VALUES (79, 'Larissa', 'Neptune''s second-largest moon', 73360.0000, true, 28);
INSERT INTO public.moon VALUES (80, 'Moonlet', 'Small natural satellite in orbit around Saturn', 17100.0000, true, 29);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (25, 'Earth', 'Third planet from the Sun', true, true, 'Terrestrial', 13);
INSERT INTO public.planet VALUES (26, 'Mars', 'Fourth planet from the Sun', false, true, 'Terrestrial', 14);
INSERT INTO public.planet VALUES (27, 'Venus', 'Second planet from the Sun', false, true, 'Terrestrial', 15);
INSERT INTO public.planet VALUES (28, 'Mercury', 'Closest planet to the Sun', false, true, 'Terrestrial', 16);
INSERT INTO public.planet VALUES (29, 'Jupiter', 'Largest planet in the Solar System', false, true, 'Gas Giant', 17);
INSERT INTO public.planet VALUES (30, 'Saturn', 'Second-largest planet in the Solar System', false, true, 'Gas Giant', 18);
INSERT INTO public.planet VALUES (31, 'Uranus', 'Seventh planet from the Sun', false, true, 'Ice Giant', 13);
INSERT INTO public.planet VALUES (32, 'Neptune', 'Eighth planet from the Sun', false, true, 'Ice Giant', 14);
INSERT INTO public.planet VALUES (33, 'Pluto', 'Dwarf planet in the Solar System', false, true, 'Dwarf Planet', 15);
INSERT INTO public.planet VALUES (34, 'Kepler-186f', 'First Earth-size planet found in the habitable zone of another star', true, true, 'Exoplanet', 16);
INSERT INTO public.planet VALUES (35, 'Tatooine', 'Fictional desert planet in the Star Wars universe', false, true, 'Fictional', 17);
INSERT INTO public.planet VALUES (36, 'Pandora', 'Fictional moon in the movie Avatar', true, false, 'Fictional', 18);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (13, 'Sun', 'Main-sequence G-type star', 4600, 0.0000, 1);
INSERT INTO public.star VALUES (14, 'Sirius', 'Brightest star in the night sky', 250, 8.6000, 1);
INSERT INTO public.star VALUES (15, 'Proxima Centauri', 'Closest known star to the Sun', 4000, 4.2400, 2);
INSERT INTO public.star VALUES (16, 'Betelgeuse', 'Red supergiant star', 800, 643.9000, 1);
INSERT INTO public.star VALUES (17, 'Alpha Centauri A', 'Closest star system to the Sun', 600, 4.3700, 2);
INSERT INTO public.star VALUES (18, 'Vega', 'Brightest star in the constellation of Lyra', 455, 25.0400, 1);


--
-- Name: continent_continent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.continent_continent_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 47, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: continent continent_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_name_key UNIQUE (name);


--
-- Name: continent continent_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_pkey PRIMARY KEY (continent_id);


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

