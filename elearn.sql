PGDMP         +                {            elearn    14.7    14.7 /    "           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            #           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            $           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            %           1262    24853    elearn    DATABASE     b   CREATE DATABASE elearn WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE elearn;
                postgres    false            �            1259    24866 
   department    TABLE     K   CREATE TABLE public.department (
    id integer NOT NULL,
    name text
);
    DROP TABLE public.department;
       public         heap    postgres    false            �            1259    24865    department_id_seq    SEQUENCE     �   CREATE SEQUENCE public.department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.department_id_seq;
       public          postgres    false    212            &           0    0    department_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.department_id_seq OWNED BY public.department.id;
          public          postgres    false    211            �            1259    24893    feedback    TABLE     L   CREATE TABLE public.feedback (
    id integer NOT NULL,
    content text
);
    DROP TABLE public.feedback;
       public         heap    postgres    false            �            1259    24892    feedback_id_seq    SEQUENCE     �   CREATE SEQUENCE public.feedback_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.feedback_id_seq;
       public          postgres    false    218            '           0    0    feedback_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.feedback_id_seq OWNED BY public.feedback.id;
          public          postgres    false    217            �            1259    24875    files    TABLE     �   CREATE TABLE public.files (
    id integer NOT NULL,
    path text,
    file_name text,
    department_id text,
    year_id text
);
    DROP TABLE public.files;
       public         heap    postgres    false            �            1259    24874    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          postgres    false    214            (           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          postgres    false    213            �            1259    24902    teacher_upload    TABLE     �   CREATE TABLE public.teacher_upload (
    id integer NOT NULL,
    path text,
    file_name text,
    department_id text,
    year_id text,
    format text,
    submitted_by text
);
 "   DROP TABLE public.teacher_upload;
       public         heap    postgres    false            �            1259    24901    teacher_upload_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teacher_upload_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.teacher_upload_id_seq;
       public          postgres    false    220            )           0    0    teacher_upload_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.teacher_upload_id_seq OWNED BY public.teacher_upload.id;
          public          postgres    false    219            �            1259    24884    upload_content    TABLE     �   CREATE TABLE public.upload_content (
    id integer NOT NULL,
    path text,
    file_name text,
    department_id text,
    year_id text,
    format text
);
 "   DROP TABLE public.upload_content;
       public         heap    postgres    false            �            1259    24883    upload_content_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_content_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_content_id_seq;
       public          postgres    false    216            *           0    0    upload_content_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_content_id_seq OWNED BY public.upload_content.id;
          public          postgres    false    215            �            1259    24855    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name text,
    password text,
    designation text,
    fullname text,
    email text,
    phone text,
    gender text
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    24854    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    210            +           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    209            v           2604    24869    department id    DEFAULT     n   ALTER TABLE ONLY public.department ALTER COLUMN id SET DEFAULT nextval('public.department_id_seq'::regclass);
 <   ALTER TABLE public.department ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            y           2604    24896    feedback id    DEFAULT     j   ALTER TABLE ONLY public.feedback ALTER COLUMN id SET DEFAULT nextval('public.feedback_id_seq'::regclass);
 :   ALTER TABLE public.feedback ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            w           2604    24878    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            z           2604    24905    teacher_upload id    DEFAULT     v   ALTER TABLE ONLY public.teacher_upload ALTER COLUMN id SET DEFAULT nextval('public.teacher_upload_id_seq'::regclass);
 @   ALTER TABLE public.teacher_upload ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            x           2604    24887    upload_content id    DEFAULT     v   ALTER TABLE ONLY public.upload_content ALTER COLUMN id SET DEFAULT nextval('public.upload_content_id_seq'::regclass);
 @   ALTER TABLE public.upload_content ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            u           2604    24858    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210                      0    24866 
   department 
   TABLE DATA           .   COPY public.department (id, name) FROM stdin;
    public          postgres    false    212   1                 0    24893    feedback 
   TABLE DATA           /   COPY public.feedback (id, content) FROM stdin;
    public          postgres    false    218   v1                 0    24875    files 
   TABLE DATA           L   COPY public.files (id, path, file_name, department_id, year_id) FROM stdin;
    public          postgres    false    214   �1                 0    24902    teacher_upload 
   TABLE DATA           k   COPY public.teacher_upload (id, path, file_name, department_id, year_id, format, submitted_by) FROM stdin;
    public          postgres    false    220   �1                 0    24884    upload_content 
   TABLE DATA           ]   COPY public.upload_content (id, path, file_name, department_id, year_id, format) FROM stdin;
    public          postgres    false    216   >2                 0    24855    users 
   TABLE DATA           `   COPY public.users (id, name, password, designation, fullname, email, phone, gender) FROM stdin;
    public          postgres    false    210   3       ,           0    0    department_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.department_id_seq', 8, true);
          public          postgres    false    211            -           0    0    feedback_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.feedback_id_seq', 4, true);
          public          postgres    false    217            .           0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 1, false);
          public          postgres    false    213            /           0    0    teacher_upload_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.teacher_upload_id_seq', 5, true);
          public          postgres    false    219            0           0    0    upload_content_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.upload_content_id_seq', 8, true);
          public          postgres    false    215            1           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 6, true);
          public          postgres    false    209            �           2606    24873    department department_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.department DROP CONSTRAINT department_pkey;
       public            postgres    false    212            �           2606    24900    feedback feedback_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.feedback DROP CONSTRAINT feedback_pkey;
       public            postgres    false    218            �           2606    24882    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            postgres    false    214            |           2606    24864    users order_unique 
   CONSTRAINT     M   ALTER TABLE ONLY public.users
    ADD CONSTRAINT order_unique UNIQUE (name);
 <   ALTER TABLE ONLY public.users DROP CONSTRAINT order_unique;
       public            postgres    false    210            �           2606    24909 "   teacher_upload teacher_upload_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.teacher_upload
    ADD CONSTRAINT teacher_upload_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.teacher_upload DROP CONSTRAINT teacher_upload_pkey;
       public            postgres    false    220            �           2606    24891 "   upload_content upload_content_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_content
    ADD CONSTRAINT upload_content_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_content DROP CONSTRAINT upload_content_pkey;
       public            postgres    false    216            ~           2606    24862    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    210               M   x�3�t��-(-I-RN�L�KN�2���K�/�M,���SIM�����O���t�,��Qp�K��KM-��K����� =��         D   x�3��2�t�+I-R(I�(Q�H-J����2�t��QH��O�2�,��,V "W!9'��X!?�+F��� W�            x������ � �         G   x�3�,�H-N,JN,�-�/�I�72020034�7��-0�L)�4²̔�|Δ����������"�=... �3�         �   x�]���0E��+<�R�+,0"E!ujSGM@���<�<ؾ>�N��>4�L��JD"�R�Ⱥ�h��c\��gl��jO}��7�`f ����×,�5��W��gq:�K�|��_)E�җ��Ѡ�<��,�X�͸Q�Q�[�kG�}�Y<������L���8	5�u0���S�9 ]�P�         �   x����
� E��W�ʠ�}ݞG�`P��)3-e���t��AH.77���s1ꬲ ��V(�lژ�q��vxo�e1�t5ui�5:Vw��5�8y�J>�pe��v�D�9ˀ�xy:߫���SA��c�f��Q'9Lr�&Y��^��GU     