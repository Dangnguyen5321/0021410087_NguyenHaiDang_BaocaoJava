--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-10-21 21:00:35

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
-- TOC entry 218 (class 1259 OID 17095)
-- Name: danh_muc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.danh_muc (
    id integer NOT NULL,
    ten character varying(255) NOT NULL,
    ten_anh character varying(255),
    hoat_dong boolean DEFAULT true
);


ALTER TABLE public.danh_muc OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17094)
-- Name: danh_muc_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.danh_muc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.danh_muc_id_seq OWNER TO postgres;

--
-- TOC entry 4908 (class 0 OID 0)
-- Dependencies: 217
-- Name: danh_muc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.danh_muc_id_seq OWNED BY public.danh_muc.id;


--
-- TOC entry 224 (class 1259 OID 17134)
-- Name: dia_chi_don_hang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dia_chi_don_hang (
    id integer NOT NULL,
    ho character varying(255),
    ten character varying(255),
    email character varying(255),
    so_dien_thoai character varying(255),
    dia_chi character varying(255),
    thanh_pho character varying(255),
    tinh character varying(255),
    ma_buu_chinh character varying(255)
);


ALTER TABLE public.dia_chi_don_hang OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17133)
-- Name: dia_chi_don_hang_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dia_chi_don_hang_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dia_chi_don_hang_id_seq OWNER TO postgres;

--
-- TOC entry 4909 (class 0 OID 0)
-- Dependencies: 223
-- Name: dia_chi_don_hang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dia_chi_don_hang_id_seq OWNED BY public.dia_chi_don_hang.id;


--
-- TOC entry 226 (class 1259 OID 17143)
-- Name: don_hang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.don_hang (
    id integer NOT NULL,
    ma_don_hang character varying(255),
    ngay_dat date NOT NULL,
    san_pham_id integer,
    gia double precision NOT NULL,
    so_luong integer NOT NULL,
    nguoi_dung_id integer,
    trang_thai character varying(255),
    hinh_thuc_thanh_toan character varying(255),
    dia_chi_id integer
);


ALTER TABLE public.don_hang OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17142)
-- Name: don_hang_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.don_hang_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.don_hang_id_seq OWNER TO postgres;

--
-- TOC entry 4910 (class 0 OID 0)
-- Dependencies: 225
-- Name: don_hang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.don_hang_id_seq OWNED BY public.don_hang.id;


--
-- TOC entry 222 (class 1259 OID 17115)
-- Name: gio_hang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gio_hang (
    id integer NOT NULL,
    nguoi_dung_id integer,
    san_pham_id integer,
    so_luong integer NOT NULL
);


ALTER TABLE public.gio_hang OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 17114)
-- Name: gio_hang_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gio_hang_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gio_hang_id_seq OWNER TO postgres;

--
-- TOC entry 4911 (class 0 OID 0)
-- Dependencies: 221
-- Name: gio_hang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gio_hang_id_seq OWNED BY public.gio_hang.id;


--
-- TOC entry 216 (class 1259 OID 17080)
-- Name: nguoi_dung; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nguoi_dung (
    id integer NOT NULL,
    ten character varying(255) NOT NULL,
    so_dien_thoai character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    dia_chi character varying(255),
    thanh_pho character varying(255),
    tinh character varying(255),
    ma_buu_chinh character varying(255),
    mat_khau character varying(255) NOT NULL,
    anh_dai_dien character varying(255),
    vai_tro character varying(255) DEFAULT 'USER'::character varying,
    kich_hoat boolean DEFAULT true,
    tai_khoan_khong_bi_khoa boolean DEFAULT true,
    so_lan_thu_that_bai integer DEFAULT 0,
    thoi_gian_khoa timestamp without time zone,
    ma_khoi_phuc character varying(255)
);


ALTER TABLE public.nguoi_dung OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 17079)
-- Name: nguoi_dung_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nguoi_dung_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nguoi_dung_id_seq OWNER TO postgres;

--
-- TOC entry 4912 (class 0 OID 0)
-- Dependencies: 215
-- Name: nguoi_dung_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nguoi_dung_id_seq OWNED BY public.nguoi_dung.id;


--
-- TOC entry 220 (class 1259 OID 17105)
-- Name: san_pham; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.san_pham (
    id integer NOT NULL,
    tieu_de character varying(500),
    mo_ta character varying(5000),
    danh_muc character varying(255),
    gia double precision,
    so_luong_ton integer,
    hinh_anh character varying(255),
    giam_gia integer,
    gia_giam double precision,
    hoat_dong boolean DEFAULT true
);


ALTER TABLE public.san_pham OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17104)
-- Name: san_pham_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.san_pham_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.san_pham_id_seq OWNER TO postgres;

--
-- TOC entry 4913 (class 0 OID 0)
-- Dependencies: 219
-- Name: san_pham_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.san_pham_id_seq OWNED BY public.san_pham.id;


--
-- TOC entry 4718 (class 2604 OID 17098)
-- Name: danh_muc id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.danh_muc ALTER COLUMN id SET DEFAULT nextval('public.danh_muc_id_seq'::regclass);


--
-- TOC entry 4723 (class 2604 OID 17137)
-- Name: dia_chi_don_hang id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dia_chi_don_hang ALTER COLUMN id SET DEFAULT nextval('public.dia_chi_don_hang_id_seq'::regclass);


--
-- TOC entry 4724 (class 2604 OID 17146)
-- Name: don_hang id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.don_hang ALTER COLUMN id SET DEFAULT nextval('public.don_hang_id_seq'::regclass);


--
-- TOC entry 4722 (class 2604 OID 17118)
-- Name: gio_hang id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gio_hang ALTER COLUMN id SET DEFAULT nextval('public.gio_hang_id_seq'::regclass);


--
-- TOC entry 4713 (class 2604 OID 17083)
-- Name: nguoi_dung id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nguoi_dung ALTER COLUMN id SET DEFAULT nextval('public.nguoi_dung_id_seq'::regclass);


--
-- TOC entry 4720 (class 2604 OID 17108)
-- Name: san_pham id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.san_pham ALTER COLUMN id SET DEFAULT nextval('public.san_pham_id_seq'::regclass);


--
-- TOC entry 4894 (class 0 OID 17095)
-- Dependencies: 218
-- Data for Name: danh_muc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.danh_muc (id, ten, ten_anh, hoat_dong) FROM stdin;
1	MSI	msi.jpg	t
2	HP	hp.png	t
3	Dell	dell.png	t
5	Asus	asus.jpg	t
4	Acer	acer.jpg	t
\.


--
-- TOC entry 4900 (class 0 OID 17134)
-- Dependencies: 224
-- Data for Name: dia_chi_don_hang; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dia_chi_don_hang (id, ho, ten, email, so_dien_thoai, dia_chi, thanh_pho, tinh, ma_buu_chinh) FROM stdin;
1	Nguyễn	Đăng	nguyenhaidang12cb3tqt@gmail.com	0943572251	Số 185, Ấp 3, xã Phong Mỹ	Cao Lãnh	Đồng Tháp	870000
2	Nguyễn		nguyenhaidang12cb3tqt@gmail.com	0943572251	Số 185, Ấp 3, xã Phong Mỹ	Cao Lãnh	Đồng Tháp	870000
3	Nguyễn	Đăng	nguyenhaidang12cb3tqt@gmail.com	0943572251	Số 185, Ấp 3, xã Phong Mỹ	Cao Lãnh	Đồng Tháp	870000
4	Nguyễn	Đăng	nguyenhaidang12cb3tqt@gmail.com	0943572251	Số 185, Ấp 3, xã Phong Mỹ	Cao Lãnh	Đồng Tháp	870000
5	Nguyễn	Đăng	nguyenhaidang12cb3tqt@gmail.com	0943572251	Số 185, Ấp 3, xã Phong Mỹ	Cao Lãnh	Đồng Tháp	870000
6	Nguyễn	Đăng	nguyenhaidang12cb3tqt@gmail.com	0943572251	Số 185, Ấp 3, xã Phong Mỹ	Cao Lãnh	Đồng Tháp	870000
7	Đăng	Nguyễn	dangnguyen5321@gmail.com	0943572251	Số 185, Ấp 3, xã Phong Mỹ	Cao Lãnh	Đồng Tháp	870000
\.


--
-- TOC entry 4902 (class 0 OID 17143)
-- Dependencies: 226
-- Data for Name: don_hang; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.don_hang (id, ma_don_hang, ngay_dat, san_pham_id, gia, so_luong, nguoi_dung_id, trang_thai, hinh_thuc_thanh_toan, dia_chi_id) FROM stdin;
1	65fa73b1-117b-47db-9d77-6a6cf8d65edf	2024-10-20	\N	16200000	1	4	Đã hủy	ONLINE	1
2	ca16af8f-823b-480d-b309-16b332e9be42	2024-10-20	\N	16200000	2	4	Đã hủy	ONLINE	2
4	ed89c862-50d0-48a7-8611-1d92694b7e6f	2024-10-20	\N	16200000	1	4	Đang tiến hành	ONLINE	4
5	d593b650-8c8d-4916-a016-395a0b9a3898	2024-10-20	\N	16200000	1	4	Đang tiến hành	ONLINE	5
6	ac5222de-54a1-48b7-8ecb-299149a4e330	2024-10-20	\N	16200000	1	4	Đang tiến hành	COD	6
3	3b0d9163-f4d1-4068-94da-7085af2989dc	2024-10-20	\N	16200000	1	4	Đã nhận đơn hàng	ONLINE	3
7	3239955c-f71e-409e-b963-240b848ca2e5	2024-10-20	\N	16200000	3	5	Đang tiến hành	ONLINE	7
\.


--
-- TOC entry 4898 (class 0 OID 17115)
-- Dependencies: 222
-- Data for Name: gio_hang; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gio_hang (id, nguoi_dung_id, san_pham_id, so_luong) FROM stdin;
3	5	2	1
\.


--
-- TOC entry 4892 (class 0 OID 17080)
-- Dependencies: 216
-- Data for Name: nguoi_dung; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nguoi_dung (id, ten, so_dien_thoai, email, dia_chi, thanh_pho, tinh, ma_buu_chinh, mat_khau, anh_dai_dien, vai_tro, kich_hoat, tai_khoan_khong_bi_khoa, so_lan_thu_that_bai, thoi_gian_khoa, ma_khoi_phuc) FROM stdin;
3	admin	0943572251	admin@admin.com	185 Quốc lộ 30	Cao Lãnh	Đồng Tháp	870000	$2a$10$DCNTsoU2TgH53bmYe/VzROD2YIMGWlqsZgWGGQCH11K91Gbsp/mK.	admin.png	ROLE_ADMIN	t	t	0	\N	\N
5	Nguyễn Hải Đăng	0943572251	dangnguyen5321@gmail.com	Số 185, Ấp 3, xã Phong Mỹ	Cao Lãnh	Đồng Tháp	870000	$2a$10$SgZDwTtOi7lfqiE/4xwuJO15m.a25nhLKfibSJvXOvXVcOvomcopi	dangnguyen.jpg	ROLE_USER	t	t	0	\N	\N
4	Nguyễn Hải Đăng	0943572251	nguyenhaidang12cb3tqt@gmail.com	Số 185, Ấp 3, xã Phong Mỹ	Cao Lãnh	Đồng Tháp	870000	$2a$10$aqj8W8gb3oV.vBkixNFameCIB7cMHKTU6fUIk6o6Bk3IW3ShKDqOi	dangnguyen.jpg	ROLE_USER	t	t	0	\N	\N
6	Nguyễn Văn A	0123456789	a@admin.com	Cần Thơ	Cần Thơ	Cần Thơ	9874654	$2a$10$gnAfmA40p1Ads2q9jSCwRO3RlZ7Jl6GkPBSuY4C1WdMcPFVAalIXO	admin.png	ROLE_ADMIN	t	t	0	\N	\N
\.


--
-- TOC entry 4896 (class 0 OID 17105)
-- Dependencies: 220
-- Data for Name: san_pham; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.san_pham (id, tieu_de, mo_ta, danh_muc, gia, so_luong_ton, hinh_anh, giam_gia, gia_giam, hoat_dong) FROM stdin;
2	Laptop Msi Alpha 15	Laptop MSI Alpha 15 B5EEK 205VN là dòng laptop gaming luôn được các game thủ tin tưởng và yêu thích bởi sức mạnh không ngừng được cải thiện và thông số kỹ thuật tuyệt vời. MSI Alpha 15 là sự lựa chọn hợp lý cho các game thủ chuyên nghiệp.	MSI	15000000	10	Laptop Msi Alpha 15 B5EEK 205VN-1655647902-0.png	0	15000000	t
4	Laptop Msi Bravo 15	Phục kích ở nơi hiểm yếu, quan sát kĩ càng kẻ địch trước khi xuất trận mạnh mẽ, MSI Bravo 15 B5DD 276VN đã sẵn sàng cho chiến trường game rực lửa. Kết hợp hoàn hảo giữa vi xử lí AMD Ryzen 5 5600H và card đồ họa AMD Radeon RX 5500M.	MSI	18000000	20	Laptop Msi Bravo 15 B5DD 276VN-1655648098-0.jpg	0	18000000	t
3	Laptop Dell G15	Dell G15 5515 P105F004 70266674 nằm trong phân khúc laptop gaming 20 đến 25 triệu. Thiết kế kiểu dáng đẹp mắt với những tính năng vượt trội đây sẽ là một lựa chọn hoàn hảo dành riêng cho các game thủ.	Dell	22500000	5	Laptop Dell G15 5515 P105F004 70266674-1655647638-0.png	3	21825000	t
5	Laptop HP ProBook 450	Laptop có kiểu dáng bắt mắt với thân máy siêu mỏng, hoàn thiện từ vỏ nhôm nguyên khối sang trọng. Phiên bản màu bạc thời trang, logo HP nổi bật bóng bẩy cùng viền màn hình mỏng hai cạnh thể hiện sự hiện đại và thời thượng.	HP	13000000	15	Laptop HP ProBook 450 G8 614K3PA-1655648017-0.jpg	0	13000000	t
6	Laptop HP Pavilion 15	Laptop HP Pavilion 15 EG0513TU 46M12PA là mẫu laptop cho sinh viên, nhân viên văn phòng tầm trung rất được chú ý bởi thiết kế và hiệu năng mạnh mẽ của mình.	HP	13000000	15	Laptop HP Pavilion 15 EG0513TU 46M12PA-1655647795-0.jpg	0	13000000	t
7	Laptop Acer Swift 4	Nổi tiếng trong dòng laptop văn phòng với thiết kế mỏng nhẹ đi cùng giá thành hợp lý, Acer Aspire 3 luôn là lựa chọn hàng đầu dành cho người dùng. A315 58 53S6 sở hữu chip Intel Gen 11 mới nhất hiện nay cùng nhiều tính năng vượt trội.	Acer	15150000	5	Laptop Acer Aspire 3 A315 58 53S6-1655647280-0.png	0	15150000	t
8	Laptop Acer Aspire 3	Trang bị bộ vi xử lý Intel thế hệ thứ 10 Ice Lake mới nhất, ổ cứng SSD siêu tốc và màn hình Full HD tuyệt đẹp, Acer Aspire 3 A315 56 37DV là chiếc laptop đáp ứng tốt công việc và giải trí của bạn trong tầm giá hấp dẫn.	Acer	10500000	5	Laptop Acer Aspire 3 A315 56 37DV-1655646705-0.jpg	0	10500000	t
9	Laptop Asus Vivobook Pro	Laptop Asus Vivobook Pro M3401QA KM040W là chiếc laptop văn phòng thiết kế mỏng nhẹ nhưng lại sở hữu cấu hình cực mạng và đạt hiệu suất làm việc cao. Màn hình OLED được thiết kế sinh động mang đến những trải nghiệm tốt nhất cho người dùng.	Asus	12500000	20	Laptop Asus Vivobook Pro M3401QA KM040W-1655647504-0.jpg	0	12500000	t
10	Laptop Asus VivoBook 14	Một trong những sản phẩm laptop cho sinh viên được đánh giá cao là Asus VivoBook X1402ZA EK084W. Thiết kế nhỏ gọn, cấu hình mạnh đáp ứng mọi yêu cầu từ học tập đến làm việc hay giải trí.	Asus	13900000	20	Laptop Asus VivoBook 14 X1402ZA EK084W-1655647401-0.png	0	13900000	t
\.


--
-- TOC entry 4914 (class 0 OID 0)
-- Dependencies: 217
-- Name: danh_muc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.danh_muc_id_seq', 6, true);


--
-- TOC entry 4915 (class 0 OID 0)
-- Dependencies: 223
-- Name: dia_chi_don_hang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dia_chi_don_hang_id_seq', 7, true);


--
-- TOC entry 4916 (class 0 OID 0)
-- Dependencies: 225
-- Name: don_hang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.don_hang_id_seq', 7, true);


--
-- TOC entry 4917 (class 0 OID 0)
-- Dependencies: 221
-- Name: gio_hang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gio_hang_id_seq', 3, true);


--
-- TOC entry 4918 (class 0 OID 0)
-- Dependencies: 215
-- Name: nguoi_dung_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nguoi_dung_id_seq', 6, true);


--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 219
-- Name: san_pham_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.san_pham_id_seq', 10, true);


--
-- TOC entry 4730 (class 2606 OID 17103)
-- Name: danh_muc danh_muc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.danh_muc
    ADD CONSTRAINT danh_muc_pkey PRIMARY KEY (id);


--
-- TOC entry 4738 (class 2606 OID 17141)
-- Name: dia_chi_don_hang dia_chi_don_hang_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dia_chi_don_hang
    ADD CONSTRAINT dia_chi_don_hang_pkey PRIMARY KEY (id);


--
-- TOC entry 4740 (class 2606 OID 17183)
-- Name: don_hang don_hang_ma_don_hang_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.don_hang
    ADD CONSTRAINT don_hang_ma_don_hang_key UNIQUE (ma_don_hang);


--
-- TOC entry 4742 (class 2606 OID 17148)
-- Name: don_hang don_hang_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.don_hang
    ADD CONSTRAINT don_hang_pkey PRIMARY KEY (id);


--
-- TOC entry 4734 (class 2606 OID 17122)
-- Name: gio_hang gio_hang_nguoi_san_pham_uk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gio_hang
    ADD CONSTRAINT gio_hang_nguoi_san_pham_uk UNIQUE (nguoi_dung_id, san_pham_id);


--
-- TOC entry 4736 (class 2606 OID 17120)
-- Name: gio_hang gio_hang_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gio_hang
    ADD CONSTRAINT gio_hang_pkey PRIMARY KEY (id);


--
-- TOC entry 4726 (class 2606 OID 17093)
-- Name: nguoi_dung nguoi_dung_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nguoi_dung
    ADD CONSTRAINT nguoi_dung_email_key UNIQUE (email);


--
-- TOC entry 4728 (class 2606 OID 17091)
-- Name: nguoi_dung nguoi_dung_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nguoi_dung
    ADD CONSTRAINT nguoi_dung_pkey PRIMARY KEY (id);


--
-- TOC entry 4732 (class 2606 OID 17113)
-- Name: san_pham san_pham_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.san_pham
    ADD CONSTRAINT san_pham_pkey PRIMARY KEY (id);


--
-- TOC entry 4745 (class 2606 OID 17161)
-- Name: don_hang don_hang_dia_chi_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.don_hang
    ADD CONSTRAINT don_hang_dia_chi_id_fkey FOREIGN KEY (dia_chi_id) REFERENCES public.dia_chi_don_hang(id) ON DELETE CASCADE;


--
-- TOC entry 4746 (class 2606 OID 17156)
-- Name: don_hang don_hang_nguoi_dung_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.don_hang
    ADD CONSTRAINT don_hang_nguoi_dung_id_fkey FOREIGN KEY (nguoi_dung_id) REFERENCES public.nguoi_dung(id) ON DELETE SET NULL;


--
-- TOC entry 4747 (class 2606 OID 17151)
-- Name: don_hang don_hang_san_pham_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.don_hang
    ADD CONSTRAINT don_hang_san_pham_id_fkey FOREIGN KEY (san_pham_id) REFERENCES public.san_pham(id) ON DELETE SET NULL;


--
-- TOC entry 4743 (class 2606 OID 17123)
-- Name: gio_hang gio_hang_nguoi_dung_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gio_hang
    ADD CONSTRAINT gio_hang_nguoi_dung_id_fkey FOREIGN KEY (nguoi_dung_id) REFERENCES public.nguoi_dung(id) ON DELETE CASCADE;


--
-- TOC entry 4744 (class 2606 OID 17128)
-- Name: gio_hang gio_hang_san_pham_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gio_hang
    ADD CONSTRAINT gio_hang_san_pham_id_fkey FOREIGN KEY (san_pham_id) REFERENCES public.san_pham(id) ON DELETE CASCADE;


-- Completed on 2024-10-21 21:00:35

--
-- PostgreSQL database dump complete
--

