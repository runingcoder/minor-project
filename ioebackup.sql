PGDMP         2                z         	   minorproj    14.1    14.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    26985 	   minorproj    DATABASE     m   CREATE DATABASE minorproj WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE minorproj;
                postgres    false            �            1259    27012 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    27011    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    216            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    215            �            1259    27021    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    27020    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    218            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    217            �            1259    27005    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    27004    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    214            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    213            �            1259    27028 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    27037    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    27036    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    222            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    221            �            1259    27027    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    220            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    219            �            1259    27044    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    27043 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    224            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    223            �            1259    27103    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    27102    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    226            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    225            �            1259    26996    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    26995    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    211            �            1259    26987    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    26986    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    210            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    209            �            1259    27132    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    28101    front_answer    TABLE     �   CREATE TABLE public.front_answer (
    id bigint NOT NULL,
    text character varying(200) NOT NULL,
    correct boolean NOT NULL,
    question_id bigint NOT NULL
);
     DROP TABLE public.front_answer;
       public         heap    postgres    false            �            1259    28100    front_answer_id_seq    SEQUENCE     |   CREATE SEQUENCE public.front_answer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.front_answer_id_seq;
       public          postgres    false    233            �           0    0    front_answer_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.front_answer_id_seq OWNED BY public.front_answer.id;
          public          postgres    false    232            �            1259    28121    front_mocktest    TABLE     �   CREATE TABLE public.front_mocktest (
    id bigint NOT NULL,
    text character varying(200) NOT NULL,
    test_number integer NOT NULL
);
 "   DROP TABLE public.front_mocktest;
       public         heap    postgres    false            �            1259    28120    front_mocktest_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.front_mocktest_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.front_mocktest_id_seq;
       public          postgres    false    235            �           0    0    front_mocktest_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.front_mocktest_id_seq OWNED BY public.front_mocktest.id;
          public          postgres    false    234            �            1259    28094    front_question    TABLE     �   CREATE TABLE public.front_question (
    id bigint NOT NULL,
    text character varying(200) NOT NULL,
    quiz_id bigint NOT NULL
);
 "   DROP TABLE public.front_question;
       public         heap    postgres    false            �            1259    28093    front_question_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.front_question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.front_question_id_seq;
       public          postgres    false    231            �           0    0    front_question_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.front_question_id_seq OWNED BY public.front_question.id;
          public          postgres    false    230            �            1259    28087 
   front_quiz    TABLE     $  CREATE TABLE public.front_quiz (
    id bigint NOT NULL,
    name character varying(120) NOT NULL,
    number_of_questions integer NOT NULL,
    "time" integer NOT NULL,
    required_score_to_pass integer NOT NULL,
    difficulty character varying(6) NOT NULL,
    mock_id bigint NOT NULL
);
    DROP TABLE public.front_quiz;
       public         heap    postgres    false            �            1259    28086    front_quiz_id_seq    SEQUENCE     z   CREATE SEQUENCE public.front_quiz_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.front_quiz_id_seq;
       public          postgres    false    229            �           0    0    front_quiz_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.front_quiz_id_seq OWNED BY public.front_quiz.id;
          public          postgres    false    228            �            1259    28141    front_result    TABLE     �   CREATE TABLE public.front_result (
    id bigint NOT NULL,
    score double precision NOT NULL,
    quiz_id bigint NOT NULL,
    user_id integer NOT NULL
);
     DROP TABLE public.front_result;
       public         heap    postgres    false            �            1259    28140    front_result_id_seq    SEQUENCE     |   CREATE SEQUENCE public.front_result_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.front_result_id_seq;
       public          postgres    false    237            �           0    0    front_result_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.front_result_id_seq OWNED BY public.front_result.id;
          public          postgres    false    236            �           2604    27015    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    27024    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    27008    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    27031    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    27040    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    27047    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    27106    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    26999    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    26990    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            �           2604    28104    front_answer id    DEFAULT     r   ALTER TABLE ONLY public.front_answer ALTER COLUMN id SET DEFAULT nextval('public.front_answer_id_seq'::regclass);
 >   ALTER TABLE public.front_answer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    28124    front_mocktest id    DEFAULT     v   ALTER TABLE ONLY public.front_mocktest ALTER COLUMN id SET DEFAULT nextval('public.front_mocktest_id_seq'::regclass);
 @   ALTER TABLE public.front_mocktest ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    28097    front_question id    DEFAULT     v   ALTER TABLE ONLY public.front_question ALTER COLUMN id SET DEFAULT nextval('public.front_question_id_seq'::regclass);
 @   ALTER TABLE public.front_question ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    28090    front_quiz id    DEFAULT     n   ALTER TABLE ONLY public.front_quiz ALTER COLUMN id SET DEFAULT nextval('public.front_quiz_id_seq'::regclass);
 <   ALTER TABLE public.front_quiz ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    28144    front_result id    DEFAULT     r   ALTER TABLE ONLY public.front_result ALTER COLUMN id SET DEFAULT nextval('public.front_result_id_seq'::regclass);
 >   ALTER TABLE public.front_result ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            �          0    27012 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    216   �       �          0    27021    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    218   9�       �          0    27005    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    214   V�       �          0    27028 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    220   �       �          0    27037    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    222   R�       �          0    27044    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    224   o�       �          0    27103    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226   ��       �          0    26996    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    212   FE      �          0    26987    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   �E      �          0    27132    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    227   �G      �          0    28101    front_answer 
   TABLE DATA           F   COPY public.front_answer (id, text, correct, question_id) FROM stdin;
    public          postgres    false    233   -K      �          0    28121    front_mocktest 
   TABLE DATA           ?   COPY public.front_mocktest (id, text, test_number) FROM stdin;
    public          postgres    false    235   f�      �          0    28094    front_question 
   TABLE DATA           ;   COPY public.front_question (id, text, quiz_id) FROM stdin;
    public          postgres    false    231   ��      �          0    28087 
   front_quiz 
   TABLE DATA           x   COPY public.front_quiz (id, name, number_of_questions, "time", required_score_to_pass, difficulty, mock_id) FROM stdin;
    public          postgres    false    229   ��      �          0    28141    front_result 
   TABLE DATA           C   COPY public.front_result (id, score, quiz_id, user_id) FROM stdin;
    public          postgres    false    237   ��      �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    215            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    217            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);
          public          postgres    false    213            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    221            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 5, true);
          public          postgres    false    219            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    223            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 421, true);
          public          postgres    false    225            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);
          public          postgres    false    211            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);
          public          postgres    false    209            �           0    0    front_answer_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.front_answer_id_seq', 1786, true);
          public          postgres    false    232            �           0    0    front_mocktest_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.front_mocktest_id_seq', 10, true);
          public          postgres    false    234            �           0    0    front_question_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.front_question_id_seq', 448, true);
          public          postgres    false    230            �           0    0    front_quiz_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.front_quiz_id_seq', 23, true);
          public          postgres    false    228            �           0    0    front_result_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.front_result_id_seq', 49, true);
          public          postgres    false    236            �           2606    27130    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    216            �           2606    27060 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    218    218            �           2606    27026 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    218            �           2606    27017    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    216            �           2606    27051 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    214    214            �           2606    27010 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    214            �           2606    27042 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    222            �           2606    27075 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    222    222            �           2606    27033    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    220            �           2606    27049 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    224            �           2606    27089 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    224    224            �           2606    27125     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    220            �           2606    27111 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    226            �           2606    27003 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    212    212            �           2606    27001 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    212            �           2606    26994 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210            �           2606    27138 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    227            �           2606    28106    front_answer front_answer_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.front_answer
    ADD CONSTRAINT front_answer_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.front_answer DROP CONSTRAINT front_answer_pkey;
       public            postgres    false    233            �           2606    28126 "   front_mocktest front_mocktest_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.front_mocktest
    ADD CONSTRAINT front_mocktest_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.front_mocktest DROP CONSTRAINT front_mocktest_pkey;
       public            postgres    false    235            �           2606    28099 "   front_question front_question_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.front_question
    ADD CONSTRAINT front_question_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.front_question DROP CONSTRAINT front_question_pkey;
       public            postgres    false    231            �           2606    28092    front_quiz front_quiz_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.front_quiz
    ADD CONSTRAINT front_quiz_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.front_quiz DROP CONSTRAINT front_quiz_pkey;
       public            postgres    false    229            �           2606    28146    front_result front_result_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.front_result
    ADD CONSTRAINT front_result_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.front_result DROP CONSTRAINT front_result_pkey;
       public            postgres    false    237            �           1259    27131    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    216            �           1259    27071 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    218            �           1259    27072 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    218            �           1259    27057 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    214            �           1259    27087 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    222            �           1259    27086 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    222            �           1259    27101 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    224            �           1259    27100 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    224            �           1259    27126     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    220            �           1259    27122 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    226            �           1259    27123 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    226            �           1259    27140 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    227            �           1259    27139 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    227            �           1259    28118 !   front_answer_question_id_1fd12bfa    INDEX     a   CREATE INDEX front_answer_question_id_1fd12bfa ON public.front_answer USING btree (question_id);
 5   DROP INDEX public.front_answer_question_id_1fd12bfa;
       public            postgres    false    233            �           1259    28112    front_question_quiz_id_3b4660f9    INDEX     ]   CREATE INDEX front_question_quiz_id_3b4660f9 ON public.front_question USING btree (quiz_id);
 3   DROP INDEX public.front_question_quiz_id_3b4660f9;
       public            postgres    false    231            �           1259    28133    front_quiz_mock_id_46bc16d3    INDEX     U   CREATE INDEX front_quiz_mock_id_46bc16d3 ON public.front_quiz USING btree (mock_id);
 /   DROP INDEX public.front_quiz_mock_id_46bc16d3;
       public            postgres    false    229            �           1259    28157    front_result_quiz_id_13095e6f    INDEX     Y   CREATE INDEX front_result_quiz_id_13095e6f ON public.front_result USING btree (quiz_id);
 1   DROP INDEX public.front_result_quiz_id_13095e6f;
       public            postgres    false    237            �           1259    28158    front_result_user_id_55c48549    INDEX     Y   CREATE INDEX front_result_user_id_55c48549 ON public.front_result USING btree (user_id);
 1   DROP INDEX public.front_result_user_id_55c48549;
       public            postgres    false    237            �           2606    27066 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    218    214    3258            �           2606    27061 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    218    3263    216            �           2606    27052 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    212    214    3253            �           2606    27081 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    216    222    3263            �           2606    27076 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    3271    220    222            �           2606    27095 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    214    224    3258            �           2606    27090 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    224    220    3271            �           2606    27112 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3253    212    226            �           2606    27117 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    3271    226    220            �           2606    28113 C   front_answer front_answer_question_id_1fd12bfa_fk_front_question_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.front_answer
    ADD CONSTRAINT front_answer_question_id_1fd12bfa_fk_front_question_id FOREIGN KEY (question_id) REFERENCES public.front_question(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.front_answer DROP CONSTRAINT front_answer_question_id_1fd12bfa_fk_front_question_id;
       public          postgres    false    233    3299    231            �           2606    28107 ?   front_question front_question_quiz_id_3b4660f9_fk_front_quiz_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.front_question
    ADD CONSTRAINT front_question_quiz_id_3b4660f9_fk_front_quiz_id FOREIGN KEY (quiz_id) REFERENCES public.front_quiz(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.front_question DROP CONSTRAINT front_question_quiz_id_3b4660f9_fk_front_quiz_id;
       public          postgres    false    229    3297    231            �           2606    28128 ;   front_quiz front_quiz_mock_id_46bc16d3_fk_front_mocktest_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.front_quiz
    ADD CONSTRAINT front_quiz_mock_id_46bc16d3_fk_front_mocktest_id FOREIGN KEY (mock_id) REFERENCES public.front_mocktest(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.front_quiz DROP CONSTRAINT front_quiz_mock_id_46bc16d3_fk_front_mocktest_id;
       public          postgres    false    3305    229    235            �           2606    28147 ;   front_result front_result_quiz_id_13095e6f_fk_front_quiz_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.front_result
    ADD CONSTRAINT front_result_quiz_id_13095e6f_fk_front_quiz_id FOREIGN KEY (quiz_id) REFERENCES public.front_quiz(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.front_result DROP CONSTRAINT front_result_quiz_id_13095e6f_fk_front_quiz_id;
       public          postgres    false    229    3297    237            �           2606    28152 :   front_result front_result_user_id_55c48549_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.front_result
    ADD CONSTRAINT front_result_user_id_55c48549_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.front_result DROP CONSTRAINT front_result_user_id_55c48549_fk_auth_user_id;
       public          postgres    false    3271    237    220            �      x������ � �      �      x������ � �      �   �  x�]��n�0F����L���kL�*�X5ֲ���_�|�m�j�H>r>(�{?��\\�K��e~��l��VSi+BN_�xq��-k��������+,4j����?���4��Ըa;)�@�	v/�A�XQ��(�c����z35	ҷ-wR.����N	���U@��`�n6	�O[6r?�X�Vn���x7ƴ:�y�i��Պ�qs�%�Bǖ)�CH�G����O�Վ5_h�Ul�����ڑ0*[��3ό��3����3DV����/ٓR*m�b.(H1�2.@h1(.0c��ݏ������bak��L�)A*��O�D�3B.	�ō��9�>��֍�M�]�����NނƸCr���w�l�1�/;��P�Z\q0aTe[�p�h#b�@�c�=;�^7$����6*Ќ�,Q*�LA*Q"�̐��7k�?�b!�      �   )  x�}�Ko�@ �3�
����]�zm�R�q�@£��V����?� ����Ҵ����j��oFC[�S����>t)r�rh�4���ssz��=�m�{���7W񐙤�'�з�m^,�q�П���Ҝ-�8�Т@��;� ���(2��PH�����Q�i��%��n��7yڼ� .�
eD\
��m������8vL�>(��鰐^6�01�h��3x���͈L��]T���G�}��y��u芪"+��7�]%���O?#�M<���C��T�L�LAA�x�6�"�Sύ�tF+o�73��q�IV�ȇ���&�6���,^.����e䖋琗��0�?��@e����>�èl�����_��f�2W�k�m�M��:�O���X�t9b��aTH��LYO��A�`��)�km�4bw�t>L ZJ�w:i��#�Q 퍞�n�n�%y����k(� eW?����cч:ˏ�>��]�X�$��Zcc�ؓ]6?�s�x��l�<��`�x�]�t���'�CP�B'��DEv�نw^�+_���a:����J�.���W���      �      x������ � �      �      x������ � �      �      x���rI�&z��ay�+%K)����2��R�L�4�*s�ks��XH!�Ƭ/�f����]_�s�P�Or����XDNdJ]٢���������˰�����4���жt�7����p��;0�D�Z�p��O��+6��WC������i���Zo�uu�vm�iZy?[�"ʟVoh+��앦��i�P�<�����m�L"���kK���f�
>�FK��E2��ZO��?�J؜�_�$���WO����ߠ���%��&C���=�d;C�}̒�I.�'-�I����P{��u[HN��Hƙ�X|�@�$b��cV�*�/�/���_~��tu#4#���5�i���qmΊ�g�ȡ�4�n�T���R��K����XQf��&
�Rı6I���Uy �vVr>�V�eT����]�,G,/ቍ�v��V�N$y���&����O7}/p�j�ۃ�%���O&"<����H8 S��wuЙ낳��p�y_�cS�k�Z�^di|����M]�5��׈5��r-ӷ�5�N�e:�	��A�M����bõ�h`5*Y,WꩻCG��2�"Ke����wO(Y��6n4K�8�.լ�=Q\�|�W�E�7����d�*'�Z�'���I����k��n��m��t'���	�pV��ʙ�b�� �x��|]z���q��:'q����t/a��<��Q�IA�Ù����1�A�X�	�5/ь�ŝ"H���.-ô��v����/F��ײ<{��c᪋f,�VÙ�s��O_�P�Gpϧ�G���(`��U���k0�l�7CP���tr\^d˧�O[4,��z�C��]�0=�j�����4�v�_B=eq$ʹvV�x�k����r��N�p{��ۗ�<�t�M�Ez9����C�����go�h0���r.��T����Tp�[7�i�ֲe-K=������,��� ���L�@\ o����tftr�^.RU�x�~;E� �k�,�����r8�D���Q:�eT�D�WKI��=�b��}H��k��^��-omm�uP�.����MN?��k����Y����ߛ��;�S���=��Ժ{}�����-���[~G���H�m]W�o<�̡m���~m��A�C{�%�E|�}����xN�̴Y:Wt�_�����y&Mw�9��6���K��|-K���D����{�B��~�4����$Z��X�a�?�穈�/�x.E1�P
. h��������v-*G*�,K��L˘H�u�ē8FQ��ҋ�J����b˂3Di/Ǉ�"K��XJZc��Y��zKR�<���G��)Z�($7 U_F;;�QiM>�Oe;�F �1<~����qu/�-ʖ34B�ݰ�ڃ����O��oSO�VG�"��ZJ��s)2��r@�q�8~Z���ۘ�Gztm/tv*���7&@� ���1�$|q�j��Y�#�؄��P��p�Dք��>� !B
��L��i�LY�L�RIrx"G�)6t�(�Â:Jhp��o�go��蛵,X�n�~�X���4*s��A�����
�2y��U�B�M�'�vՓ�v����:��8�'h;(|��!"�c�8��T���&F"�6�冰�vYˣ���[o��"�IQ�c� &K�璍3��l@�G�I[8�:��l#����h�kdy�X�|�X��i���6�;����<q��f�Yp=X�g8^qj�"0��-x2�^\r�� �^���j��[m�.PϬ��ro�G���r>�wF��Qj��ہ�z����)}�J��Ad$~��jn{+�ƽ��)�u4�v^3i�C3�-۶�&~ӥ휃���UT��d"��d�|\��9+D��Th�e^�9~�`�/�o`�����H�"#�u{�f1'%����Ѕ|����t�0æ���]k��`���V�w/a��|���{���ZsTmY��6�]Wlk��Cmy.�r���+��f���|�j]�WlkͲ-t�����m�����Ș�� �6��4�X����B>�M'VK3U��=�-�Kw�"��O�E����iB��C�wښ�.����0غ"�\�kf�e���n����BX}��w�n���&WW_v�0ܺ��/�oq�Z����DW܃v����l_����كǺ���7�m_�C6A�x��4-`�V���Z����4;W�?�K;�*�6����F�e��ʝ+�������ӗ`�ئ��֒�d�3��D�9	@~ U顢4��e|R�j�Ӿ���ZƧ�_WW�!3����N�n3{�}yV���~�re��"�!�ݎP��o�
��	�$۬�E�G�Vc��ue�������E��һ�8��F�lw��2J��*��WlN-�����k��ei�c*t3��s�=�����N ���ݭ��|�F[�w�! �z{�Py����g\_��=Y���&��K��z�h�om��
l#���7�6�ͻ�;#>�O��G�F�����C����3l����'d�G�V�a���N_�p���m��!вdh�8��$g:��U�
���F�2����[�frLÏx�w�!Rro_�L��{�o7�Z�j��"K'������2��ߖ�y�����-[r��^(�
�@cI�M��eK a��
Ť!�R�)7�c=C?�||���;iàG��Q_�wA8a^l�=O��mQ;N_�s��c��-�<_j�8�DD� ��{�k/�%�(�Ӵ��e�~zO�su.0[�],P��x)���ٗ4 �Zm����L���~��,fiV��gh�{�b�K4����Wh�K��ҿv\�Ghy�[[��եX'O���ͭ��_0U�{��?��w��;�c��p�&�Nb�N�D�)M�<��u�D��*�เ����QPlOC�m� ����9����ZM�[���U`K�9������������O@��z��f����$U�mf�%믚?����yy�'�����P��t��)�V9Zu��ã��b�ڦ��H�4�mUm�ע�f3q���R�)*�-��O˽����g��%����&��X;�����pk�/3�D�}:K���Rc
(�I�c���\J��%���K0����w�̅�-�M�	�fBe���5�P�����p��ˌ��6Z꺾O�k立I�p܇A��jNHbǥ���g_!}"�I�q,&\��L��Y��ŀ�e1�!�9�{�`�xw�f��p�7R2��#8kx"��x�c�1h�,ґH�[̖�[�;6_L���䒨0����+���׎x�	���tz��>�� A/M&�2������/���2�ײ��^�~D���ĀfRn�w�B\;���O���('O9W��Rp�������ӊĴ��
x�#�����X��U����ub3�꭮]�.�A`�vcm��8�eF{;�����sǹv6g�t���vs�pa��M�i�"��DN��-�E���n�`h�<�m����$Ziog�3�2{k[�J*.��2&*"���ל],�ƬL�����߆�#ld��1�T�I���$^bDjQ�񔒆P�/�	���=Dy�v�I���z2C_��|�*2�:,��g���GP�����˴�Ƿ,a�=�$�%B�/��)m���\t@��^(��;�J.������8��W
���[�Jo���iɲ�B����m���(<�Ŕ'p����ڝVa
ډ�C|���XH�y�NAw�i����Ĭd��4S�Py�������r�r�c_Q^%����];�-��,U���R۶��~+psZ((�nゆ��\}���K4�1�gZ$�e�(�3V	%���D5mO�e�iD�&���E�;��f���[Ǆ��4�#\��d	"f,<�Rxu�%
duHk�y�$K̋Ԟ�AdZf-�p��&�����Z���L��H{Ak�Z/U/M����}�lc�m��)QZ&E���쾩�Z����m�B����Ί���+TE=y���D�!Fz�q5�Gy�e�8Fv��/2O�}E��L�c2I�����-Fk#AF    ��A�:�,�ưN����Oܲ6���FM���6:�\}ut��ͦ�D�n�YW��,���xu��y�W� g N����Ʉ$�☠�����2�a|rG�;��7i9��1���i7X�:�?T�8�o阵��r"Y��Qw���k�V�?(C���{rL==�y��z�R�f��aO!��Vݓ=x���6��lh�G�$H�-U�ٛ�[[�[p�ߴ�F����V����6¡��ؠ���rk�zn�[n脫�b�߰6������n�do���h�:[�W�-_���ZyC�7�uj�H�)ic@���̻�Nص	ݘkq�mh��M���0����7����m{�e��]֧����`�gh�xX���XV��NQ�P�R��`��j�>�� ��a�{��4����uh��a�.u��d=�Q}�k�(���s�[�/4�7m=#`����lk�궍�އ�gs��Q'�+��C���G#�x�ZT�E����J���&#��|� ��xp*��]��N����[!]�5 �\2���@�0e�k ���ŝ"�hl���!���Y_y��q52�u_�!� ���]wnݙp��`8nn	�;��a)��2/A�_6v���ÈVOw�}v�+�9ٱ��UE�_R������ñ�g�@N��^�扩���@Kw�6��so0})GE�<Ϋ<[A���a�\2ГQQC�G�縱P�$�A��U����j����F0N2�y)�����O���o%�/bQ�������7Hކ�;�5rx�Q�@F�Y�&1�h@K�y1W/_��\z��RNQYhc���JfV(˚Si����Ǳ6����+���ܔ�����G�d�,���щ,T��ꞠG�fI����Soh �;��e��{/X�{��v`��b��ݢ 	m"FU|��I,VH8%{�}u�/�\�Ry���1�ET�`3�� (҂�	
��U���x���Qu�_�_|6�\|+����q�,+���R Q�����R����o55�q{��y3�b���W�Vt=D����
S��~\�.Ҹl�b�`���c}����fh�*g�-n��}�ޛ�h|f��O*y���#����7�*���X�<S%��(G@ 2-VXG��coe3���Eb}�
���7�g����a�����6W���`��]7#ʵ�5��J�L�`y�i���u<f��KΎ��Ψ���=�HE.�������^��P�Kv��YZn2�c�e����&X��M��wIQ�{.@�,eH����E���(��V17c4��|���$@�oZʰ_|T��

��-�	he��]`����c��3Ǹ�b2)ՙ�cP��!�1��;��aͧ�Q�w[���&kez|�a'�	L�J|�4۠������S��5R-�OX���ڞ8N��h�`�/8��){A9c1^"�~�qu2�^ �k}!/0b���Kq���c��a���8�}{pr�34�d�5;���I�e)\�To�"���l����P��s���2�#EUĮ��.cdl��Ψ+��"��M�����L�i����k[�ֻi�'���	������]�
bJ�D���O����E��� N!�ģ:[�6?�┍	8~M�g�e,RHP~�?-0�2�� ;s57��@o_�e�7w��5����A���ݽk�ܓ)��7���\?h0��l+�i��0&�� H�ԗ�U�#2�K�x��QH��¤�`��z��u���m���[�u�@��/�(jA��,T)���8Ō�DD�Y���;iL�IA��^��$��Dc!�cQ暡[�|��b̩����Ѥ�n�'��#�K�b�9��,�4�Ֆ�2�c�W���+dg�J��·�nX��s�eg��2'�d�#������*ި��ᦁ��M��58r�P7m�n�}��/�Q�E��sң1��7���S�F�D�2�yN���zQj��\�k�-�;�U��(�<�ɣ��b��E�Q���PA��'9��)ϋ�[�%o�T,`%FF�稹����d�������75��Q%�<��������27�p���>v��a���e٭:.�q��Xi����:������ dtP�I�:CrL�
eJW��+ҧϫc��:F�V��w2�����
Ɗ\�%sP�\�Z�S�6�2���׿(ԑ��x_fg���_fg�����qv��}k�ecEN����k���GM�u,�ʰ��wB���hhue̮л�+W�\V��)LQ��@��U������ru7�6���\�z��/�m~lr�ܫ׸W�������uΗ��h9f�]���ʡ}���Ţ�j���)[��#�I
�4�eS��s���&"��c�CSQ�i4-�Ϭ��P��-��G�)���如����HE�D�1��N@G����2#�C���|��G�2���t����Q����>3@Nj��R�&����Dr��Q8c�<MDTE���nЂ'�2.��^'�;�h��W��^"�}�U���+=�&�N�6�Qq��Wޢ�6�Î����l}������^��; �5�En�)��\��4�Q)c�h(oM�Z��<� �V�0��j,*s���?���,��5��U����쭩Ι�[�q�ض�X/�~ԤI��c8m�L`~Оj�H畋w�X�h8�f���
�i��)�)Q̟�r�a�p��X<!V�η�s\	Ƙ�#sp���g�)z�7��н��!>`o����po�x3�z7�m���\S7C;t�o��y:pC�b1�p1\YD]ex]��=�&�a�m	��C��6)�ΧȎ��9'�\�t��?ʧ�쓘Ç�B��ZH�&s��b-�YZ�)2Y�Y��z����Ku��?����L@c���D�.�{��L&&�߉�t7ܸ7ꃱMLкoNS���0mk��5M`��YGx��>�ҩ�y�M�ئ��*���`JU����I�:�b�V@W�}���B�6���W�.�Q@�j�M,C�$/�r�!�e.KU���H�*����u��e�*e^*t.��"���%+��3\4} z!�����&�>���p��R�4Tف7��?/a����X�%NS4�`���a �}�,T�Sv�_��v>�V+��]�D�
	�V�Emw��|��)|�Gܯ�9�?P����i/M�����X��4R�?8Id���:��s��p���	jj�1��D7�%?���jL�yMH~0�ϭ:mV�kq*o�Gr�2�[���5%	a�g���oT&�߃�vM��PA(��#��e���� R�gv�&��2)k��q�I9D�Wsb�־�>6�a�-���% ���jʤ�����9�Ζ�שM�!C������!$�ܠ@ӌ<.?u�A�iTiC7]���u�K�t/)X�8*�x|]�T���^��~U6]�]}��Q�V_kF���}'��*?A88������8�����k=��F��S������ηG���T!L!Z���*�hI�Шn�����N\�,TfH����փ��=��8����~̭�E���6��A�҄ǏXH�vh4�qbU8�����)�Wjs�-Nx��3LDFA�F�n"S��R;gs*��,��& �!.Ա�R��=n
d���D`b��E�a/�ʶ��7O?�6����A���w	�f�"�����w��X��F���˚$��T�ԣ�����%�ŀ�Lw5bݔ�-���v�r�M<��"l���aNPDgʰ���o�~0!l����u���1���ϱ9d��=������LZ��_g_�`;4G!��´��6߬���u^�miWi���t5�S5v�#��2�C�(xh�vӈ��hi�C���p[F��&S��B�/I�D�IR}��Q&�j�J.�l�z��;d����[�N��������;�&��~��Y�߻��B�\$��|ӱ���$����׹6N�Q̵<Eew�S.=|�\2C�����ζ�x���T�鼒�)cJ2��W\W�鄃x��%�?���I�ꅄ�o�Cu-����擺�5��:5�    �2�S]U���@Q(���K��Û��!#�E�H�o��v�"��qL���r�f�����H`��@�%e�P��,�[�Ky�fC��Y~z�k��Km�2�Y%7B���h�[Xf�%��i?v��彃�^h��D)`[��Y�=VH~��=7,��R��<���t��a��tS�g�q܍��:2���3I�,��&�>��K��c8�G��1T�[L�0�����=�p�W��U��Ũ��%P|��!{�i�P?ZmA$��4�*�I�4%VU׏A�$�-:t�7u�g�؎�� Q��|��%EP�xs~��mS|��mS�o���"�����m6�b{�~��E���AHm��dXH.`Z�k�օ ����ӌ-���%�2�#�����D������B�9��"���\��U�1Da���`�a��L��c�.�Š�� ��5��bF�d��Q�~t�v��-�r���^����jU�	}��Ǌ��������O�o�G,}�������o1����c*�"\&+g(
��i���U�շY�-BVe�=��F��f�Gc��аu�0\�M�3�l�/���f�{��D�~X�5��#���k���t,w�Zm�R?�iג10Yx%z,�{	�S+��0D5��7�CH��++Yxn�JC���m�?��n?�l ��֌`�JW;�_�ޱ��;�}� ӫEL�2�4� ��5���ܨ�-��r�R�Up�`(XQ�A�1ϵ�'2fL�W�I�E��l�4+:U��ᆴ�1��c�qu�4�m�kp"K�ʹ�0U����m�ߥ�d1C�Gl��G]�ǭy�cj��vv���M����#���J�C�e4���M��dl��>���!)��1�+c�I$}
2���n�g�Qb�Q�a����p*�)�8��\Fʎ8#>5<�ȵ�D�Y��b���~�)���*�k��FXy�>QU����o I+g��Ev����=b��$3�(K:�(|~���E��툷�rRf�3�1T$�P�>rl�m ��O�~�����xasj8D$G*.dN8���j�� �y�.8�b���o�E\C��4٢�I8J�E���oȐ6�[��y��e�BX�X��2oBQ8	��eh?�ԡ�Bo2��H� y����!LF��M>����a͎�evv�N�evv̎i���w��#���u��hm�.Hm���މ$c��aR2�4��/A����_�?��S��d�
�x&rɔK��W^H�|���S�����lN�+����)�n���F���nAa���ZY����b�aB�^kr�6N�6np��Ut��SQ&��zf�U���/����U��j��l��<�6-�����g�C��Ӱ�և�o���S�]�����˩��R;�%K��x�=aƫfD`N��&��6U�ʇ�:5Vf��:Q�Qu��8;��B�{3hU>�{5hUU��ՠ������S��t�}�uY`�1��b���jth.͠�	�^4v�I���ٿǿgn�N�E:���&_�\�&�m�U)��Xʹ��HsI�c���SU�����:��h=���O�$�c������`����Z��CԀk��#I��gM\�eȪ�t<cNJ�����DbP����\�"Kc�p*`��!ˤ�"��p�y�2-�ʂ�7�C�2�)ec�-�1n!u���;D�p���;����Io�8zZn�x@L����6b��Rd�R�=���NL=U�s[In�2�w���fʰ�d�<�<E�����CN �U��K�5S잲���0�e^�9L�t����0���m-r����ͷ��fִǵ�P�zp�_�8��@���D}xp#�>e�<A��4���r�)���jbodg�e�B�l���N�������Wu1+v��E3J��0����s$lq԰�fbH^�ɯ~���N�!�S;�9`N� C���\�7���6 ~�&q�Lk�Q�|T�Y�.��I:���+,��T�1]B칺���69֗��>9�����?��q6/����0:���u�w\�=z��k.�<I����[~��JZH3ĸD���3n�^���,nޫ7ZR�ZU��7�IU���XUj������	��`�e�w���P`j-ِv �?�!��ia�^������H �tQ��mhw������B`�d���i��u��w}�r�ݳ̞��1�MR�7!�K�<K�ut'�͎�­��Q:�]���t[��Xa���y:�-�E�%��"M4QE�J>Ex#��q!�T��m���l�4S�N�w��@�e
k���X,��V����ʪ6��cDoh���^��
9$��ԣ��"E���"�K�n����U�MD"�����ZFh��@�$s��2(�~���NG�u6��f=�!�oH[�j��-Q������6h:��`�6�_}������s4������;��<I/A�S#"V�ct�1�z�TxŤ��n�۽���c.�$�J(�Y�����E^��gW��x
Z��ۏց�Æu�؁�D�>������o�E%�D��et��e?*�T�R�w�7����ǈ�ꓺ��K\}�6�1�T��㛭RՔ%ź�ڈe�9h˂�����
U�0ȇ�s�"��R���*1�$��6a���i�4FKÔ뀃���a���e�Ŷ�:7y�=B!5����oU���\t
���t=��y������̨�~pScm�N�qۏ~s|���L�7��?��Nax0Y�dt���!�N}H����E,A�P"�g�amH���	?峒jK�\����?k'�ծ8��b��Qt�'z݋2/����M�Y�hpƦ��c<�����W�h=8.\�3+8^�'u"�q�}e<{�*'�8�����g��?nP�(��9]����&��K?6�	������-����B�$��| ��mZQ������)">�rw�H?(ۗ������>(����_���'`S��[�/���ۖ�Gǲ��	|�Q,��M��|$���W��1n���'�C)�Q!���='�V�-�LEX�&�Dҵ�������b�0��v>%�bէ���.?� ;��QwE��C��?��orLwer8<��|Y8�'��87�ɻ^�/�p-?l�w�e$�PF��*Jiq��e�ї�R�vjW�l$�T#(W,�)�5����OIż�e���f� ���t�8����پ�y���x�F�����_����/�h
�g�)�wOA}­Ő���h�դ[�Hf[<ʋY�n��V�=\Ȝ�*���V����|�qR'���}�fҶ|A��{B1Q�{�ߚ��p5]W�/�7:I�\s�շ�gWQ��eRܟa{����4���_�˶�]��Zs�]�0��j���(O�X��I��߯��f5��<cc��j�DY�pjl��I��(���1̷
��g���6N��Ɓ>��1O_}'�ɲw8[7�M����^?t�5����k�-o`"�.��Lp��(�^
e��tɌ�\������SI�"5R�F�� Zh��	��YF���6(��yZJa�z�R�t8bGu�Ф���L�J�X��~˗�皻:=pv�/�g�����驏�~�/����Vڭ>�ױ���6���eE4�H��2L����B�� &5+K�0���uc��7+���!�=�2X�Pep���+���6f���l���G<d4Y��^3�o5��;N�~�5�Tn��a��I.�	��MU2�ie�|���%��؝E���C����./��Ƚ��OalEz!cLd�UT筋:�dU�e�a��{�9��2�BD��D3@�,�t� 6��/�~ԩk�@�+t�bYV8x��`�qz!_ u3�P$,Q��%6�lΉtS��^�c��3�]��C����Ǆ�#�8&Du�d�j��׏�t1R�l�jsTlcp���g��Ezɲ1���L��ԣ�����'�2�W�,A��Kd��te#m�$%�����FÒ��=��[�N&\�om�,����7��L�}�I��S���c    ~�/~c~c��ܥ�dg��t����t�s�.�pR.�픀���^��$��v'���*W�g�zm��SuH\a\��-y�Ծ�:����G���pu�p�6��61�MԘ�cP���O4*�.��>��&�|�f&!kQ�#�,B��_�t�*ٿiC���s�����6���"jգQg�U��8�Bw}���#�i�������
� �F�-�C�9O�Jf�C"��ˡ�o3v!
��_���WQ��u:n��������&��z�����jS�k���ފ�@"u��FCl��EY/�~�k-��B�q��6��(�ѐ�]m�T��X��s�V&����XiL�h�ᐪk�`9BsQ�u��5��joK�X�����sG����!<�p����,zX�>����vvJ��q�#D�pݱ\�l�?��#`+/g�ܔUv��S��L^���TC�l�?荖Ye塆�DRU@oܦ2�i��Y����ۨ2�����ftF��pPŹs����J�홺�2�ݫ����#��뇍���t�I�)�j���(8�v@j�����-`.Մ���NA�Si��ic(m���(7ڋSU��+�y��ɩ�����i1��A����H�3�Ew��~�}�n�
׋�����Z $U	�k#�moe�j$�K4�b9zm�AI�I,]�!������X���A;S��)|�^��d����
0E��`\�S��f�?�Wv,뵠2wh#A^�G���֯���e�?HIW�x�����������N|����:��ʮ�$-3"�R̾}k�$�y��T�po�vN-����{>h�4cU�w/��it�}��h6����r>�﷚�����_���h<�V�vP�e�X�l��(�B�!���`�W/j;��E�eԙ�H�ĩ�_Ua�sY��R��%���?Պ4~k��"GN�ӻ�Tp�S��x� ;�>bs���F(����Gu'���|Cx�qc%��hN!��$<�����w���:��!�V���̺�����aZC��=�S�&���������6�X��eA��H2���?}��*���H�
]�\脺oYaX+��;8����ٲw�Y[Ͽ�?o�u�D�a����_�/�����ߖ��u�Q��599�� N>��HԡUȄ'���dC�Ȭ*Fؘԃ&���:�`�`u�T�����rj�c����pG�n`�/z��];��v��ȫ&M"��D��"f�̱�x�LojBQ)�%���g9����ʭ���R��!�(ͫ�B$��)�mc�u�̚��V��f�x�p���#l��ᗕm=���2j����&I˾Lώ�1�iz��ӟ��l��� T=0@h��}�2M�<�5�i0�=�u��H�>�P�j���dtK�s�`���y���ϛ�Uv�h��"�*/��
�Q;}|c�1���剑�ȑl\�Zm�4
d`�[m�rځ��7I�%,ͪ��1���П�kN�}$�B�ܨ�U�l��'�֔\��.��d]r�S�ƃ����l�f�t�̧u�fQצ%ՠ��^y��B��o��YN��Z����q�.HIf+���:Te_g_���sT�1j��R��7�'?|�.�nk�_?^�6h���Ă�v`�yH���
h�Ը_pʸXJ����oW��,Lm�1��[���������\�h�e�E���9Z*�k�%u%@援Fں�sx-,�yD����e]�	wT� �(Y[�U���.�Nl��ٝ�����2��;����!؛�B}q���t+4��Ƶ��H3,�0�i�4�'����6*�Z"3����H�ɲ��`V'<G�`7̰��/����5HC�z*d�j�Enr$u鏫����*���?�9Ɏqx�C~w����4������N�;�iw��}5�y�L�(��y����0"�i+S�Ǆ�W��?"!���Hȁ�b�i^���1מ���RSv'��S�g�������S&ψ:{M��UY�ّ��� � M=�r%*�2�z�m�@wB�l
/��e/Q�d<Um�"K�ym�e9y@e��TF�>�Н�
P���Œ�	4�
׆z���v?�Vv�X􋨇�i+�/��x�l,�چm���<'"�bN��]������
M?�*x2�����|�q4� ��jT5�VE�uY���A����*f�4\�je�*ޒ-�+	�ѥj~溊Iʎjt��`G���M�;�W�H�x��?1�^K81\SwC���L��ڮ��D{�a����?������~�̥W��u#Xm2)I$����W�1C�ҤZ��M�$^��jHU�ͦ!��`�hX2l=�gl+����\�`�_�`Uf��`cc*t} �]v��.ϴ|��<�L�dA	J�1��N��䣚�b�ȋ٩���d�o�G{���<��U�?��[
�#�20�ux
��s#̖���%#(�o|��'��K�X�{
����ӽ6#/`�	b��Q�]ӝ����M���O�ɦԼ/�J�[�8���� ��*�/3�2��cI��#+4움���}�1@@���\.g ÌL�9.��ɚXg/��"�A�y�ć��U! �e����
�0��8˚|���/�Y��x]iL��w$CrM��ɱ�[2���b?�N7Խб:��d�MҢ���\F�ن���y�V%%��.P�O*h(18��S��+���s��>�ûL�sm�gY50�6�#G7�ݪ**>2��z�����X���Aʶ{,c�xȇ�&���bd�q���s��n
Wf�,@l�ڣy�hȳ��4�S�����ET��|�i6�$�ï�j�f,Ø�:�9��ܱ:/�M#�r�O�%|o\M�J'�퍣�t���i$�~nq �����&�x��ie�Z4�K4׮iXM^�k��=r���u�`��ǒV �cgi�6��~*�f������B+��M �PMt��E��'}��V����H�Y�袾9�?4�f�	���;uR�.ng��R4� Jh�z8�Yߝ�W'r���X�]�rh6��� �3���fdN�(�1�5knK���=GwB�6��p��$C�;wt�m�����'&˶ާiP��$ŧ����Un.%�h�|�cR�b�ꔅ�CǷ�,��x�d����fL���ī2twW�X���a��xaK�ڃ��e�s'yf�����h�e�b]E"**O�fv�Os�2c�ͣ�E�ڂ��J��� ��r)fR
E��?�P�H����������c5�������o����rJ��L��WG%��e�� �ܱ��b���a��`7&C��%�	~�DDR\ȕ!���];��	I�~�s�_XĘ�I�q��I<zy����NJ��2���R�� [�RP�*��"Ude��C�^d�>|���_-U���=�>h�h��8̪w��*��eNV���Y��=c-��G~A���������2=�\`-o�о��D�G��t��$h~l�������Q)���tX��M��^�����1얱��S�N�������{3�^t[[���b]g9�T�������Ɵ�`�i��K��¤�tv�H�PG�I~��dj��r*�Wm5])�jv����^A�j���ܧ���ij��9�����_㸯V����QMK7�0l��>f�7L=�}�I3�L�����x�*�}�>۱7t��r���c��*�G���|!
��aO��q�@�l���dDS�>͚iܱ���L*�4�W�`^�LFBI��;���];��\�;f��c1�s���;��2�T�����&�(3r*G��w,��x��X�à�?�q1�x@�a��ݔ,��f;;��NwC�\h��y�h^w`��[�'	��*��0A�H:�┍oU��B$XU�	��V����C����\�b��V�����M{��oX^{����)�`Q�h�	�������zB�5�w�մr�g���= �d!�C��)Z&ׇC>l�C�ٹP�w�����*s� ������)���K��:�,�}$3{Z4��M�������\F(s�    �N�3�=��'�����DJ�F ���H8��ɿ&���<�~S���È�I˯+�� ���fe��{<+y����@dR��I9�,� ����P�'%�:)�y��4���� z�଄�D2�)M�\�fb$
%'Ֆ�;�(��T��;>�����6�g�|ų,���b�bW��R釞�F���it�^kp�ι�sɒ��|,آ�]��C�z7A�z�������o~�0��v2!��N�N���Z�NX�R��L@�b<�����w>���Ɔ����zd�XF���2��eEUz.���^X}4�c�lI�m/�����Å����<���E�2?�<����_���K�q��횔<�ebq�h�&e�M\���(�:��P�׍��j��V���+5t�c5{c=�gw�Cu~E�5�2�����!d;��)Ը�=g�.��U �(q��K��<��vGK	]T�q:�zq��5��Jɭw�e�l��v�;����FN��v��K~�6/`���"����.i�DX\��a�tI*+��+s��NҬu�a�冲��8Ȣ���:4e����Y��Ke^��0�M��dσ����옝������\��>��p6f��۩Hmy��d����-��[��q
*
���@���F�?E�M��Vc�Q%���@�#���|�s�y�
avt��W�~��~�� ��C����?�ʦX���z̓�qd�)qY\eS��UՔ��r��xS?��X��e0���I��;±��<6��چ@�:��\O�v,�
L�o���%�͝��~h�����}0�i�����o��M�4ڲ!ֶ��mE�-�6d�C�G���y!9�'����7=ƞR�|S��%ꈳ99��w�O����U�[�LO����6�K.?Q�[|���:cU�O����F��{Đ�{�#4����!�	��_ec�*��nG�u��2���g��{@CŨױȱ��44��2ph��nٶ�@�ծ��e�](2��+h��±,-y������*�+]�0N/U�+�au]6�HO�<ex���b�1��O3e����X�%��B�op�)�7V?f�v�V�q=�I!��Nm0v�DL�q���>c���t��e{�����U�.�.� ;��,�r^��+#;ܛd�T]�
6TS`���2U	��
���!���~- ġ4F74�F���.E��OMT�Z�8R��X.e?�T�����u�����c�֡�@1�c��!����?'�z�MsR/εwh���n��m��`������_���I5�������KU��k���#�~�y����Q�*���<|ƥ��uv���۶�z}g[>d���&�k\R)�&�M�1�)���`�����P^����l����Q�"#eut��֪l�֚o���ڎ�R����FH��"�֚�%���|B���J��L�<|��;�Ƿgp;�^��U���.�9iǄ�,�~D�j�sӪ��ZsMzhb}���~�|�P�M	�"*2�,�S��e�X��c�y�\��S�lӖs7���?��\�٥ҍ[��$<�J�e1�"�U�c��9�(�[�J��D�c�6�<	DUn�8��;���i/ۻ�w)�,4���p�8qӀfa�/�9��Q�\�vsX�-y�N&+��X	����L������ӡ�kg�f?6�$�!�yw��afd5`��Nƞ�O��c	S�^	*�T�G�lw^��o`Z:��op]ӂa(�8{��v6���-|�C�t�_�k�m����~q��ϱ��q����F�nY}�Ǽ�l����� �=r�Q ���*���T�_b�4ƨ�Q�F�O�lK���\]Tb��@�g��Uz�����U�����ۃ�Iw���/���Js�m�4UtFA��J�Z܊���\χ]����c�F2�9�|Y�\�yS۝�b4H���t78�TIߟ�O�)#�h�is��@�������Up�	X���eQ��^I�Qo7�|	���B.�\�@p��%�����B��e��n� ;ȥ��͋���-e�qZ����&�~|$'�Y�ϭ�0�!:��0	&���QUΛ"d�s"I�w�GEY�)�Uv:Ft�]�Z�A0tBP�B������<אV"���񠙧�]�1�l�(n�����wtf�qއc:��o8KS�	��[�p��mv�S���%�-k-� D�>��(���i"��%5�"�W��ʢ��S��]�Ӎ�iYr&��U��>ۤ���-A�dٹ"�c��?s���C'�-�1�j}�M0c
q�K��RK��M��G{I�+�9��#�U�$��M���Q�o����/-�	�^��>w�94}��}������T��Y���f��ѫ�6g,')H�d};;���U^9	;{�(Z+
��>}g��FXn��ձu�0;��w�*-�q�#�*�fU�d��>�9K�	�*�5	����2N���*'�����1/�_@q�b$�BD�. sVN7Ƭ�k��IkhzZn�*p��f���M��N1�������yH�1S�n?�����*��g���9��(c��\��������a�/,m���
�����X����揖q�LJ���*X�&~�;{R���ڏ�� "P$�+(9��9	/��mb��=W�1�uvp���t����EN��c��*�%YU�.$:�I�FhE�@ h�U#�]��NvF���1�-Ǫ�%�^�%(�q��RU�F	��4�.�c��Z�ꊲ���v�����M�vh^F��/��}}�����KG���CN��e�f���Wɲ>@WV�Fi"i�
�	GjН��i"�!_�L���f���3�Tl]ī��������� �-.wk򶿾#\G�6�����؅ق�j�v��v%�I�-҂�(���:���ݒŒn���G8�8��
�0z�ޗ)r+�L&���,#k�b��>��� 9��Ϩ�BI~�
rZ��ͦ<)T�.;�F#/M��Y,�g�/�OQUH:b	V�=F�Բ*o���*����"цZ~�D�����HV-۴�~.E,F��eM�~��nS�����'1n���;K[�E�=�D'�������Qұ�X/�q��s��� e�Y�^ͩq��|�����|�i��g˚��E��oؾ�h�3x��k	��U�x�< c�P�U��\���IJ�U"�5��Y���_s��k��N@kھ؜5��74B�C�j"cCw�����LZ{nk5��H����W��kc�V1P�bT�#&Q���pP���$�Go_�x�M�{La�z����gj� �W�̇l(g
�'Ճ�� ���=4���5���7x������͎���8]R�D���NL�I�ڽwt����D�HU�љ�/���s�.ԕ�T��b�{�D{4zL�ӣ��u�7�[&�V���K����rg��%&~p�n�=t�l��v�ּ�^���h�Ӄ␯��sL·7��_���.�b��'i�@���{XC��[�m�����m#I!r�@g���[�fgѣ~��$�^םCGZ��CѼ�딚�x8ic:�������9g;�l��m�A8��:A�ڸ�P'��F#LE��3*y�9�#��ӌ��n�0��_O�h�Rq)��
b�-�B����:h���`;J���\�UӪ"�n} gD\��N���;�Z����y�F�(������p>#Ӭ��w}k[��9��{�6��{�ki)��.���������Cg���T��'���}�MF�P&x^�Iċe
E�G,��C^x��0�u�(��2���h�*�M��H.[�ՈG�ֆ�(�Ӭ�e���P�
A��2S�g���[�s<�0&Y�~.1�"�D�a5V$�ĕ���qڑi���0��<,��?��6Ʋ��a�g[C��]����3VZ���9&f��bs�H���B�q���`���B�uP����O�����ė���OgQ�}��UY���`+O(V^?.�W����y�3ta���Y��6��	��7��*�:KN��3e���Q����ڿ�8�k?����i��?Fx���1��Ρ�Iǫ�z�S��$��n    ���9�Fp�m�Y�Bp�KE�jAzsĲtg�|��VU�Ieкѝ�h�y���t˰٩*��v��2U޵[Ɲ�︍ܾG����k١��&�E"�i^��'Z3��rT�� �qf���c��f��/Q�T(�)��I�_�W?P0S﬌���R(�(Gz:UGݭt3�	��#�㴊b�&��$ӆ�aGǯ�2�M�+F��b�m1���^���?Vy5)F�Q ��T�E7�3����0�JNcU�I7��<����;���Å�c�e�l�4V�ʜ�]�|��`"
z�X&%�P�Z3�ǪnYGN���i^ ��+U��7��e����$�+Z�7���m�P���	[̊����eK�
F[s��J�X"��^��wl̾'�13�w� l-��mH��<C0@�TԾ8�Α�d����ɨ�w�JΔ�� �M˗	������~ ���O�e��C&j�� wͽb�*�p°Ub�Aǋ+(�%�W^��X�fg��X��(��+��-�k[Qz��<"�,Y�`��3��X,��\��5�]8tM=��6�/+�xVL������14=pZ��Ͽ8{P5�wD9��������a��`���H�����i�<��I�,�Q	mv��#7��7���S7�EP{i-�+Zu7�=�R� �do/
k���G��zI��n�;�`ٶ�������)i@�k����G$��Hg#��#�Wa�J��@��|�R���I���'bV����Xݝ����
�X�y�֯�H�3PN.p�0,�+�ť�����Ƃ��wH�����d9&���&+�yåtl��Nb���}��z��6��v����+�l�J�;_$�Mt�	�Q:%ƕ�s�ԲxM�=5��]Q�]������M�4�Er���S��&p�b�;�w��}�{}O�c!מᛖ�^%��=�t'5P�3��Lβ9����v[��wo��R#����f�4F��m2�v��E�Z,��Bw����"N�aL�26��l��00����ӊ.�a"U,"�0½�m��/�	ii=�h�	�;xO�����J�
�0�T��%�?��LF��ŧ����4O.��;q��hMJ�Q&��=��������H����p7�Hbb���ݏ�#�TQ��_x�T�!�z�UI�Ĩ�����0V���.D��1�	F���ĥ�/)�~A�'���.���%�'��$�-4^Q���c"T�f�����������-��uMo��1!�Ϙ�L��&�*�w������3rz���;K��c[o'Y���8�(c����m=>��q!�[_�����Jp,�\�hW�?8eq$����̉�r�4��]�깈Ya��
�E5fj���i�}�Tlr�&�����!�F��uC_�a�f�pUb7�N�Ѧ��z���z�34\��kwK��6ı��nr�DK+]�]�g%�˼Ȥ'��������\e�]��⛅�Q�(J����|������
n�+2�rv�_'�-�����|�1B�o�2��l��d�o*��N�}�U1?�a�v��W�O��sV~ZuaBy�"�O�Ӎ*��fso�9���v���[��U�4�'�FY7�}��l�H�6�Xj1�*�.fi�N3��� ;���"�/��{�F�uӅ�f&��̄	Tu�lʕ��a���˦!U��s��e\ZQ��_-��ߧqT/�L�'̸���X�7��\��p�@*����p�N�O�e�.�	�����2�lL�I1�����1C=9��G�9��KSB�[sW{C���0mS/v\⯪���������qϖ98I�U�e@ɻ��S�nteT�{��M�z�Z�u�m�+t= �q�~Q��r-(�\��ڷ�/D��s͠����A��Ch����M:'Y:FH%�Q����8djl
p�s�*gB)(�8FT�Q��ܭ��/l��C�3[m�ښ:?cy}v�I̴D����'�DQ��	�JW4o�Yo6�P���r�*RH5�-���i�'��;��u�6��|�mm͡��#�숇�#�ގ0Ljrl�n�-w�}z��Q��i��ZuZ�$͔,��=t�������0�su��W���,�:�^�KP��l8R�U���&R�WT^���i���&�V�,+Hz2����l��N�d��ߋd�e�ms��&�\L�2*�M=}�=zΓ_0M�5��D�?�:�M�����a��"O�ξM�N���i' vL�79�:w�0 ?X_)������]�0:k�Kr�N��Q&�suE���O甒]y���Y�-�9+
��-�y�qq��0�d�`�h��tU�������rb<���_��?3%��8���m�KU\�B�Gy/`�.����W�94]�7�6��
dvԧ�\���� e�ުG�oOeE�Aף�O�~0V�)vQ��K����� U��y)�2{�Rh�2�cTy�z_�)�8*�v����~����m�غa9�ۺ�B�L�T��j#�����l�֒I�%,"#{�4���z�ƺv��9�k�1�����t��Cg<��|�L��� <��8}��7�k�h��ܦ�m��N�ӏi�?��5�������w)�Y�UU.[���x��Ҿ�~�6���7H�6OI,�1��@�Ug��]�'
��D��V,�@�V4�#�w���C֞���F#����}/a��vh�a��H�������w5���f����0ۃ"ǯ�a����Z����mQ�M@o�d���e�缌�up�"ů��v���T�����:�5߶o���Ê�e=�Hl�?_03T�&b$%�~8̂-V):_���M2T�mDQr:��M-�E/Z�!ʸ���h��$�ՙ:�5>d2��⻊��Û�����<�������lU"�Û��n����{|M{h��m�vKQfۤj�`R�MD�|�%��ӬMX��4f<����P피�;[�eH��B^U�L��0��-s�RR0U1�
g�aǪ�{ua�;�nۡ�4�c�3x���x�W����S.�4Dr��j,���;lZ�})���9�R��UF��=ˋ�
f�r]s�:����e7D���_��[s�ʆŞPr���� ��I���B=�:`�g��p�l)�o+�`'��H'�5ǯ��A��~k	��(���R�ٻ�l;���Ql.)�;;{�X;IX<�t?f�*O��NO�Sx���UI!;�|��O�,f�Ķ��^k�^whZ�c��Z��i���b_D^E��Ked���i��F;}��Y8W�����NU��VU�c��v�u\��5�+V�}7�[vJ;�a�-��ni��H� W{��Y��r�*��"�,�_�+P�׹ښL�����K���� �r<�)ea��m��c���6�-9c�Ԉ���	>I/�IY���LUb�*�+� �,,�Sŷ�I�5�a�Z�H��%D�ӆ]�Ye�1x��9����;�u*�*z��@�<��X�����^��<߈��,ȓS4�Վ����jA���b��9���#1�`�탭WʚO�ڮ�^��sЧW��/
�;""L�JƊ<�W�9���Ş]/��V������`�%�W�� ��^ N�(���(��;�چ�Z�4+l���2NþzwA0l������\��7�R���ڵ\h۴���j�����������Xd�B�Z$�U #Y3�؉�I��$�[d�(�sm^�T����"A��*Rg�x�5U&����5T]�7�v�8�?��0cZD%h��7�볏�'��������a��=�P�\��LrG��݉��=�$�A���)2���k��6����yR�ѐ�`-�����������]�Fq`��̈́�:��ϑ�o\w��/Wc���n߿��de�J��׳�M���K�}��9��M=�/�^#�;�kN�C3��>�湖cZM���@�Xj/��������x"˿'H��y�_�7%�^}ʬ����(ͫ�=�E�|�dq�B��FdleU����V/�p}Q;���V��6��-q{�}v�q�"�FC�\"��$��Ky�Ԕ3�    �*0��a�9���
�f�C�Қ��x1KYq!K�bC��q���t��5�݅��8'�V���U���Xn[���o&��3���g�S� �;�D���\[��I8�~I2b���O�کD�H]��MB-�I�I���������(�1϶ ՛�\�<��;��fGx�Ot�e���?Ғ%X= e_x�놭��|�La9cR�tX��,��qT�]`�&I��v̓i1Ï�Da^��m��ȶ�@�D���X����8!�����X�^�p�&�^���ʇ�g���5�"N0��`Q���Eu-6:2�(Y�W�lmSiw�A�	�|w
���7@8`)�`����Rs�K�&[�2ڠ2'�hʉ�3��n
�	#��A�f���g;��xS��f�#�d#�CBl���e�S��wm@�h�e���i��������E@A�w�(6�?�ˊg����1��/̒�����^��VF�~8Yz�}47<��E�O>����w�[ZJt�@�9�T~����#\`�n������V��7�Z&��넍~���\o:ZQ
K��.�w�pu#���;�ڽw��ߎ���c}c�VUf�
<ߌ��h�9�7�Z�����{�X��Km���	���K��:t�ţ҂�4_ļ����@a��_�����������ϥ��U��4�	SVS�V��K5Gɍ�M�FSV��̾a�6�f ������ڃS���t�fci�U�g���N��l��XT��Vc0)]j�S�u$���@rH
Ğ@��[Dw0%�չل�^�}�$�A��� �[�U���;&�̜���EPه^��ą�9ϑ��LO,Rm�mVfE�e�y[b�;^���w��K�)���:�����s���,�e����r��n����94B=0�lJ�;x%���,9��JY5�:1��c֎��b����y�&�rBMa�ص�o�h����"ܭVV-��)}���{W��6re�鯀�h��>�ZR�ˣ�VH�3�I $� a,U�~�o�̳����/�{k$��%�jb:��TE�L�r�sa�Y�.2]���N��������"]ajv����Q(����$�gIq�5Ջ�W�e['3�?.�{�{��0����UQ>�x=^5cO�ib��՜��qg��`���1�S�ɾ���H#U�m�/S�'[��1x	������q^���is΃����<�6���aR��`تg�ޑ��ެ9�k���ʕP�����n�<��K/;
��b�s�vΨ(���jV�.�q���嫾�y=������*-~!�Mq�嶧�~��\TT/�`�1_DyI�D;Xz��<�#/�q�Ǵ�;��:��~w��$��EZ&2�rT�Y�O���%���.�DP�ʇ/�z�.�n��D����8�˲T�5,�s�9��:-�SN�(�䕭�E%��?V�,��� �+P�l�9Ŏ�=`��p�n�4pbTt�nL\����i %��]�㈟i�uS�=]�&c�s��PSlo���}_M֭h��{�!4�YP����(9&�S%��`�Q��g���3��4�O��N��SΒ�1	�!�����kw~Uǜ���Oo޽Ee"~)�IPɻ���i���Ku���9� k�u��)��l�� �"SK�79�څ7��I�G�L�KNs��W��_�����˭��Da%�QBg1��O9��4���>Di�����X(�E�p�	mL�K�\�U����\űg�D�Ac���c����-��#*���B^3lϮ�r�;*#a�p.#���3X���l���O��۲L�O5tx��j���a� F(2��?�C��[�e4~��=��
&U���	c���<��w�]���h�ٚ�^bTX�g��dR1�n��U*�T9
S	��򊌗p*�56���ō�"nHXh��ě�ɮ���z�����{���=���,0�(]ʬ��I�g�A�;��p���c��	�U
Y�I�/�;!�e����}O\��zz��Z���g�a�w������у���(��O�[dd�GDa�Q�ۯ0�<�+#�,�=��-B��;v&[�\�U���N�rk_r(d����BY󤦒��۰�뼇��R$u�7�$�.'~#DS�l(�
����F���8u�bL1A��)n�(��B=�E����D�a�HaM3������m���hC�7{��b0�����H�>7\�1t�߄�	��9�6��={�|4Ũ{�؇`s�Q}��͎���2��h)���䩺�Z���-H}�����[% ��UW�+����@�X�F�.��}��hF���D����n�N�=ah[��6RP�^1z��׎�Xn#W�a��{Qa�ZX��ep�!!l&��4�m�J�ϗ�@;?�9����� ��ۧ��K8~Ks�`�inN4��FW���Z+̊5�H/�<��XƩ�5|�k:����3���ʭ*2E�H4i�M�K	��9��u��H$Rmz�	�S���eňksn_�Z'��%�&ؚߟ���C��xtr��!L�u�],f�V�M\��@��I����W�]�T)�A=,�<��̻5�t�̎��D'����{���]�1<:q�Vi��f`����3e�G�.;TBt���l�`��G�ߡ�z_/�B%��T�wy��EIe������c��x>р_��̣���sh4 *G�����}fM�35uC����q���2H��>C��@z;�֘#�q,��n�H�<N��'��P0���t(cl����ѹ�n��͙]���d)�B�����;�vZ��a�+�X���-�F �/��S��.�a�ƚxN��i�`�w��;{���LX���` v�Dt�k���:/Wֽ�G�(R�6
5L�D�	G�~CI�Ni5��c �lC!���؋4%S-�G�`�q;5�o��Ƶ]�_�S�����<ެ�`^�ŉ���0��n��yU����UV([V1� M&�Q����Ȗ�Kw��;|c�2����{D/�D�?����n�<mN��Q������YJC�_�"�o�W�|
vXa�KV���1t��u`'ޑ�iMܻ���TKs|�W|�K�!��#PH�^�No�ݗ�0�1�ne��ۡ���)>���o��]Iw;ח��G�:m��o��I��u.PL�/-�r�ۮ�I��C�F��%�^PX��Hj�q{!�T��H�d���_���R�6"(OY��MX�t2�~�B!�p-!6���T���U�ZlE̲lW�k��榧j��X����ͪ�0�����ɖ��E��0�*1�E�wr�~�ZP���[ 9<���5Xs�)CW3|V�Y��,��WgD+��Xܽ �����<�����d���K����^w�np�E8"�I���Y�@ci��*�j��y�f����<����� c�(�6�i�:W��'m����UM�T*�K��V�*�%Aw�������P��1o�n�uԛ�U�����MlWs[?Wz�$i�@���Q)]�<�+P���J�Q�+�k�*a<V@TN��R�y��yr ��7�8��p���E�]	��$��c�����[ �0ɖ9�a�#A�f��qCĒ?�̙�7��oyʃ{�B����4���8�m:���UU3I�h��[�ο��s�x�kN��3N`�`!��;:SbG��n �Ƴ|�����5�JQ��9���5�AY��
I(,�̱�Y�Z1KL!�������Jl����4�꫖�x�c莪��l����פqY?�#�n�#�67<�p|�g�l<�K�	�����0t&5M� -��!Q�J�X��b"M�$��ċ�*6�H=!�%��K��7��>!���o�{�Ü�7Xl���{����f���Fo�:�ϑc;���(E�!CN�,��h}"9#�����G|)�Yζ�]G�<�#�PC�*����خ���"���E�����^J.�(�]>㈹m�5[�u�g��5:�8�h�sTR�6����fW�‌7+P���TM}���*1��8Y��>BNR~K���    �����C���q������:�]v�@��Pm��!���KZU\�1VJ���K�s�J"��=eYW�˹���|���ǄJ���l��Ie�
@��v�o�ؙm�����t����8�Q�ZѴ����e_��L�F���o�-�G�uZ�q%=.�G^��}�pZG��8.d˖����}�R��%�L���5CS���@�Q���rٺ�!F�z��=��2�����/i���
��u{�d������v?�@Pܮ۱ܶ纆,�Zϛ���2��e�����Z9O<��QHx���=�EIj�-����P� ����}O��i���}��o��G9Re�`�h4�͏~�x�3���w�
/(���S��>g�����Y��gjcT�p]M�l:���jy�Y�J&@²�I�hG�^y���zT�U��b�Ӏe�ږ��zh�����`������8��l�+)c���x����^���n��A��ڎ	������A�8ۆ�uɣG�|���%t��cj}n�n8��k�^�$5��2߯0|^(�����Re��2Ӱ��9����E���/�D4���/��-��Q�+��h��B�(_�n�<��ynO3�՜������v�;h�W��?dG(P�Sx ��\Fv��תr+⒭��-���)_TP��/��Z�r
Pbz���<�'yĂ���s,�	]��9�W�0-�e\9�N�K�/�?d��`N�L�auN���.�����%��B���A8�j���h�e�>W�S��P����P���}˳G�Ěk�)	|3%��w��P*)eJ�;0	.��,�G�����	)�
K�d��Ge�����%eY�{��4��\R����{W�t#9x�φ]N����.`�d�l�'~�6r��sG���G���3���
��F�N�1������z�#�:ٵ�1y�"�Sh�8�����/r�^�i,?eɐ˒�3~�0�VA�d,T��	e7Zi�����e�����}w�/�`a,�u���b�i7��yX?�b�%�����@�2�,E�Dy!Uȑ�c!{�(�W����o��{0>u�	ܱѭ˒3˰���4�c/�=ϛ�K�[n��͉(���5���&��+��Yd}8��}�	�W�ax�1���zz�oqX��U�m��$��\9å�Ci�U0�o��X�S�{#��~��	T�M1�v��=C���x��X]�Ұ5����dd���J����ԁ-��~�VUYߓ뮻p���E�b6/� �F�H�l�<���XD���v �.B�B�5��ѳԮH{�"���t��xF-�h���MQ����5dՒO��r��&`hT��)���aHi�S�}nJFGd��� ��8Q�;g����g���Q���3�C�6�,,��Cݜ]�]�s��`��D�P>�z�<*��o�@����B_L|O��@�@�)��~�����g�u�A%����;ā�N��a���y�ƪ}rkQ�����w��r�x.K�tO��?,���dk���k��}�|~-���h����G �nڟQ��Ώ�݋D��������u�(0�:��B3:����Ox�,B��������)���i}.��� ��\�_��E>��,QY��=B52��WC����;�n��!gv�^-1��I�F6��7߻�݇{��D_1�F�"4б���E��>ҊO�(�ӫό��}���J;/�?K���2��s�qj�m�㦰�lM5��rg?���×׉� {r����mP���@��v��� ��j/�	s��hj��8�j�t��rt����;��MU�cd������c?7̊`I�͵W�ּdQ!�TQ-ʜ���WX3�OA��vi�C�F+x�\�d��2�5�E��"�+�_��g4�P������0e�\J�;�q<��S�A_K�gߋ<i�Xɯ�@o%��ER#UK���Ѿ25�����U]�9^��cne�Tơf����v����5iP�uY���ٝ\�o0խ���B �f|�!��ᯰ ������
*@/gE�d���v{�X{�k��D���Ն��G�a���ۦֹtuX7�Jc�t�V|�V��s��`x�`66�+0 -�Z7���(�����
ʅ��߽p��_8~��\y�݌��a�ڞ�����Sc���j��2	��34M��N���
���w���iz��'����.f�P=��r>/5
����(H�i/6]�?0|Ǝ�v�H`�-�P]���n�r�q�LpdA���`�,�!��q�Q� �.�s�A�l��L��H��2��#��>b7���m��C��k��$W@�JX�c�y�z�+ SQ9��j�ڑ��B�� ���V��"*��̻���U�&׮��riȈ&;��{"b5:�uA��k=�pm�
����lh
�����ؤ�k~����Jsu��@t��e��R�ĝ"x��(�*�-�9���kQɱ�R[��&���հ�I2�z�DY�}F���N���i�/���i&-=��6��N� �f#�vSN�l��l��u�۔����D�,E��s ��X�#��驱��ז��c.����K�!��΂nP��+MT�̘?U���#�0�%湂�k����D��̨���+����o6�}�`��p-��7[]��>M�R���YT�"FQWS��ɉ>L�����i�p����`3���Q��b��%�[)Ǡ���v]�$��[�j�i����e�n$˥0��3b�^v��E��[!�®�[T�Z+`9VVI��i}��΁�2O@~�@�S�p�����jv^��٢om���n�IXޝk�j:��鷺p��Š����ab	9�׸�W4'R$=��F0��竵�\���@ɥL�=�;q�&5+�S�6�GP1ny��١�r�<���4�Lcz�.c`E;6)`��.d �eh��j�)azx��R�e�ꮶ��)G~����K4ߖ1K���>�E]��Xf%��i��_���8#i�yv�r�����L���'
S��t%�{Mɧ�T��\O/�B�<D�~��tH��r����� ����y�u���6�K�QsY�0���NP�)��Ǡ�Ul�*_7~Z`�X$�fE�Ml��\�]&I	��2U�5��f7dVÎB9vA7�Q�-�۽NBCn$�� 1U���6 �Rv����!���@Q�pc�6t���5 ��
?nv_DK!7r6�0Uq:���{o�l�E�iF�Ȁ���'D�#�G^��l��r
�v��7I@�0��{��t�m�N@H���P��1ei��A�9���s���N�2�g�^��.�הj<!L��J��?N�O���'B|el�ϑf8	�{�_�=�p;��0����ޢh��o���XG�
4�Սu��!Y�f��<�n�̳b��`�dǃ� �`�?�i7�@Y�A�{Sz@��?����}�ut�Kp1��xK��m� ������,�oS�`�@uq��P�ro,Z�)B�UY�h4akGV���m!E���l^:��K�#*m�����-�0&��'BH�=����u�_n+��������E�?�|������E��d���Σɿ�Jx�y23l��?��r�\
�~hj���:,#+�l�\���Ԣ���(7�?T���F�/
���(��=�;Ұ��|S����5��U��p)z���4p�K� ����af�AE��ɽ��Bd�����g9[.9�w�H�v)�0��/}^�=�~T��s �i�.��γ��{�a�l�ɐ�u����櫆��^�#hԑ}8��P*�D�\^��D����2���t� ��T��+$r/������FVD�}z(7Q.d^�3� j����mr�N��i����}@���􆝁<�Q)Q����
��ѵ��_� 6��W�^%J�c�z'����Y�N�����d�'*s�<$�e�缌���8|��6U�����ݨ��K8�d�(s09�'�� �=������~�0#����+`R�P6}8	�x2��iQ$p �  X���y0Ar�s�t��k�C٦+Quݰ�K��f��<�d��6@X5�>�S�,��q9� �5OS�4�C$�F��ɚ�$zA��}��0�=��BlMsn������E�̺��.[�r�Pj����%��Z'�r��iH���J*�ʹĈ�3J��Z�}�� �x���s;�i�ދ���כ5ai��Uަ��NTwkL	�,���bV�,�(�?�s��_y}K�dv��y�0ӭ�Q�#���(r��^<�KG�1���}.y�1}k,s׽?T��\wḶ5��?Ms�F*v4�ͳz�A�@E��8a�k"(o:ɘL�G骬�|/&�����L܅T:�Dd��y�ؔ�K`��%`z�n�N��hZm_�>8 @�lD�.���H�E� �|�iQC�)�U?��:J�tK$,��}H܈��PqX�_�$�i�zY3���;�P�x�*�S-���ޠ�A��Wg5S~�^�*�Y���1�D:��z�@�aL�ג�*���,���C�dyt��g}��]��H�{�$�e�Jks|sM� kJ8�w���0�=7�)���ML�v|��îW�d���v�4tcJ"x!�UF���@��|X8#�����!]{HtMB1~��Ժ0�x��Y��$�d�5�ɫMw�3��[���X7���XJG����G���vҩ`��T��E�s2��Ȱ��*AH8��ЈE��l5�y�h��!o�y-���>�"9s�P�ռޝ�;G�L^ �3�d',v���E�Ja��ǲfL�k�y5�Y ���J�KK �_*����t%�k�<��W�᧪9gT���̰�h�J�OBU�\wT[w��YǪ:qw����ak2L��� ں�
�9���ǉ����|�� �����^�ӐP��8�^</H�7Y�Ȍh�FO=ai�]rl��<�6�%��	Û#1���].�0�?�E����y��&4!:u���%�����T�'��@P%H�͞z�\��'q7o�i�mx�ޥ�X��O?��HP���N��7?z}ֲi6KWUM. V9�����cCg%F����7�H��GZ巻\��$V����XK�S�Ѧ�e7���+�*��/�߷X6�����5���{TX?�/"�C�#����!_��Px�|)1Ѧ����)���f�
�ĥ��嫾o�~W.aa]�ND_�X䲽V���|Dƀ��&ނc���%O������NxLX'����rqW����)��}{a�XF�ؖ��ʮ�iZ�
Z�ŭ,��( *�͕��+KE��C��fU&r4�d|qǢx#�R�΢�<�_���,A�ْ��.Ǳ���纡j`���W�rZZآJZRRer�S�W¢D��WU�r��38�����ͷ�Z�a���Rpl��&�~�A�2����-?HJ�z�!x�P�^�-�/��!4��G#`�Z�j:�ۇ#,wv�ԕ�(@V��<���vLM	dkŠB�#8P��Wxdu��]/i7�(���7x�
�%+�
ּm*k���j�e[��˒Q�66�'�l��6�A�pNԶ��N��`
NL��90�`;��q0�2憥Z������>Gy�$&��j)�"�D�DE�bR����qA�+p��a�H5K�NG�~�� *��t�ħ����_����7��M[      �   ~   x�M�K�0�~�A�?waSS"��#TNO���=vԝ��4���ɄuŮ�Y�W�)b=�AR���P�[�S��ٔY�;R��������V{�C]�G�v���n�(��f5�s�k��l@T      �     x������0D��+�J��`�-+YV�d,f�M��ɀaw�&.��ꢡ8�.�.�{1�w>y��q~d����5�Z�V�����x����sQ�$�Y#
{i}�\�$C%g�\U�4�F���D׆g�D0�r�Ǡ��ƕ"V
)�=':sm�͜߃?S�4�2��_�f:1�m�.Ls�aU���$M�b�a�5Lk?M�����j��L3m��Z뛧��@z��[��x�
}�J�j�	���-��C����c�W}bl	 sJ����c��13巏� ,�������6�bS�ã.�M���v�@D��~��D��C'X���0�-�Wh@9W���v�a�_#qU�L*3	��S\��1|�7]��
�m��]�����W�W�MZ����'K������.��ڳ'G��@Ԓ�\�#.[��2��|&4z��k(i�R��7a%�egP��z� kQ�N�R��s�W�$�06i��UCu�%/ْ�
��i� (ǅ 0��D�B.��y: �"�r      �   (  x���َ�Z��������'�¤��Y��x��s�#�T��R��z��Y�ðX�;"�S�����c C��v.�Fg�&2?�A'��X�.1�d�E��-�7���8�9@?�(H�ь�T �d^x�Ӥ+�0kr鵾m{����y*HM2��mk�9�[cLӺq��Q.s�Ƿ0x,����`�gx~�f��[��Q�\�
�:�6�7Q�Av��kqd�#�Ti�ތ'7$^m�p@z��LIj(M�����nK��Ŝi���_6eq7��'i���3�_L��q��Ꜯ%.���~��,�s��G�>_���%GIZ�	�d�ϐD���T�4�	?A4%N�8$0�fm��b�;��ؑ��T��\*����n9q���~�b��Y��w9���i���dLd@g!J�7S�G����/�<y
m���{����fZ��2Ŝ�^������kspz��[r������(��5(^�.�C�p�k�b"���r�WbĉV���k h��y��z���/:|uO�.[+M*3�\Mzg-�3��'7�t�t�j)�5���}s�k�bk�ȿ��s�ʶf�-{�V�q���E����y����2d��nܥ��G	�ȿTd(�x@^�V_��� �� �(����H'��+�B������X{GWamǖz�rgTW��ik*�s7Z�������qh�x�Kҷ��"�`3�~��mP̏oe^�e��7*V�Cz��V�ӕK$�r�|��X����L[,�k��*	P���4 �������?�D�'      �      x��}ɒI����>B�" �L�����؁*l�D�&9"^���K&'�L(��6^x����_��T͗�L��P�{�f���b���eV�Ϊ���N�W����g�ˢZ7�*+'�7O�j�]�
u�B'uC����M��UW7 �{�Ye�lU�ش�!of\��Uۗ�����˳=~��܅��|�����ky�ԥR=�.�6�%�/�}�U���ЗmQW ���4��2�._�����G�Bh��vWT[�\��\�#�i�s6M�;M�i�m��{96E���+���'���m�e���𞛐a��NY_;k���;�*(������A oa�������}=�%���I�˽m�C}��y�=�3ev������
���x}�So�����<ˁn�S��\���M�/֬����k��\���;ݮ��;�:���t�խ�R%5���r�㝀1��/�c��m��mVm�
p�z�E���y���M˧��ˬ,�}�ee��s��Y��i�����H}��H����P�k^��s�?��[��&wt(����'uQ��o��v�*����z�)Wd>d����7�U�4x�xCM�owN��ܛֈ���'ɖ�_�ĸ|�O#��.�����
�'�����h'�g�JKyu.��o��_��F�(���_m14�,YY�W'p����H>�^�O<G�˿f[f,�fU4+(�Cn�v�/t)e��5�D=�4����b���*�P ��{�T���u�xW���˜��Ӌ����e�Aj8m���05U��G`C Z���0>�r,����{
�E�"���ާ�R 1������E>qD�a�cs�(6]}�5k�0('f#���S���Ist0��{�bm��5����j�/���ۢy� 8��pe���j^pd�ժn�Y�ʉB�/�Ő�fA���p�������R�`��Pt�q<�^��1�!AO��?���s�/�j�e.
���~e!��
	)��bmK����'��{I�Ħ���K(~-l�5���2?ڢg^�%$�sѩ|�{�����^ro̓�x���S�g-���0�l+����i#?��?S� ?���.�ˌЧ���V喔=����l�w��a�80o�ex-��jE4���2��(�q.��86���";��s%�7A!�[s^-{:h�O�E��S 艾Z�.�j@<�rC,CdA<M/<�7��M�]բ��{����9��/~�{(�U~�j�Ɛ:�|h����~�-���9�yv��.��"Ɲ/YSAw<i�n��<͚���x��]uS�ȼ}�N� 
�y����(%�ͫ�C!��S[�A�X6���K�`7��n)�P�P;uS�Y�-:����X�����͇<��N8D�KV΁�|�˧�Q�Xb��[i�&Wj�D)B��(�j�H�5/�f?�=hք�M���� �v�Z[�;2�K�L�����<&��������s[
�ʮd����Џ�r|RY����4� fE����è���e��a��[�?��8/a
'��M漄�5Bxs4�|���i����AV�Uta��'���~�'?`����Rt��b(y4�:��|�.�H�g���vV���	�������#G@�=�>P��wJ�J�CSo`Ѫ�K(�����v�bh�Le��Wy��y��S�P�0�K�'�Ti�
�E�J��B�qt���0zp��ns�o`�?����t�(D��v�ޑ"UG����b�X�xl�yZf�!1/˺�G	�Y!G?� �`�B�Qj�%;iP�O���o��k�]��TC���lzH�z��秫�����"z̉��O}���,?�%4o�s�E&�I�ȼ���c��z9t�K<k[ȳH����˩y�_0XG(�ȨVuY9�[��h�j�s_��
��6J���aV��A�ͻ���Pg�8Z#-��C�>)�e�<ɶxp�y�*Y�����Jl^4���P
y�7��0 ���&��Cͬ����$<�^k{ :7��3He���E ���i��K �𯫫B�8�vj�06���~�Vg��m�Uۛ/A�D��5>P;`)�g�bbn ���74���J\	Ȯc�������:�=��q�����*�gbJä�jk��=���_���J��C��aŶ����ys�Q���u÷#\��n�hX���;��렮�o�etO�hG�#�I\���{At~@%шD������
hp:�7���ї��e�~��B|uK��I뻭��@ϑ�����~h�7��Ɨ>��Tv>��#��|��EvP�^�H��%�1w!]�X��Дx�FZ'��6ۈ�%P*�E�����P�~Q;e]m�A���k[f0��R�Vй����][�M�F�/Z'����y��M�����|��o����%���;��}�n��ߜr��O��[�G���Q$JZ�����l�=�(zU��<�KLP����{����z�C/�����/�)��y߮2������"��}����a�g�]!T�!G3����� �D$}5S(�cfK�$���`	<o�˶�z�0�`R��z
�s��>d�*${���x�oчE��7?�[§��,rKq�o�X�h�B|�k��̢`[`H5�Χ�LU^
�w�r����۞���#X�R<#)���q�5,�&�c8�	���}s(ǲ;_R���I2�"�?�t��0�*zR]1 �y�@�.¸���S%�\J����j ��,zD-��K�F����Y�(�C�7_r�����/x�l�3]����0��f�ԍhT�D�y����,6�@`vy1@	l5�E	��a��B0!�֕�D�]~΄�ɔ&�f���(���p�.�P��ô<����16�����09����<�����徑�r���� �KGW�����31�=l�}7ZNf�O��]r ì�Ķ�ѿaK��x)x�ڂ#�
��]Q��¬{
�'��R<ux�$�e�>�$��$e��_���e�W�2A,e߶9��-�S�6x��v	`A_O �fެz�� 2�PRn�tN���L�
��+��RMl���۪��Ζv�JfW#P]xW����sq�֍�I\���'�J}�J��� )̫�z��x�c`������h�S��Qj'�.04x2p:/���r�V���M^�l�Ӽ�y��sZ,@ӿ��,)��yh��ƺ�#pO]��І^��ߥ�zݵ�RG� ��朦��^����wj��m֎� �!��<�����a�v%���|�9�!��K�u���vְ���ve-k	]��+h~x�k؇�&��y�>�>+9M�����v}�Oj�LM(��B'1�w�~8)����"�FKG���3��i���i3�򙄀׺�]���o@}ؠv����8�k�<���Z�-{�'t���r����ٲ(uCP��l]�ce'�� ��35���	�?]�?=����i�3���]j��Fq���e����:��iY�k|�S<��E�1h�B���p���������`��\��M�V�� ��r\Z����z6
D4]��{7/'�g��$	�T󗬓��T�|U,E�	�����J���ZF��p!�R��w�"�n%L���v��%��Gt�}}��:E����Cg߿&�]�[���T���'��]��Y�CZ�cm��-B����'.t2*�'�݈7��7E��Х�fW�A%�S#+�$�7t~����;��I�ߠ�o�gߗдj9}�잒Ǿ D����y�W[��R��������Ċ�cn}��OM>��{>��R�A�7;���'R�$:*T4��=�$� � �{�t@R[)�@B�֢sʍ��BY��
������tYq$���J)��r�C<�c��W��A}�	�Q<��y�0H�"�Ch;~|YC�f�K�n}�@�����h�B{�<.�0:G.V	�@7�j�8��w`�p�/~G0f���b�p�X�    O�����'ԍ�&�}��0����1��?�{B�-s��_E�Q�-'�V3�uQt����eo4���Sp��PV���Mu����� �#⒤,�	 3���'euh�k��L0�n��e&���S���0�2� ��%�=(kX&\'�(�y|8䬵�u�9ͣ%Yp=�k�|��eY;�+|��2�<���?�M,��0l%D1F1����ļo�?G .OS_WC��Y_�D8���g�|C�.F��+=�@��Ul��@�X2�䇾ߗ���t��850p�4����+��7h��E����8G�j�eQۉ�#􃬫�sBv���h���d4fh��p+��r�,)����tk�^��w4�-�U��#�{GK�*=e�/�b���)���LZH��!�Ih�.g!$Τ�^�ڹx������bI�4?��XQ'a���X�A3�~�@f^�/L��`��p�\�͌p��?O�'��� +�	�����y&>O�C��{�!B?�h���#ø�5�6�%4-GԸv�A�m��v����dZQq]�� �k(R�aag �8��,�����4�5�B�����
��]�PCQf�n E���%?�i� �0�Y!�����,��Z�����J��S.����xR�C�ˤ��f�9>���$ ����Z� ��ꌾt[�l8d"	a��J>f�L_;�0�mPK�Ϫ쵘Pvg��F���Z�Z��� ����۾hƲk��M��e���ep�B���:������λ��y�-V��b��x��ۺz�^g��<W��lD�$l-���}輿,3�{l��bo������[�BϲKH��P,C��._6Y{�_���FD��ь�@��vy]���\�b�,�g�Z�Z�jV���`�<.�Lb�\���g�`w����Y �i���g��Jw�������YB� }S�'�Pd�eWYco�Hl��Êy5����]rݴ��ГF@٫����!V@h�oy���ˌʤ��a��I5�+⫽��C� ��҆ܰ����c�]��z��-r�_�����1���kיH�=,���h;��1�G��Ǽ�]�G�ҕ��Ν�/˅Y��G@���r�sm>�Frj�эv7��7|V�a]0t��WH�\��y�����O�� (��m_#�k>n�G���?+��^ZH
c������ʝ�}�����U��,DAI5:%Y����zXzZS�6tc7Y!�me':���6�S�S]?\�M�����b�X71o�K��L!w� O�$at��R�XeB��.FԵ�=�����'f�)~����@�f��?��!�3H5��Z����g�+x��E0���.m0��4Jf!�Ӷ/���쬇H	(]���׳�b�mu��cM�ŏtWs,�f��@��[㡳;���������˝�\��e��˝�>A"H�Fu���Pﳱ����xCYbl{���*�ȸ�}�j*�����~B��!m	�'�<e_�_5�����ԕ6y ?�lRW�j��+c�l��벌~�K�,�_0��/�U=@26j6��cg�py�ٯ(�li/B��c���5ئ%h�G׆�pA�+��V"j�5<
���(m���c�{E="x4�q=��m�k:\V�O ���Ύ#�����7�@��du�t�ЗY"��ߨ���hh�!��0\.��
�L^�@	�z5�5ARNl��jY���OY��A��\ ��M�-��KFA%6#��R�
�eY�*2�l]V̛�����ڎ�D�̳��m��5FUUâ~�^�p��c�Pt��&�KNsj�%�B��#ߒD��a�H��c��Xm����S�$��'Q�#9}�ɵEu)�T��{]?�a��l(B�OC����$�8�K���u�W��#��n��U9�t���e��ߩ�w�oW���g^e�C�+4Z7@��n�uS7kE7e���Rm�S�ܭ ���5�/��J��14�A^��FF��!7����{��(�_=�M,8G&��`�;�/7�QH5�K
�B#���b����|8B��j2��K��RL8�vȺ]�3U�ʴJ9���˭|�0B�hV�Kyc@Oؠ~-��.�*K�Ů��/{i#��ڡ����Xf# �C�zB�P�-LP��_e��A���/��Aݛ_������a
�7�q��#ܰw�󤇶ώ��E��o���[�o�����a�J����3����Lsާ/�"��U����97��m�f��-v-u���`U(�N��rM�N��[h����Z���( �7��.��V�!p0���YB854�̕�y�K��@<o���Z��,A�+���]����l�,Z[;�{o���vVeݻ�Wg��#�q�w�0�Gv�8��5�:���]��z"�,4)��W�]r�vψ�2�jh'00��f��y�m�R���U�@zR#nׯ(��c��ߑ<�כ�_�`"s���mǀ�z�ς~�/�a�
$?!�1�NW8����w2x���[�w~�h�E��F��z@=��LK��zY獄Ќ��sa���ZAY�j����}�]���r�b6x�t��AS����1	�]e��,1���.P׬�ͦƌ`��̿5�J`������.6�1�rbƆ7�Q�r1���Q2����o5���*~qt�&wV���#Kb"\MJs�Ё�E6�@&7�Z�y�[8��#c�֔Q�'@�)�9x��Jfy~(�G����{��*�zD�p���L �v$tx&I0��:b��J�I�=GL&){���<����p���w�ԈQ
M�;хR���;,����7�y�W�����f�hR��ޛ��/���m�m���I�iQ�L0+�&A��%����B��o�,�N�t�U��{/�R^�����,��d��>�n���_�῿u���x���Go�pV���ȜV����')�(%fq����,�Z�G�>��y�S���  ��|�Wc��<�t�mu�����C7�֞��XOx�51w��(��2ǹb��h�}4��K+���epu��r���^['�vs�@���¿��u�/����������=n����.�������u��֍�B�aT������5�`���ْk�?��q���zV������RgK���N 7�������v�P46�m!@;&�l`q� ^"��e�O?-)�L���u���Y��S��h6�Fl6�Fêu(8�]�KQ�J_�X*�J�)���嗔�4OIZ����3���+W��8�cX���'0<g*�Ɠn;"0�:[��6r:[���n L1bbƠ�n�g�*�o�`����6����+�����k5\A@�e[����ZJ�1xim-�xh}m�7e	�5�grIךVd^���P�x���!0<ߟ��[$�#����p�p���_e�� ��a�\�KYC���٢c�q��Dv��;��0T�1��������
΃SRgIɌ�ւ�,�2Eg�%��c�5�7 1g%_+A�h%-�ZI�T�l��.7s���@gg$�v�����8��ʌ��w�CĎ�>�����G1׈L�
б��,�ț��|��@h��~gW���,���ΒsO�2_��;[sG3��-nA[��b�]�M/S,Nv�2���
��Ȱ��p�e�V���Bg%{���&F|R�tR洘 � .#J�e�_�$%��W��{�ץ�Fg���e/gl��F��o���l����U��&���(�Z�J���/��d��){���x�pD����뺳]�7�R:KI����B����HQvM���۲��{WSч'�����;�9۟U�Qur .�(�"��� |�=��qdɪ��ۭ�*��6w��6e�L{l!BѢ��VYe�.�E6���b#��SW���S�L.�)!?����0+����n�&|Kg/=������͋��,v���9�z<k��-���V��С�Ɏ�F#%Z���D�s�\�ܱAgG�]�؆F�d�ab�:H�_+/�v�T����IG6�    �0ĠA�D79:�ᚕʯ�5�LSH�^;�	g�(�d�	 ��;"�x�F_�1=5.F&����j�,�2	�=��O���<�Ԃo�ŵІ�[�i���|>�D��O�D	H)F)i,#��;�x�\���sכ.�� �E(�'�{!$9��.9����/�'������5ʻ�h��G�-����8p@�O�]��wR�^t�����d�/jFL8+�m�}p�:��}���n,��ޣ�&��o�)#��4x�O���?�`*Gǒo��7R��`�^�T� ���rd||�����J��^�0;/$�Y��lƑ����x�!|a�|^ăj�� ��`����Ƕw���l򊱼YY|�0����N"e�2��t�����n����s;"!�=�u�l$ 7�1�Vg����!�ȡ8䒝�<l��ޣ#�nꃘsr��nct�/�-���B���)쁏o/�_����(o(�Nq�|�i�Sԃ�� �,��������ʂ����@�:�̕��@	r�w�X���`(�Rp�߹�"����o�7�'ރ�(|*M8o�ޟqt��?���h# ��ղ��C�5u��`R���.��"Eg����Y��f{�E�t*�&⬂�Ȳgb����O)��5;����V6:ϞJ�l�y�]��O�5��:�&مP����h�L�F�h��Ctg[���x>r��ߝ5�&��������y�Q�PH͟�י3c�+��3�vD\��=`Lm+n�Q�7:�q��-�vT��\��\1���OP�˔�fr-�\�g�B�S��n�R�Wx�3wΕ1���с�<�ϲ{�}�ޯi��m�+5�`�TE|�ĕrh��D�L:b3(� �)��:����'Q�.s&��ȹ�jzϹ*�>͎��+��Ă0���Q"���cLD���?�Sڒ/B#�(���\�qͼD������QZ�0�J@(��Ph������:G���� �Oa'�t,�HVHH�5�j�CB;�u�m'6u�a$��^@Q�nߺ]qm��L��|�iOv]$��?����?\�����x�%R�&�[�Ȳ�ڧ��t�
�gW��N���e��14��{�,�"%to�%&�4:RJgsу����l�������<��f?L9��MgB,XAC�0Ykȝ%�C�<��hd+�����ن� � l�R���I�B	śM����X��̲q�[�I�]l�<���K�\:���J��t܇���*�9�-���y�p��]=E��^"�0n?��g���en���\G�c�dr�1���*�U�e�S���N�姼;���Zښ�as>���_��X�a��Js���[G�� � a���T�c�p.��D{�� ջ������=f���s�n�	��F�]�D�t��c�~�ಬ兒"
���ue�"���	��u�6V�|��2�L����?�`��_�C:/'[��������R`8s��Q�Ѧ��Cs�/�̜R0��b��[�r<�������"�%@�/WuQNxj����)e?�x��im�Δ9�`$��^����gz�=�r4�Q�Oa�˼�l�������ly�L9$��F7��f5҃�E����uW�&�}�hA�sg
u]|�+��:�b�!k2+�Z�Lk��=���#�8��5���Y�)�w��؊+�N�(B����H�ԡ�9�<�����'S��"W�tBۋ(`�v��1g���IN&g�+�����/�±�/�h\�"� �T��4��e���8�a�ŧ@8M�*��pV�t ̲�F�0a�gBdg<k�Q(CjN�n*,�R�� ص�J[��q����gE�|t��٦@`vyvu�,�����Sa+Q��|Z��H��������G�"��S�R��ܼ�p�79�d�v}��f���)�X3搃�:��4��%RK	����|ZK��/sgW7���a~;���m�[([����kf���N����+.x�Ι��m�Q�H�ș#�5-䙈��o���;s�S`�b�z1��eQ�Xk�?RJ�g�V31N�C�7��ӎ!Q^̱r��ƣ(*�U��p��;��9��C��`7']�ܜuQ8�=��Me4�w�%�
Ϣzb��*+��˪��n�☣7���v5�VKm����d����H�.���&f%k	�:���rljʩ;M}kc��J&O�2?�.�V͵���nh�w���[�؛�T�lz0�	���AE���"�m+H	���X�X�w��(%����p�O��(W�����&�ZR^w�֔���g,*i��4Q���6�0�%��7yk��@n�
5��|��cSˌj=�8�K86����k9�qu�����魚�|�V=�<M�+i�u�NVH�i��qOk�7kl�o�V����04�RnZ0zRN�-$}�~��)�!����(��l%���;|�ۄD�����<�t�W�e�^=��qoe��ϼ;�uu&IH�X�� H&�R�+$�����U�� ��k�v����۲�;�l>Y��y�-�r�����&z��b�&��_�4��?��>�&0q�w<����[��Zqf��ϻ�=�\ջ����\H�?e"0iHn��"����/����IR���V�rr�rR�
{�$��.tw�3�>s{��!*�-�
�W��#3<�>��f���`���Hh�8��Q(b��������f�ֹ?�R��&븊���@E���gN�1�;��aӐdb~9yNPILӔ*��a�\Q�J/�Ӷ�)��\^���4�H�n��k�L�:~]�9�S*���"�g�\[���(!0�����/���?ȝK92���0�sb�e��zb��w:Z;��pU��W���ƩE��	�ٸ�z�d*�c�q	���W�8[���))G)3�R�I.�n 1�!`"�L(�����;^�"�d��<D1!��"�=j`B�﭅)f苆~���,�З6�A7@ޔG��&�R��d�dn1�� G-��֪���pb�ƣa�@7�	��LI���E��)I�*���Y���2�w#_:e=r���)�N��O��"�,�Y�����_J��Zr 1A	�Cǹ71��ě���N�Ma��I�k�<^����.+f�j��h�������60�޿5|V�k�����t�vr���ಿ��3�й�j�n�X����vh^�T�;���,����eџ�ӊ	ؐ2�4x�+�n�3*��"��m����J��x�'����=�S) M&c�S�;�uN��_��>�����\M~����B}m3{��%y橵'Ǽ�*gѽډ�����@���fR|���7�ʆ����,@�O0=�zo����Y�51�E��s�D�-(ӞJ�m)�|��S�L�m�3o���&�40C��l�J -��&,<Y��b�x%�g�Bvע�5+��J�vHjt�Sb7u��TS溰��Ai~Խ8ust���F�.�CCt I��U�Uښ�$	6CW
F-0i���JNT����Cc<���E�7�P����t�V�+��􄞈�v��4��J���IRy�7Ж\]��%��tC�����G&vI9}9;��m8V�n�[%ķ.��{�BHo_�x���Bp͛�g��rhý4*D�ѧ}'��x~y���[���}��Y� �Q��f��k+'��)� ��굃5��4ݪ������|��s�I^}�~�͆-��ivY!��i�����`K}+R=��|<�%9�(�hn�U���S+kb5�i`��R�۾]�NRqw����y��.���K�ؔ��\C�2��w�si.��&ʁG%zj��J\�ٞ<u��Y�!x�V�����\0�w����&�Ph�4G�Ҧ7ʉ)����V�u>�斯�E�8�:hRB�m����<O?tK0g�����^�dpg��JԠ�_QӼ�$���|H��ܫ����|=��,��f�ɩ|W�h"L�J.+-p���q��t��{�'���H���<.y�����!��&S�}�?�T�I�ֹā�e}�}o�:O+�sK�    ��0WBj�PJO�X�����������Y��%p���3��xa��v�,%�r�yu�g�af�0O�`�
�9锐�7&�Tږ3<\��	Pg�����e�Y�'�s�̶+�d�|�|2������{ɸ����8��N�~��pd�?y�<�T����nz=�D����T�0�D/�-1����g���\ި���)�̵�| ��=1��s-��	����3��hQ�Pf�[��s3H�hf)�7����Gu3��I�̇�3=�RT�S`"���QZ�4���=��̺���%Ѡ����]�m�T�Y������s�p<��Iô����aĢ����-���Lu�m�s'�P)�z�Vk��pX�(z�ֶ�l%f�Q\��Y��8-��=�Pj����M�q-ܳu������s�#��I�t	K�n@}#sON�G��<Y��Q[�S�u�=�Æ$?�i�~�C�Oi<�����>����X��I���� �
?:�
�@][�6��Ĵ�A>�|��Ð?ts]��6JO ��[�����Ay�	c�#����y	3�vֺ�rl��R���V��y3�;���l]4��cS�2�ִpr�n�Q���gቜ�]�{�
!N��#�.���"8��JΙ�n�t%2�<V�M��)�iBq����6���ߦcF��V-X�W95�m���B�n���y
ӳ6Z�(=�e�nnGe[Bh��]J��0]��oݿ}�Hl��.�@"�rR�'��
�� )0g�Pˮ�%��"��Ym�7_vGf���\;L ���:y֔G���O�@��C�[|��N|u�0k/��<���b&L��ψ#�w}��Ek��(eZ�r�	���O�����y��C�K�z��Wc�Y�7����g�s��]}��!w�v���0�dk{ȗ ��6u��R�)y�_��I ��~X��g˲��ݨ]�8�)�c����"N���Wh���5��S2D%�"�Qo{��⫺o�)��^nA�Լf�&�q�(� }+��R]�#ګ��^��X��T���e߼�z�^��M�h��<�xs�vF��Wj�^��[���	��P�[^���	F��Z�|��F�r�X�;	��4��gLJ�|���T<�I�$�O�X �W�f%l��x{� �a]�!o04��\O��\t�Yq$<�Nֵ/���ǫU��͉� =9N�[�2��GYO�<ܪ��&S�cZ��G����iu�)Q�pIW�Ҭ2]=��c�
s��;GFצ��\KbH��^�'8���Ѳ�>Jē�m�y�}�0g�E����@)�Cum:Ea|@k��kv6�N�d�|4a.�]!��<N��Z������?i��75��JT�kx���B�}�ô8�,8�Z).�� ��D�g���}�%m���l󎓥<]K��#��5�t�o�л��o�Dw�)yS]L���p�,v�H�0�X���G���3|��M{X$J��ı8Bp���k�4	�<�G��8O���9r�ss������R�x������3ԅ9R3=��WV�S���y<�ݕ���V�v�e��Oss����x�9��&�_�B��B��=��8�gNpT�)O��{��p���p�I��Ԯ�� ��7�����mw'O24qB�2��\�('ls�ҤFG�hi'�Q���Pep�<_s>H��p�Э@�ҍ�<XXK�c������9M��m��ʭ
�o���lC���K��AnJ�]_m)7��)'l�U�F�^r��B�A��=�<<�A��Yˎ�j���Xu\l����6���5�{YDQ�W&>����w��rK��ϸf{�2���R���.ܲe���dn�e]_JJ�nFB�V)eN�a��lٷsv8�z��++�dl��w'+g�|ct���MaՏ±��r����kؽcr!S����t	=�[��9����fW�+�����Q)��o��}�Y��	F�z9᡹,��6!����'�;�,.f^fG�����K�wa>X��vc�q��\���iΡ��0T1�f������f�_B_v�Iv{��%S�U~��.X`��m�Xȣ��iW�Ոh���X,Xv
&R=;e��y�W4�4�����}���+ks*�E���x)�E\o�4G�����-Ӽ�Ɖl���Pn��e�?�e�g$)�|,ꡒW##��'�6��;d�	ӽ��!U�o���,�T5��ۢ���J�Z44��ts�0���>k`2�'�s��d�3F��|.��$a��# �o�#v�H�]��D�L(̺�Ɂb� r�rۍ@A�f0#ܵM�\�Y�>��5z�t7@<�(� >e�񈌬o.G���[�֬�A|np���|d�8�èP��ߥ�~{��Ֆ|=�Ŗ��hz���EEY�"���z�'R3�#�5,vȴ���`���}S^�2���ޭgI�'�)\��L���MA ��?�rs�����v�s�GI�7��(�l���\I/snK��:��gv�Vz##]�+�u�(��d]��s�Y&�}*$CF�0e�)1�wLXn4|U�6����U?�G���5K�.�c����)C�.qH��4���P�}ى�"
Qw�0�G��&��Լ�����h)%�%>��n�H�ˊ��>�r80\Z�y9�L�{��x���L���3<.[N��� ���=�g\��N{C����V�Y����g�=5�Ϯ?l.�P��@C��.5�:�y֋;5>GS�9R,w�A3g�q���Q�v�u�A7���R���ٸ�g7/f��|�j<�C�k�vC��<�6��?�©,'6>���_'���^��┯���˽���k1��lh7T�n5��*�ux&�f�S�'���}mW�g`h��S.)ht�����|�L �?
�{sLG�7�6Aw񝶅(�O$=e�x��
�ܥ6ڜ���,��r�d�ʹ�M������?��/�����Ҿ����P�8ђ��5���}O7!d�[��~z��������7��A`�v�ؾ����gQ+�"!op�w7��^7�VNǁT
oTҜ<w�;�sC����pH	0� s��@*�Q�vY��^�I�&�^���"p�y���A�g�SI�@�D)cWT�hj�%�77�s7��<��T$e��y�|�ÓgJx�g�'s��s@s�� ���B�����n������!�����~7P��7�YB̜x���j���ჺ�Ղ����f�oD'0�!���ب�ƽ7�'��P�(�]�;8���'���1Wư�3`rf��ܝ`��E&��V$�%H�쫼ڪ�0���?�Ͳ/휧E9��(P��P	K��&g�-O�t��z��/��'L,�~5't���$��T��T��'=�n
���Օ��������sM4.r�.���c;����/�^[a�`���6�o�M&76��dbq�5\ɶv{欥h�#Zg)��/N_C7������25��Hۍl��ٌ[8SXT=���9pG��1s+᪣�:l�����4	,^6���`$����4���Sk��|����Zo���K�4%^c�3<�j���*���Ý`�2�P������3����6v�|K��bJ�1���<?�!����m̋/a�����.��f�F�++��*X���suKn6ڣC��g�t��9�~Xp��\�dh�c����R��l�Ӧm�_����Bn\Z�g��-޼ñ&!e�!�*p�\����<O�3������T`J|	�%��]f?[�y7�=�g����v�7�����F�FK�v�&�1�L-����J�P)�s����9W����D�0�uf�Z��.u+q�|��@ҽx�x���v�;���YD�}���Y�Z��B��&�iAx섰z��GK�{���]~��崉D*�c��9�K�'��q�g��J��4�@`#,غ.��v\9��G��?`�/S��M��4�'X`��b݀���V=t2�i��C���lS�a����M|u�!�	_l�ݢ�o=��S�Ɍ�p�&���#\�v�K� \��Ǉie�v�%㻊��'@���Qb��Q�B�Vz�4��)�ҙ�寐Ó�ݴ�K�κs   �R;9I6�Z�شCd&bS�.���$&�+�|��2p*C�;�J&����\��j��wDf���H��mȬ��$BmV̺ѝ<�f�fi��D���kiX��tx��%1R�[��8C(�jؙ0\�G4١X��'H}���
&>�Ż���W�.��N�YU��oVM���� �G���|�j,7c����	�R9���/2��)��\/6�lN7�����܃��9�NP2N6?�����&��J��:MM�p�_֗z\9Br���q��5z��}҇�-v�U��#��;������:x�'��|{�o�E&!�.f�$_#��F�KPX0�1��=�-cI)�1�� ;`�d_m��Vc�������%$�p=c�Q��3��ą�ΧF|nRh��±����l@��r�c9a�9�ޓ	��?<�25\�w/�_�)����ߑ������|	���[����
_˃��s!v�7����d�7�a%Zz �ϯ�Qt�v2Iʙhu$�m�)�\0�Pҕ�M����ʻW,L�n��3eN�r�|�y�_���hA��P�9�(�e�>iAX�����=�����/'��~`g�&�F��<~fAQ��Lï[�
E��&�jt�Ǣ�2Z��<��Y}]��^�©��p�?ō6�A�*���vyr=M�-��yw������n�O�!032i�՘]�� a��7�Ĥ7���!6`�-Y�l���o^��<�����;���q}������]evß�"�!WN����{���?w���      �   E   x�3�J�K���4�2���wU��O�VI-.Q0����qqY �|��Y�����i6�4����� ��T      �      x��}�rI����+��5�4��EJR@�L2�Lr�e�����/Q� <��a�F�o5�:�\��#�KF�S5w,�]}�iJI% 7S7S�]����e���m��~����B�SV�O������b�h��$�y㋸��8wM�8�el�����o}���r7>���5m�㴉wi�ū���4���e��~�J���S�N/�d�,�����X�^ǫ�X�n����5iY�i!#��e�%��,!-d	�4�|��+����kk/COe��X,>)�\�.�q���\��m_��VF������~);��E�o�dr�lb'���*3�'�"���\��{\����ļ���T@�&~�օ�Ϯ���?���^ʀ��������ky;pˢ˶�7eΥ�G)���la�֍+�L0R4�~���D0!�#��&�U8cC�+㺩\��4qFT�z�5p�͜�ʎ�/�o�{�p���h��xBHY��5V�� �q���Mu�M���\��/�(Y�7E���5�)���mYY�:�
��ǿoݲJ3�f�:�҅�������� gF8�������웝^v�l��p�o�-�֨D	�kji�<����0��j��	�w��:�ԣ/�������W�׃���0f
�H��!��赠�٤�֖y'#@B���eR�d�3���l��˸I�nRZ\��veu�a��u���"I��eٺ��r!?'��U�a�d=o�l�`��\�_{vR����XMR�u	!OUy�IU�\+�;W��g�-�&�(~�ݵ+�Sy6�.R�]t��d�ʎ��"�d��F�f'�J��d�|(�>��jR����=ӡ;�cWi�T�-����uU�2d�#V�܄������e����q�o��V~p
�h�m`=W��]tk��jٙ�:z�-��7��.���* މ���\$�V0E c���\�.��t]`�H$��"�U8�eyQ-ԩ�Ntf�65�C[+O��۪\�	��L�]�5ݺ�Ӧ�f��E�ݔ������+8H��U��aw/۪�
��؝�� ����sUY��ϲP�-������\n�R*0a|�;YRRf���ϲ=��F��T�r$.����A%%"K��B�[��`b��D��D�7"�;����_8�<v��T�*�r96�Ӈ�pN�,�����,�����-�2~Y'���Rѣ��CQ�s]�����R�$mt���I �Kŭ �\�yM/ow�XJl����U��13����FD�Vn�L�^��0IZoւ������} 9c���O�4��M�
Ft��d(���CU ���Tm��7�cG�#���;T��啯k#ח���][��b����9b$�w���WDͲg�y�G��J~���>
�	��zCCT�?y�NNHpAD�"� ��4��wq4}3�Fo�o��Q�8�mʰ��H���Rx`��Y������C�cQ�7a��l�!�ht�Ex��:>��:�@E��Dy\o�A�:�D<�]*�wU�p�"QU4p��t|�@9��J�.1-��%'8=������^�Z{P�'��e��uYp�����?��)?��~Q����9�5�1���T��ȘE����ڒ�?8��n'��t%��a�BF��V�Sh�O;�!��}�ST�K���s��*<�|p\�`9�OG��e�ւ���dşM<�K�mO~.��@sǺ�;�t�M*�����V� ���"{�Ա�	q�J��j���2~� 4���1���4p%/o���C��9!H!�ڭ��~Q
�T�<^�M�٤7����\�"�߿�~�+�v�N��V�Dpn��th+w�Pn����Ḥ�\��-5)�dnG�Sq"�TY���jN�����l4��w�P���qt���F�LV��ݍQ1�X�;��X/+�k� �+�����ݹ�}V���kG�B�X�@��^�	<9Q��W��>~��?�|��eƣ�#Y��3�%Y ��.�ӝ2�;��U
��V��?���B
��7J���#{��a��R��$z�]]����=�.��7�~��u�ڵ2�$���*Rֽ��G���g4V�[(?�(�C�j�.2���ۢ��ɪʷi�#;���fp3mQ~/�+T)4�����-�Ey���P饰�Ț����S����y������a����^Φ����单[�� ڬp0@skO�#�kA1��)v
�:�OМ&`���ڽ���1) ��h�2S(%\�ΖPpgwu��i���6��!�^D/s(���䫷.1ě坋��sdK��f�cY$�rS�}̹g��{W��/����lzY0@�٘�Z�K�����+��s�S�x4�\	s��&����+?�YڑݝU/�4Ö�ݙ�M��6l�h)��'�G�Z�‖u�Lh>�#�s������Rj�5*q�p�J��!����]�����*�]~IKz�ĜX��މA����4����RYe<8�UZߐ�B$ށ(6e�! $�+��@o��I���l����+:5�n�}��[�"k��������aK�(�."G���W�"�:�7�{���$(��!eiߺ��6�5������dG�k3�X�b��(��U~�@�����F�Wg)NaY� Z�|�ԁ<�RKh�W@�|'�~z�i`<:���қ1�IH@��Bݵ���$'�O�*z��2>̀!�=��o5rJ�D����������;�E�u{5㒩X�z�@���ÓN�C�]ײ?�);�)\N!n�y+VD��������O�i*���o��ڜ'|�*���Ϣ˘�1Hi��d��4#�D.D��2Z�\����ꠋ���C��&M���D��0rƅ�8Zq\�4����ߎ1z��&PnuC^@�7�����A'F���4�\Vb��u'm%rpԦ�˝n�b�֦
�e�,ui.NIK���Dh˙���n�v+����*�+���@��l��ۥ튿0r�?�6*�2�4�yrL[q%����|O��M@���G��[���c2J�<��۱��2su��/�xp�/�U��G[���(�Fo��$G����ldJY3�,�D���e���in˚�X�N�s<���Z��ֈk|�Pn�@�_J=�,��c _�}Oi|��~��39��F�\!��c���Bz��wŁ�����÷�"�þg��44n���l�t���`N��D�>�� �GQ)b�@����lכXLD�0v�v V���N�*"�mu���J��-D�7{�SP a!&&�2�\����k�aH�v��v�����E�!,���"m��Z��Úi��B3��j�K���-�79����xt�1�C�,�%���Cеp�WKw<VsI4�@�э���&�B�D�lc9�g�2%S�P�7w��>^�V��&"�*o��Q���\�v��e.��lR�4�x'�n#Z�d�y�k��ǁ�ve�-T0������w��Ņ��珓�ۦ0���Omu��6�W!|��X��:�B�:c2�~�$Xm�m����m[�Ř4~�;���-������Q2Ϩ�h�Y<�r������ޡ�wZt���>���e©���&��'�R���o�g
x���u�X4m�E���_�� PX��������ӛ�+��C�Y\�nAu�~R#�*�x3 s��!؄�hl�w��E��ş��6pz������k��&Zh�ǖO~�z�����\˥F��4>v"��� �?l9@��)����P�
3/zG��Y�12-�p�E��UgOU倂�E��]f�&��ۻ'�	�70m��S$�I����+�yb�������[wd���A,�k�,ͻw� ]��JD�����.��̲i|c4�\�.� ty��?D��Z����l��t�4�_�"���V�;li;�E��vC��7]����T~�Q��� 9����8N�W1�t�m�L"�٤[��|�J�N�/�:ł�f�@�l=����xl,��;Tg�-2�Y8���1�xY7�b�كøD��>�S�$�}��    ����Ƣ�0�e[�O����k!��*�98�MN*@˝��q�/�6;$�� M��fr鹃���x(�CB��-��X0�r�bCV��VU�3Q*T�`��*s� ����qT�
 HO[���x� ~Z��Wv���w�-��En��ꂁ���$�a.�Π\�҂�-\H���4_�Ŏ�Mq��D!������%�FD��H _'^H/Gp��?��8�)@l����h�R�9[\�_�����A��N��8q��L~�"�Po7^�`�t�˗-B��ؔ�3V !�P�Ձ���](�r,U�y�NzMR��֋Ѧ�1)��;Էh,��-�{�
����E�$�2@<դK�|a��82�=&�Nqc��ԭp�Vt�tQ�T�hz��6BJV<R� LW4"�8Z뢡ZTH|�UW/ ��Zye���[p��y4���+��Ё��o�g��܎�O~��N����$UP��8��q�X],�����!�Ve�pX�6
��YV4VI="��S�-�Y�e�ʉ�R�!CO�OLb��x��G�Yot�R�[T|	�n�ѥ�?����)��P\��&Na���I�MG�ia���Z����g(�c��+���5cH�afq{AѬk�ƥ��/s�SL;�Udi
�W�<�_�E�b�G�Isݕ�v�M�-��\G���:���j�֞Oeի�F�WÉ��G'�8ϑ����y(;�#���I��e�zL�9��"�8��:8�p�T�g��)^�j��ʇgg�'+�6[��%e�s�q��y�y<k���S�Q��{<�O �P��ܲ���%�D[�=�ŬO�k(��T6V,m�XrG1�R���ϰ)���� X���1k� �sP��<�����њ��F&&�#,I�ϩP�3���r��'�K?ȧ���f�I�f^�8��I|*t��1Ar���;/��ſ�ݜ��j9�
�5�o��e�݆�HM���r�J=�!�#��vz�85�HSi/��*�^Hj&�A]&�9uiT\�BT������V�����[�VƗȶ��bO"M���?�w��HNp�i�\�B�ˌN��~��ZޛTr��Z�#U���OZ�|߻1�݄�z�(�a]X����L���1�nMj`#b���($��~��_2*�꿕C���#�q���l�)��u�D~ `��dVӥ�>&9�tU����/��F����6��t#2�к>���:�=9����::w_�\ޤ��X�����E��E[5���r�+��s��p��8���*��:EFV�ng�]�W�FF/
��v��p2��հ�����C1Kt�YtYh)V�"���d��-�����k�/���)b;up���$h�E�Z7�J=�E(�����X�]E2}�MÇCn?�J��l���(c����l<Ryf:G�Do!_&J¢����N���ɚ�����x2������(s
T��B�T���B1��4.7��k
d�!X��Q ~�2�����]8�U����yX�Wv�n-������)t;p�`��d-�X���U�iE�c�}a6��U0UXǀZ4X���hf�-�������\��� fn�jڔ4N�M��Y�Fi@ì���\�dF�����M��.N���xhJ��J4S0Yj���Z�3�RƳ^�k�����䬼:��?��]?s5�KE�K���w�Q�y`���Rx�GF�5�T�o��	�������n�p�(i\�|>�Ov�؄��ܤv��I��Q%-h$���EZ������%�Yu4��q�0_��9r哿����o����Q���'\�KYDewYj�g2��g,N.�� ���8h0�[�S��e��A
t�t��|�o�q�-��(�m�e �h�J,2����wC�n���V<ļ���j�k]!F�t]�X��P�sh�|��P�\ `#˳�N�%�q8e��c��TdH k�ОZ��
\����'�黵�\���?��E\��X<"�b��?��#�����$���*�']��ng���D���q�_D�y-��A�1%��;����x�D8����OrjM�,�n���(���]\���|��a�V,� |��g��|��*��_���,�n?�]��D�B�\��Y�B�À1ޤY�w��E<����ѻ6k�b�ޖJaw��E^7؍N�3z�E�Rw�h�	��ѕ��@k$����ᣫ�l��ϛ��� *��]��9D���DXے�}�'�1Ë;�Gz�D_G��	���naR
�����Ĥƥ7���E-�*�`��FĄ� �Og"G�b���-tD(�]���}|�x��xyO�o����Rr$w����'�-�iP����KJe*���5��U�j�N��Q;cq�=9���j-�B��'��y:��ɓ9t��MU&�:�\�_���Ų�gOuQ�S������
�rZ� U���1����2��ʮ+�0WX!i�)��U
=8����w#vV
�7�G,ǄI�-��`$��>ff�Qe�0��=�2pW���uj!r���@-	��v�Yeb�nx�������H��\����B�2��2fZ��K�"�4&t��_��V]\b(�`8�PGHͤ��i$�Ef|Q1J� C)�Ot?���h�����p/�(���2&΢����y�{�)�j%?������j�NU�Z��/tAqj�T:���M���w���4�X�͇�k*v���פ������X�%^ �������ڱ��&]dE�]G�믆�3.�aqhؤp�F�K��;�k7H|��
���(Ƹ=��/��L��[��`�f�
Y<#�D�+H%��!�(Bu5�][f}�����І:�[���ҳ���G��V��l-���ă�a�j�n��'�B�ŀpf��(v2�/iV��&�Uc~Dm��cǣ�@��qt�h�����?)�8^>^;��^�L��캄��̪$6M�n�A�16��,���)�- G�qCX����U)Z<~)#t�F��NwF�"�hrNd�7�-�����]Ղ��=��[Irlg�3�ɒ�.�{@���E�?�x�"��R�z]���UC� �d�:���Ʈv�2��f,���W���2D!XE<�j�X(�������=:��,V���ⓓ@��s�+�}'4�����<�.0D&]*���T��]*Q8�ބ��w�F�9r�%���X�5n�n�4���9�����"�b:=O��ʸ�:ht0�ܽ�_�V�/
0���,��賐=t���+�B6���Xo(nP���je%	���W�/�`jK�>��ېyQ��>�����Tiq�:�ν��� 1�̤c~���S��E�2Ŧ�mû�\q&ր�u�HNDkun�AP���L�,��\��JQ�`��`,b�h����p �Ae�D��t�Q"P�X1��"��H
y0}6�]H���%+ΞU��;������wz1$)dmf�M�$n)j����K�}�g�䷫@�&��Z�̻��(�
f���u���<F�.��@I]}���tٱ<��)U��sۏ�%h�Sū�[�e�Yéb<���G+_]����0�41r�8���ز������^��_�~]�BQ��Õ1������c�s8��7�~�u]\:��Ar���� A��b����!�E}�M�	������%�����1VY�"85��F}���y��tmg0+�����pc��>a��L�s�o����.И���X��>��$�ʏ��SH`��j`S�)�w�����׃��xǎ�M�J1<ϑZPu=��mZ'e!�,F`����c���W>��Ľ�}��<_��5*�1Y�C�Qi�����VXC����ao)�]%�S�o,Bb�y�����NŘ0d�5��Rކ�B+�i����ӟ㧧�5��I.W��:�CE���2��&�DLd�t��'@����(�g\�F��l�3�ٶ9�S\��4��&W:"K��խ%O2i	��x<����L0w���o��o�꿟<��x��g���%Xm�͍~�'9��KB�Ye�ch��A(�d���.�ڙ<��    	&D��=gH;���$\�R�*4���qA�x65�����ѥT/���߯SW�2���P�И�E�])	�����|q}�)FK�\��zev�o��A��Ƨq�h2G�mj����"W ��V{s8BQ�C#�B�Bw�C᛬}m�����a��Q��z*mP~0S���$�iL��lB�E&�{�� ʰ���H5)�0����$ZKC֪��nK���R�b��	�k��:n�ۡJ���K0�-i�KL�b�Է�!�@f/����"ꮬ�ӏ��aLa��*kC��uɿ��G_�7���S%?:�h��n�!
�U��J�0�ZL�۝�ô����xD�r7��Fo�)��zhXs���Ժ����OΛj���o�\I���4�}e}��.Ԫ,2��`�������ڏĺ��@��#�|,���އ���e�S��O_�������?��V������v蘨�i���~�|iX�^h4�V�!�'"���55�ܑ��i/��)��T�f�Y�&?#<����	�l�A���[�vLd�G��a��{|�=:F�E���Ǧ�yr�NӨ8R0�$�`��]D�E}hL�B�J��#&��d@2���5���;iN�p��ҧP��xwS,=�/�O窥M��r�Ҽ�3(��zuQ�����䚍�N��5��u�a���lRq���$��}��:�r�`9tak���UP�1%$v0�¯Z�\ab]�@A-d}�4$w�y �4�Y�by��R�m��2��p#�z���q���������f��p����x��(���p`c��#�`o������aM4 �h��3~?��c��ԓ�?�B�w�+�@���c�J�W�-�s]NV�V�7��G��ɘ�(���pDો�GU ��3�ׂ�CE�!�р��.qj���{�M[�[�q�[@������p�.�د#4e��ֲ��o�z��]7	cb��>���"�A^��Q�`5:u=B{�H�w\�r��b����\z�;��X�`X��������h� ��n|U�q+�Y��ê��7O�m�Ǘs�I�~����;
�v�*���b}���^����<f�3S�k�&�p�N RX��榴�J_g`��G���,�q]�/k�!�������$z���8�DP^�Ϸwa�Gr�zyL8��oҞ<�W�d��EϭEO8���"���[�F�-�!�p)�N�z�dc��x��F?������x�z�~`y��y�<��OeVhPm�1l�f=�%��MMb���o(����:�&�ƻ�2�b]������O�ǖ�I0<��|s������GGO�8lMMW0K쿲����i�:�h�����?>�iI���}��K��>9��dݍ.v�ԣѾ��8l�������*�B�obU#���RWL�.2��N��_��Π�I��{���n��HS��a��Q��T���.Σ�t�+���Mfl�\�8x7�(p�E�i`~.[z���1E��d}6�+�b��W�1�;њ��Cm����h}Hј�Ҧ��
��G�3/��X�F!A�
���P��]�j@�/��$]گP �h��X G⬽�����.&���h���.0tJ�,�#u�nW����n�>��k��s�ZP����ԋ���5Z�\R�c-�:`br~���O2���*��Vg(��ʻY�Q��f��P�yWe�KdG��7�&�b�k�� c�&lUF��٫���Vd�U�ͅ�D7�G.�<�"!����M���e;�%g'tcT��ˆB�X]��c=��.q��J�q��8�~t�m��[W�_�"���y&���ƚ!��a��4��!��(2Ѱ}:!ޡ�/ �����$����Nd٪���a�.��/[�V�mӢqw�Է\D�E�� ���8w2�^���R1�{�I�:4�?���l�����a9v�dl ˿�Ja �8�d�i�E��J-]�[Y�ǮS�Oe
<v.��
�Y*�c`�K8g���o���P�J
����E��X��c���p%B�_ ڣ��_m�-w�V8F[_v���:��
8s�������
kF՜ܨ6��s�����Y7L��@uGWﮔ��zY"<�֦�%b9�y�����a�#���E�G�~��W�s��'2E?�p>�T6_��r�ؗ"���y:�>�"�K�
�?|�u�$z��bȼL�����?w>�JL"�.C���!K��dWlX��8._��F7;{g+L�+J�_$�qP4��}���L��P����iݛ}�3�^T�݃�m�)O�]ث����6�D)�N��u"��<�X鲣��i�1]���e/_�y���+h�z����ԕ�;�����8��Y5P����n,���m=�_#=���v'6����a�3PY#N�u��+��:�x$1<�Zv�R®�am���@M9p�}���ޮ�j�!�	�i��Ԡ5�]�JWqu�E�S�)��p	�i����"�#��N�����DR ����0�߭A/]:���[A��`P�����^[����RT��PY$�<�ʕ���.Ġ15\�Vx����I����C�����ob�宍2�
���_
���P����v���jZ;�U��u�^M��L���`{kf{+��G�B��8��s�ےPG��&��u����:���!�߮_��F�L9��ˮE�.�u��i�=A�K+4��\��T�	V��,�7����#���#����,y`a=z�mp�PD�m˝��ޣ_:�������pJ�%�~��Y�T	Q��{���Kq����4�R���H�3�/�xWX��I7�m��i��Oh��O�hD�D�P,vpӯD|T����2N�2|e%˺V��+n,�j��2���ѳ�3���e�f&�~e)?�B�F�����.��I|t�յb	�� ��,o��G�Z�r��X�D�����nEqǧB!!��� ?�>�stG����a�饾l�DZ�ty1QP�G�` ��i�㛟^�}����>iN]g̢ח>�������|�8q���fcC��T���	���Y��ڤ��s̀�f�_D�!-E�?Y��eIF�W~�?Wu�,��xK��gX�%U� ��T[�f���y�H�mI%ߑ��&Vƶ�^T�-������3N0G�ha��Ǹ��3�
�]ۂ�	N�il��o-҅n�xKq+�0��FU�dʖo��ڊ19�#EM���b�>}4������%��d��W�_�A��I�7����s��g[���FC��G���9>�����Cơk��4ː?�J�c��Sǃ[��՛�Eԡ�u�EZ[P	ݯ��Ŷ��>)�@�|]��؀myR?xǴ���Ț��	SZ|M[���i�';�d�\=��{�9;}d"��_������BM.�>���"��6'�Jj�:��dTm�(��X%��0N?�#
�@����D��)+ZU��>e�X�{[�=�Y�����)�Us(Ü�ӺĊtb�2>�̿�����k"�i%Z�di�}��2�4�_�nh����z�]��N�V�Iw��^�Lw6}"��Lo_���R�g�胯�g35^�p�>�u"�!+:����=����:'�Cv�~�9�����6hw��7�ĳZ3�K}C�'(ޘ�����W$J�\�\�%q�m��(���"e��V���I~"���,�EI�,���α�5��,�sd�pEwf��v���
X�:Jf^�%%���G?m�!���b:����	4;�;�~�u��4�26�{������[���6�.cd���
̪27e��ו����V�/�����h�e�r�gN����g�S����:�W�S󦥖���O�(�%�Ën
�Ιu6�S��ʀ��� �h4CL{�*̳轶�-�������3΃�,�h�2]�ͦ@U���]/5�(F��P�^�fsd��v�Dw�r̮���+8J�[����5uNl�/��;��� KuHA����r��O�)L����ۑf�ºva� �&C��/�Z�> �  ��cH�T��pr���8Q-�ͲJ���1�����ܝ��w�^ʖ�]/�V4A���Bc��%�����nV�ny�)|�,�L�r�����VMH[���KQ�]��
8��w�p����%}e	J��a��*���� ���"|vx�N틢�F�~\�i���%��B-���9Ê�d��|~�x��z/����j�����f�[�|$�����>gx�~춌�u�z�����^�(^.B�wY�,4��\��|��K2��o���S�.>��)D�pe6�>a�� ~lVHWP��'�&��k>��P�jE1
������)�6��z�V��bC>輙�ס�s���������~�s����+a�Q�_�՚����� j��B�{��t7���B�A2n�W�q������-��)H19����[!�*`������*]ٻ��KZ۷c�����T�]d^�Q�
9:]M਩ڋ�j`�[� �ʣI���4Bmu� ���-Q�pv��t���S��qiUOٔ�����i��bWM��˓�g��X|��˰���8���a�W�:M�s��ׯhy��#�o[�l�'C� ���aL��z�m^៤�C�q�GM<L� nM�E����V�f��*~C��6�<�^?�o��w�{-W�N���a���H쎼����D�)�tC�|�ą��,p��$k3�d��/}��uF��zO�e.�X���&�q��ӻ�>фi�謯{�gx�_D �I=���ڀQ��g:~u{�����_�P�a�f�;-P%���/|A&�����Y���R�g���+'T�bN،�� �Y)����و;h�:�jB�t<,>\�-E�o0���e��<��~�]K6��jk헀rw!�5��c�S��3�������S\J8����]���3��~�<�u�A�u#~m憘&|����ѳ��|B�����o������ �      �   �   x�}��N�0Dϻ_�/�l'm�cA�SW.V���&Ne;B�{օ(��9�yvf}�g�tW\��ёi	�Ȫ��(���Гqc����Ƒo�8{S��4��p� ��ɯ�m�7;��/�^�]�=^�,��n�QVH
�{x�Ի�´*��Ìה����#<��sтRY�7q�#\t��|~�)_/˝6F�ș)�\�G[$�oɥ�p�Ҍl0���>��;D�����      �   �   x�U��� E��G
���ױ��͚��"7A ����@: !͐�a���lp��`�э1�xPb��g5�%Izcvc;�󰣎Dx�"1�tI�Ϋ�;H�s~idg��h����6d����<�E�ְ��)q�c_�xUH����wR�E�y��[)�%�G��d�"�%-t��u���`���������|����Pv�"��|~W>����FR[     