PGDMP         ,        	    
    z         	   RoblandCM    15.0    15.0 %    #           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            $           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            %           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            &           1262    16398 	   RoblandCM    DATABASE     ?   CREATE DATABASE "RoblandCM" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "RoblandCM";
                postgres    false            ?            1255    16423     adddepartment(character varying) 	   PROCEDURE     ?   CREATE PROCEDURE public.adddepartment(IN departmentname character varying)
    LANGUAGE plpgsql
    AS $$
begin 
  insert into Department(DepartmentName) values (DepartmentName);

    commit;
end;$$;
 J   DROP PROCEDURE public.adddepartment(IN departmentname character varying);
       public          postgres    false            ?            1259    32775    MyFiles    TABLE     N   CREATE TABLE public."MyFiles" (
    "ID" integer NOT NULL,
    "Doc" bytea
);
    DROP TABLE public."MyFiles";
       public         heap    postgres    false            ?            1259    16412 
   department    TABLE     q   CREATE TABLE public.department (
    departmentid integer NOT NULL,
    departmentname character varying(500)
);
    DROP TABLE public.department;
       public         heap    postgres    false            ?            1259    16411    department_departmentid_seq    SEQUENCE     ?   CREATE SEQUENCE public.department_departmentid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.department_departmentid_seq;
       public          postgres    false    216            '           0    0    department_departmentid_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.department_departmentid_seq OWNED BY public.department.departmentid;
          public          postgres    false    215            ?            1259    16417    employee    TABLE     ?   CREATE TABLE public.employee (
    employeeid integer NOT NULL,
    employeename character varying(500),
    department character varying(500),
    dateofjoining date,
    photofilename character varying(500)
);
    DROP TABLE public.employee;
       public         heap    postgres    false            ?            1259    16416    employee_employeeid_seq    SEQUENCE     ?   CREATE SEQUENCE public.employee_employeeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.employee_employeeid_seq;
       public          postgres    false    218            (           0    0    employee_employeeid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.employee_employeeid_seq OWNED BY public.employee.employeeid;
          public          postgres    false    217            ?            1259    32788    tblclientdocuments    TABLE       CREATE TABLE public.tblclientdocuments (
    id integer NOT NULL,
    clientid integer,
    docname character varying(256),
    description character varying(256),
    contenttype character varying(256),
    username character varying(256),
    document bytea
);
 &   DROP TABLE public.tblclientdocuments;
       public         heap    postgres    false            ?            1259    32787    tblclientdocuments_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tblclientdocuments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tblclientdocuments_id_seq;
       public          postgres    false    223            )           0    0    tblclientdocuments_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.tblclientdocuments_id_seq OWNED BY public.tblclientdocuments.id;
          public          postgres    false    222            ?            1259    16425    tblusers    TABLE       CREATE TABLE public.tblusers (
    id integer NOT NULL,
    username character varying(256),
    firstname character varying(256),
    lastname character varying(256),
    city character varying(256),
    state character varying(256),
    country character varying(256)
);
    DROP TABLE public.tblusers;
       public         heap    postgres    false            ?            1259    16424    tblusers_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tblusers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tblusers_id_seq;
       public          postgres    false    220            *           0    0    tblusers_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tblusers_id_seq OWNED BY public.tblusers.id;
          public          postgres    false    219            ?            1259    16406    test    TABLE     G   CREATE TABLE public.test (
    id bigint NOT NULL,
    names "char"
);
    DROP TABLE public.test;
       public         heap    postgres    false            }           2604    16415    department departmentid    DEFAULT     ?   ALTER TABLE ONLY public.department ALTER COLUMN departmentid SET DEFAULT nextval('public.department_departmentid_seq'::regclass);
 F   ALTER TABLE public.department ALTER COLUMN departmentid DROP DEFAULT;
       public          postgres    false    216    215    216            ~           2604    16420    employee employeeid    DEFAULT     z   ALTER TABLE ONLY public.employee ALTER COLUMN employeeid SET DEFAULT nextval('public.employee_employeeid_seq'::regclass);
 B   ALTER TABLE public.employee ALTER COLUMN employeeid DROP DEFAULT;
       public          postgres    false    217    218    218            ?           2604    32791    tblclientdocuments id    DEFAULT     ~   ALTER TABLE ONLY public.tblclientdocuments ALTER COLUMN id SET DEFAULT nextval('public.tblclientdocuments_id_seq'::regclass);
 D   ALTER TABLE public.tblclientdocuments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223                       2604    16428    tblusers id    DEFAULT     j   ALTER TABLE ONLY public.tblusers ALTER COLUMN id SET DEFAULT nextval('public.tblusers_id_seq'::regclass);
 :   ALTER TABLE public.tblusers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220                      0    32775    MyFiles 
   TABLE DATA           0   COPY public."MyFiles" ("ID", "Doc") FROM stdin;
    public          postgres    false    221   ?(                 0    16412 
   department 
   TABLE DATA           B   COPY public.department (departmentid, departmentname) FROM stdin;
    public          postgres    false    216   )                 0    16417    employee 
   TABLE DATA           f   COPY public.employee (employeeid, employeename, department, dateofjoining, photofilename) FROM stdin;
    public          postgres    false    218   <)                  0    32788    tblclientdocuments 
   TABLE DATA           q   COPY public.tblclientdocuments (id, clientid, docname, description, contenttype, username, document) FROM stdin;
    public          postgres    false    223   {)                 0    16425    tblusers 
   TABLE DATA           [   COPY public.tblusers (id, username, firstname, lastname, city, state, country) FROM stdin;
    public          postgres    false    220   ?)                 0    16406    test 
   TABLE DATA           )   COPY public.test (id, names) FROM stdin;
    public          postgres    false    214   T*       +           0    0    department_departmentid_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.department_departmentid_seq', 3, true);
          public          postgres    false    215            ,           0    0    employee_employeeid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.employee_employeeid_seq', 1, true);
          public          postgres    false    217            -           0    0    tblclientdocuments_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tblclientdocuments_id_seq', 5, true);
          public          postgres    false    222            .           0    0    tblusers_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tblusers_id_seq', 7, true);
          public          postgres    false    219            ?           2606    32781    MyFiles MyFiles_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."MyFiles"
    ADD CONSTRAINT "MyFiles_pkey" PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY public."MyFiles" DROP CONSTRAINT "MyFiles_pkey";
       public            postgres    false    221            ?           2606    32795 *   tblclientdocuments tblclientdocuments_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tblclientdocuments
    ADD CONSTRAINT tblclientdocuments_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.tblclientdocuments DROP CONSTRAINT tblclientdocuments_pkey;
       public            postgres    false    223            ?           2606    16432    tblusers tblusers_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tblusers
    ADD CONSTRAINT tblusers_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tblusers DROP CONSTRAINT tblusers_pkey;
       public            postgres    false    220            ?           2606    16410    test test_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.test DROP CONSTRAINT test_pkey;
       public            postgres    false    214                  x?????? ? ?         &   x?3???2?.-(?/*?2?t?????K?????? |
?         /   x?3?t?O???4202?50?52?L??ϫ??/-?+?K?????? ?G	?             x?????? ? ?         ?   x?m???@D?ӏ1D?h???~??
?TvY??~?E=?d?&o&??$???H?uQ?ȫ?B?R?q`/?WO??????'C>?0[??;w?8?	??????Q?9????C?!#n??J{??c?????XWEq???0?^?b\ti?b?η???=??"S7?eED/W?J^            x?????? ? ?     