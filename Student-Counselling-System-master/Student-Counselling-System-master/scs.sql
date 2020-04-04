--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

-- Started on 2018-11-15 22:52:16

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2949 (class 0 OID 24804)
-- Dependencies: 217
-- Data for Name: apply; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.apply (name, college) FROM stdin;
Yashasvi Kumar	NIT Rourkela
Shreya Raman	International Institute of Information Technology, Hyderabad
Ricky	IIT Jodhpur
Venkatesh	NIT Surathkal
Akhil	Indraprastha Institute of Information Technology Delhi
Student 1	ICT Mumbai
Student 2	Guru Gobind Singh Indraprastha University, New Delhi
\.


--
-- TOC entry 2935 (class 0 OID 16650)
-- Dependencies: 203
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 2937 (class 0 OID 16660)
-- Dependencies: 205
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2933 (class 0 OID 16642)
-- Dependencies: 201
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
\.


--
-- TOC entry 2939 (class 0 OID 16668)
-- Dependencies: 207
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$120000$i7UueGMfZaBY$KHRugUQ/uMamLjlkwO1fg6ht5jIyi+oWRbK/UAIFziQ=	2018-11-01 04:22:38.086254+05:30	t	yashasvi				t	t	2018-11-01 04:22:13.717895+05:30
\.


--
-- TOC entry 2941 (class 0 OID 16678)
-- Dependencies: 209
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 2943 (class 0 OID 16686)
-- Dependencies: 211
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2945 (class 0 OID 16746)
-- Dependencies: 213
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 2931 (class 0 OID 16632)
-- Dependencies: 199
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
\.


--
-- TOC entry 2929 (class 0 OID 16621)
-- Dependencies: 197
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-11-01 04:20:55.752876+05:30
2	auth	0001_initial	2018-11-01 04:20:57.146396+05:30
3	admin	0001_initial	2018-11-01 04:20:57.457144+05:30
4	admin	0002_logentry_remove_auto_add	2018-11-01 04:20:57.481045+05:30
5	admin	0003_logentry_add_action_flag_choices	2018-11-01 04:20:57.492016+05:30
6	contenttypes	0002_remove_content_type_name	2018-11-01 04:20:57.514986+05:30
7	auth	0002_alter_permission_name_max_length	2018-11-01 04:20:57.521938+05:30
8	auth	0003_alter_user_email_max_length	2018-11-01 04:20:57.533905+05:30
9	auth	0004_alter_user_username_opts	2018-11-01 04:20:57.546898+05:30
10	auth	0005_alter_user_last_login_null	2018-11-01 04:20:57.558837+05:30
11	auth	0006_require_contenttypes_0002	2018-11-01 04:20:57.56183+05:30
12	auth	0007_alter_validators_add_error_messages	2018-11-01 04:20:57.574798+05:30
13	auth	0008_alter_user_username_max_length	2018-11-01 04:20:57.622029+05:30
14	auth	0009_alter_user_last_name_max_length	2018-11-01 04:20:57.634993+05:30
15	sessions	0001_initial	2018-11-01 04:20:57.855533+05:30
\.


--
-- TOC entry 2946 (class 0 OID 16774)
-- Dependencies: 214
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- TOC entry 2947 (class 0 OID 16785)
-- Dependencies: 215
-- Data for Name: list_college; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.list_college (college_name, jee_mains, jee_advance) FROM stdin;
IIT Madras	81	150
IIT Bombay	81	145
IIT Delhi	81	145
IIT Kharagpur	81	140
IIT Kanpur	81	138
IIT Roorkee	81	135
IIT Guhawahati	81	130
Anna University	210	0
IIT Hyderabad	81	129
ICT Mumbai	210	0
NIT Tiruchirappalli	200	0
Jadavpur University	200	0
IIT-ISM Dhanbad	81	115
IIT Indore	81	115
NIT Rourkela	190	0
Vellore Institute of Technology	186	0
BITS, Pilani	250	0
IIT BHU	81	114
Thapar Institute of Engineering & Technology	184	0
NIT Surathkal	180	0
IIT Ropar	81	110
IIST Thiruvananthapuram	81	108
IIT Patna	81	110
NIT Warangal	180	0
Birla Institute of Technology,  Jharkhand	170	0
IIT Gandhinagar	81	105
IIT Mandi	81	104
PSG College of Technology,Coimbatore	168	0
IIEST, Shibpur	160	0
VNIT, Nagpur	159	0
Jamia Millia Islamia, New Delhi	150	0
Shanmugha Arts Science Technology & Research Academy, Tamil Nadu	145	0
Amity University, Uttar Pradesh	144	0
Aligarh Muslim University\t	140	0
Sri Sivasubramaniya Nadar College of Engineering, Tamil Nadu	139	0
Sathyabama Institute of Science and Technology, Chennai	139	0
International Institute of Information Technology, Hyderabad	190	0
Manipal Institute of Technology	140	0
Thiagarajar College of Engineering, Madurai	145	0
Delhi Technological University	130	0
Jawaharlal Nehru Technological University, Hyderabad	137	0
NIT Kurukshetra	138	0
National Institute of Industrial Engineering, Mumbai	134	0
College of Engineering, Pune	135	0
SRM Institute of Science and Technology, Chennai	120	0
NIT Durgapur	121	0
Motilal Nehru National Institute of Technology, Allahabad	120	0
Koneru Lakshmaiah Education Foundation University, Andhra Pradesh	115	0
NIT Calicut	140	0
Kalinga Institute of Industrial Technology, Bhubaneswar	105	0
Malaviya National Institute of Technology, Jaipur	103	0
Pondicherry Engineering College	107	0
IIT Jodhpur	81	50
Maulana Azad National Institute of Technology, Bhopal	100	0
International Institute of Information Technology Bangalore	81	60
NIT Silchar	102	0
R. V. College of Engineering, Bengaluru	97	0
Punjab University	95	0
M. S. Ramaiah Institute of Technology, Bengaluru\t	94	0
Sardar Vallabhbhai National Institute of Technology, Gujarat	94	0
Coimbatore Institute of Technology	96	0
Defence Institute of Advanced Technology, Pune	85	0
NIT Hamirpur	86	0
AU College of Engineering (Visakhapatnam)	84	0
Indraprastha Institute of Information Technology Delhi	81	40
B. M. S. College of Engineering, Bengaluru	75	0
Kongu Engineering College, Tamil Nadu	85	0
Dayalbagh Educational Institute, Uttar Pradesh	76	0
Jaypee Institute of Information Technology, Uttar Pradesh	76	0
Sri Venkateswara University, Andhra Pradesh	75	0
Dr. B. R. Ambedkar National Institute of Technology, Punjab	68	0
College of Engineering Trivandrum	65	0
Bannari Amman Institute of Technology, Tamil Nadu	65	0
Vel Tech Rangarajan Dr. Sagunthala R & D Institute of Science and Technology, Chennai	56	0
Siddaganga Institute of Technology, Tumkur	65	0
B. S. Abdur Rahman Institute of Science and Technology, Chennai	65	0
University College of Engineering, Hyderabad	55	0
NIT Raipur\t	50	0
Kumaraguru College of Technology, Coimbatore	54	0
Bharati Vidyapeeth Deemed University College of Engineering, Pune	50	0
Jaypee University of Information Technology	48	0
Sagi Ramakrishnam Raju Engineering College, Andhra Pradesh	46	0
Guru Gobind Singh Indraprastha University, New Delhi	40	0
International Institute of Information Technology, Hyderabad	81	30
Faculty of Technology and Engineering, Vadodara	35	0
Army Institute of Technology, Pune	35	0
BS Abdur Rahman Institute of Science and Technology, Chennai	34	0
Chaitanya Bharathi Institute of Technology, Hyderabad	34	0
Saveetha Engineering College, Sriperumbudur	32	0
CV Raman College of Engineering, Bhubneshwar	30	0
\.


--
-- TOC entry 2948 (class 0 OID 24798)
-- Dependencies: 216
-- Data for Name: prefs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prefs (name, jeemains, jeeadvance, csepref, ecepref, eepref, mepref, itpref, cepref, chepref, anepref, agrpref, btpref) FROM stdin;
Yashasvi Kumar	190	20	5	4	4	2	5	2	0	0	0	0
Shreya Raman	140	30	4	3	3	2	3	4	5	4	0	0
Ricky	170	80	2	3	0	5	4	2	1	5	4	5
Venkatesh	182	23	3	5	5	4	2	1	2	0	0	5
Akhil	210	45	2	0	1	1	1	1	0	1	0	0
Student 1	210	21	4	0	2	0	5	3	0	3	0	3
Student 2	40	0	3	0	5	3	0	0	0	0	0	0
\.


--
-- TOC entry 2967 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 2968 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 2969 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 24, true);


--
-- TOC entry 2970 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 2971 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- TOC entry 2972 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 2973 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 2974 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 6, true);


--
-- TOC entry 2975 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 15, true);


-- Completed on 2018-11-15 22:52:18

--
-- PostgreSQL database dump complete
--

