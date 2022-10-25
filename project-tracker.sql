--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Homebrew)
-- Dumped by pg_dump version 14.5 (Homebrew)

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
-- Name: project; Type: TABLE; Schema: public; Owner: clairetasler
--

CREATE TABLE public.project (
    title character varying(20) NOT NULL,
    description text,
    max_grade integer
);


ALTER TABLE public.project OWNER TO clairetasler;

--
-- Name: student; Type: TABLE; Schema: public; Owner: clairetasler
--

CREATE TABLE public.student (
    github character varying(20) NOT NULL,
    first_name character varying(20),
    last_name character varying(20)
);


ALTER TABLE public.student OWNER TO clairetasler;

--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: clairetasler
--

COPY public.project (title, description, max_grade) FROM stdin;
Markov	Tweets generated from Markov chains	50
Blockly	Programmatic Logic Puzzle Game	100
Melons	Melons OOP	100
Spooky	Costume idea generator	50
Tips	Tip calculator	50
\.


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: clairetasler
--

COPY public.student (github, first_name, last_name) FROM stdin;
jhacks	Jane	Hacker
sdevelops	Sarah	Developer
\.


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: clairetasler
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (title);


--
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: clairetasler
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (github);


--
-- PostgreSQL database dump complete
--

