--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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

--
-- Data for Name: autor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.autor (id, nome) FROM stdin;
1	Machado de Assis
2	Jorge Amado
3	Clarice Lispector
4	Paulo Coelho
5	José Saramago
\.


--
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria (id, nome) FROM stdin;
1	Romance
2	Ficção
3	Biografia
4	Autoajuda
5	Literatura Portuguesa
\.


--
-- Data for Name: livro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.livro (id, titulo, id_categoria, ano_publicacao, isbn) FROM stdin;
1	Dom Casmurro	1	1899	978-85-359-0277-0
2	Gabriela, Cravo e Canela	1	1958	978-85-359-0280-0
3	A Hora da Estrela	1	1977	978-85-359-0281-7
4	O Alquimista	4	1988	978-85-359-0282-4
5	Ensaio sobre a Cegueira	5	1995	978-85-359-0283-1
\.


--
-- Data for Name: exemplar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exemplar (id, id_livro, codigo, status) FROM stdin;
2	1	EX-0002	disponível
5	4	EX-0005	disponível
1	1	EX-0001	emprestado
3	2	EX-0003	emprestado
4	3	EX-0004	emprestado
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id, nome, email, telefone) FROM stdin;
1	João Silva	joao.silva@email.com	11999999999
2	Maria Oliveira	maria.oliveira@email.com	11988888888
3	Carlos Pereira	carlos.pereira@email.com	11977777777
\.


--
-- Data for Name: emprestimo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.emprestimo (id, id_exemplar, id_usuario, data_emprestimo, data_prevista_devolucao, data_devolucao, multa) FROM stdin;
1	1	1	2025-09-01	2025-09-08	2025-09-09	0.00
2	3	2	2025-09-06	2025-09-13	\N	0.00
3	4	3	2025-09-10	2025-09-17	\N	0.00
\.


--
-- Data for Name: livro_autor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.livro_autor (id_livro, id_autor) FROM stdin;
1	1
2	2
3	3
4	4
5	5
\.


--
-- Data for Name: reserva; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reserva (id, id_exemplar, id_usuario, data_reserva, status) FROM stdin;
1	2	3	2025-09-11	ativa
\.


--
-- Name: autor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.autor_id_seq', 5, true);


--
-- Name: categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_id_seq', 5, true);


--
-- Name: emprestimo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.emprestimo_id_seq', 3, true);


--
-- Name: exemplar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.exemplar_id_seq', 5, true);


--
-- Name: livro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.livro_id_seq', 5, true);


--
-- Name: reserva_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reserva_id_seq', 1, true);


--
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_seq', 3, true);


--
-- PostgreSQL database dump complete
--

