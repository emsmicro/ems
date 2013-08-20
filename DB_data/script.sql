USE [DEMS]
GO
/****** Object:  Table [dbo].[stav]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stav]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stav](
	[id] [int] NOT NULL,
	[zkratka] [nvarchar](20) NOT NULL,
	[zkratka2] [nchar](10) NULL,
	[popis] [ntext] NULL,
	[typ] [nchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[zkratka] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
INSERT [dbo].[stav] ([id], [zkratka], [zkratka2], [popis], [typ]) VALUES (1, N'Založeno', N'OfferStart', N'Nabídka založena', N'N')
INSERT [dbo].[stav] ([id], [zkratka], [zkratka2], [popis], [typ]) VALUES (2, N'Rozpracováno', N'InProgress', N'Nabídka rozpracována', N'N')
INSERT [dbo].[stav] ([id], [zkratka], [zkratka2], [popis], [typ]) VALUES (3, N'Čekání na ceny', N'WaitPrices', N'Čekání na ocenění', N'P')
INSERT [dbo].[stav] ([id], [zkratka], [zkratka2], [popis], [typ]) VALUES (4, N'TPV zahájeno', N'TPV_Start ', N'Zahájena tvorba TPV', N'P')
INSERT [dbo].[stav] ([id], [zkratka], [zkratka2], [popis], [typ]) VALUES (5, N'TPV dokončeno', N'TPV-Finish', N'Dokončena tvorba TPV', N'P')
INSERT [dbo].[stav] ([id], [zkratka], [zkratka2], [popis], [typ]) VALUES (6, N'Materiál oceněn', N'MatPrices ', N'Ocenění materiálu dokončeno', N'P')
INSERT [dbo].[stav] ([id], [zkratka], [zkratka2], [popis], [typ]) VALUES (7, N'Produkt oceněn', N'ProdPrices', N'Ocenění produktu dokončeno', N'P')
INSERT [dbo].[stav] ([id], [zkratka], [zkratka2], [popis], [typ]) VALUES (8, N'Odesláno', N'OfferSent ', N'Nabídka odeslána', N'N')
INSERT [dbo].[stav] ([id], [zkratka], [zkratka2], [popis], [typ]) VALUES (9, N'Ve změně', N'InChange  ', N'Požadavek na změnu nabídky', N'N')
INSERT [dbo].[stav] ([id], [zkratka], [zkratka2], [popis], [typ]) VALUES (10, N'Odesláno po změně', N'SentChngs ', N'Nabídka odeslána po provedení úprav', N'N')
INSERT [dbo].[stav] ([id], [zkratka], [zkratka2], [popis], [typ]) VALUES (11, N'Akceptováno', N'Accepted  ', N'Nabídka akceptována', N'N')
INSERT [dbo].[stav] ([id], [zkratka], [zkratka2], [popis], [typ]) VALUES (12, N'Odmítnuto', N'Denied    ', N'Nabídka odmítnuta', N'N')
INSERT [dbo].[stav] ([id], [zkratka], [zkratka2], [popis], [typ]) VALUES (21, N'Uzamčeno', N'Locked    ', N'Potvrzeno', NULL)
INSERT [dbo].[stav] ([id], [zkratka], [zkratka2], [popis], [typ]) VALUES (22, N'Odemčeno', N'Unlocked  ', N'Odpotvrzeno', NULL)
/****** Object:  Table [dbo].[staty]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[staty]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[staty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[zkratka] [nvarchar](10) NOT NULL,
	[nazev] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[nazev] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[zkratka] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[staty] ON
INSERT [dbo].[staty] ([id], [zkratka], [nazev]) VALUES (1, N'CZ', N'Česká republika')
INSERT [dbo].[staty] ([id], [zkratka], [nazev]) VALUES (2, N'SK', N'Slovenská republika')
INSERT [dbo].[staty] ([id], [zkratka], [nazev]) VALUES (3, N'DE', N'Německo')
INSERT [dbo].[staty] ([id], [zkratka], [nazev]) VALUES (4, N'PL', N'Polsko')
INSERT [dbo].[staty] ([id], [zkratka], [nazev]) VALUES (5, N'AT', N'Rakousko')
INSERT [dbo].[staty] ([id], [zkratka], [nazev]) VALUES (6, N'FR', N'Francie')
INSERT [dbo].[staty] ([id], [zkratka], [nazev]) VALUES (7, N'GB', N'Velká Británie')
INSERT [dbo].[staty] ([id], [zkratka], [nazev]) VALUES (8, N'RU', N'Rusko')
INSERT [dbo].[staty] ([id], [zkratka], [nazev]) VALUES (9, N'SE', N'Švédsko')
INSERT [dbo].[staty] ([id], [zkratka], [nazev]) VALUES (10, N'FI', N'Finsko')
SET IDENTITY_INSERT [dbo].[staty] OFF
/****** Object:  Table [dbo].[set_sazeb_o]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[set_sazeb_o]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[set_sazeb_o](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nazev] [nvarchar](50) NOT NULL,
	[platnost_od] [date] NOT NULL,
	[platnost_do] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[set_sazeb_o] ON
INSERT [dbo].[set_sazeb_o] ([id], [nazev], [platnost_od], [platnost_do]) VALUES (1, N'Sazby operací H2011', CAST(0x6E340B00 AS Date), CAST(0x6D340B00 AS Date))
INSERT [dbo].[set_sazeb_o] ([id], [nazev], [platnost_od], [platnost_do]) VALUES (2, N'Sazby operací H2012', CAST(0xDC350B00 AS Date), CAST(0xDB350B00 AS Date))
SET IDENTITY_INSERT [dbo].[set_sazeb_o] OFF
/****** Object:  Table [dbo].[typy_nakladu]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[typy_nakladu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[typy_nakladu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[zkratka] [nvarchar](15) NOT NULL,
	[nazev] [nvarchar](100) NOT NULL,
	[poradi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[nazev] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[zkratka] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[typy_nakladu] ON
INSERT [dbo].[typy_nakladu] ([id], [zkratka], [nazev], [poradi]) VALUES (1, N'MaterialN', N'Náklady materiálové', 1)
INSERT [dbo].[typy_nakladu] ([id], [zkratka], [nazev], [poradi]) VALUES (2, N'OperRucPN', N'Náklady na operace ruční', 3)
INSERT [dbo].[typy_nakladu] ([id], [zkratka], [nazev], [poradi]) VALUES (3, N'OperStrPN', N'Náklady na operace strojní', 5)
INSERT [dbo].[typy_nakladu] ([id], [zkratka], [nazev], [poradi]) VALUES (4, N'OperRucDN', N'Náklady na dávku ruční', 4)
INSERT [dbo].[typy_nakladu] ([id], [zkratka], [nazev], [poradi]) VALUES (5, N'OperStrDN', N'Náklady na dávku strojní', 6)
INSERT [dbo].[typy_nakladu] ([id], [zkratka], [nazev], [poradi]) VALUES (6, N'OstatniPN', N'Ostatní přímé náklady', 7)
INSERT [dbo].[typy_nakladu] ([id], [zkratka], [nazev], [poradi]) VALUES (7, N'JednorazN', N'Náklady jednorázové', 8)
INSERT [dbo].[typy_nakladu] ([id], [zkratka], [nazev], [poradi]) VALUES (8, N'MaterialPC', N'Prodejní cena materiálu', 2)
SET IDENTITY_INSERT [dbo].[typy_nakladu] OFF
/****** Object:  Table [dbo].[typy_kontaktu]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[typy_kontaktu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[typy_kontaktu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nazev] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[nazev] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[typy_kontaktu] ON
INSERT [dbo].[typy_kontaktu] ([id], [nazev]) VALUES (1, N'e-mail')
INSERT [dbo].[typy_kontaktu] ([id], [nazev]) VALUES (6, N'fax')
INSERT [dbo].[typy_kontaktu] ([id], [nazev]) VALUES (2, N'icq')
INSERT [dbo].[typy_kontaktu] ([id], [nazev]) VALUES (5, N'mobil')
INSERT [dbo].[typy_kontaktu] ([id], [nazev]) VALUES (3, N'skype')
INSERT [dbo].[typy_kontaktu] ([id], [nazev]) VALUES (4, N'telefon')
SET IDENTITY_INSERT [dbo].[typy_kontaktu] OFF
/****** Object:  Table [dbo].[typy_cen]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[typy_cen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[typy_cen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[zkratka] [nvarchar](20) NOT NULL,
	[zkratka2] [nchar](20) NULL,
	[nazev] [nvarchar](100) NOT NULL,
	[poradi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[nazev] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[zkratka] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[typy_cen] ON
INSERT [dbo].[typy_cen] ([id], [zkratka], [zkratka2], [nazev], [poradi]) VALUES (1, N'MaterialC', N'Materiál            ', N'Cena přímého materiálu', 1)
INSERT [dbo].[typy_cen] ([id], [zkratka], [zkratka2], [nazev], [poradi]) VALUES (2, N'RucPraceC', N'Ruční práce         ', N'Cena přímé ruční práce', 2)
INSERT [dbo].[typy_cen] ([id], [zkratka], [zkratka2], [nazev], [poradi]) VALUES (3, N'StrPraceC', N'Strojní práce       ', N'Cena přímé strojní práce', 3)
INSERT [dbo].[typy_cen] ([id], [zkratka], [zkratka2], [nazev], [poradi]) VALUES (4, N'OstSluzbC', N'Ost. služby         ', N'Cena ostatních přímých služeb', 4)
INSERT [dbo].[typy_cen] ([id], [zkratka], [zkratka2], [nazev], [poradi]) VALUES (5, N'SprvRezie', N'Správní režie       ', N'Správní režie', 6)
INSERT [dbo].[typy_cen] ([id], [zkratka], [zkratka2], [nazev], [poradi]) VALUES (6, N'Zisk', N'Zisk                ', N'Zisk', 7)
INSERT [dbo].[typy_cen] ([id], [zkratka], [zkratka2], [nazev], [poradi]) VALUES (7, N'ProdCenaP', N'Cena                ', N'Prodejní cena vypočtená', 8)
INSERT [dbo].[typy_cen] ([id], [zkratka], [zkratka2], [nazev], [poradi]) VALUES (8, N'JednorazC', N'Jendoráz. n.        ', N'Prodejní cena jednorázových nákladů', 10)
INSERT [dbo].[typy_cen] ([id], [zkratka], [zkratka2], [nazev], [poradi]) VALUES (10, N'CenaNab', N'Cena nabíd.         ', N'Prodejní cena nabídková', 9)
INSERT [dbo].[typy_cen] ([id], [zkratka], [zkratka2], [nazev], [poradi]) VALUES (11, N'VyrobniC', N'Výrobní náklady     ', N'Výrobní náklady (cena)', 5)
SET IDENTITY_INSERT [dbo].[typy_cen] OFF
/****** Object:  Table [dbo].[typy_sazeb]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[typy_sazeb]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[typy_sazeb](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[zkratka] [nvarchar](15) NOT NULL,
	[nazev] [nvarchar](50) NOT NULL,
	[poradi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[nazev] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[zkratka] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[typy_sazeb] ON
INSERT [dbo].[typy_sazeb] ([id], [zkratka], [nazev], [poradi]) VALUES (1, N'VyrR', N'Výrobní režie (default) - EMS', 3)
INSERT [dbo].[typy_sazeb] ([id], [zkratka], [nazev], [poradi]) VALUES (2, N'SpraR', N'Správní režie', 6)
INSERT [dbo].[typy_sazeb] ([id], [zkratka], [nazev], [poradi]) VALUES (3, N'ZasR', N'Zásobovací režie', 1)
INSERT [dbo].[typy_sazeb] ([id], [zkratka], [nazev], [poradi]) VALUES (4, N'MZisku', N'Míra zisku', 7)
INSERT [dbo].[typy_sazeb] ([id], [zkratka], [nazev], [poradi]) VALUES (5, N'PrirON', N'Přirážka k ostatním nákladům', 5)
INSERT [dbo].[typy_sazeb] ([id], [zkratka], [nazev], [poradi]) VALUES (6, N'PrirJN', N'Marže k jednorázovým nákladům', 8)
INSERT [dbo].[typy_sazeb] ([id], [zkratka], [nazev], [poradi]) VALUES (7, N'VyrMR', N'Výrobní režie montáží AFC', 4)
INSERT [dbo].[typy_sazeb] ([id], [zkratka], [nazev], [poradi]) VALUES (8, N'MatM', N'Materiálová marže', 2)
SET IDENTITY_INSERT [dbo].[typy_sazeb] OFF
/****** Object:  Table [dbo].[kraje]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kraje]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kraje](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[zkratka] [nvarchar](10) NOT NULL,
	[nazev] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[nazev] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[zkratka] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[kraje] ON
INSERT [dbo].[kraje] ([id], [zkratka], [nazev]) VALUES (1, N'PHA', N'Hlavní město Praha')
INSERT [dbo].[kraje] ([id], [zkratka], [nazev]) VALUES (2, N'JHC', N'Jihočeský kraj')
INSERT [dbo].[kraje] ([id], [zkratka], [nazev]) VALUES (3, N'JHM', N'Jihomoravský kraj')
INSERT [dbo].[kraje] ([id], [zkratka], [nazev]) VALUES (4, N'KVK', N'Karlovarský kraj')
INSERT [dbo].[kraje] ([id], [zkratka], [nazev]) VALUES (5, N'KHK', N'Kralovehradecký kraj')
INSERT [dbo].[kraje] ([id], [zkratka], [nazev]) VALUES (6, N'LBK', N'Liberecký kraj')
INSERT [dbo].[kraje] ([id], [zkratka], [nazev]) VALUES (7, N'MSK', N'Moravskoslezský kraj')
INSERT [dbo].[kraje] ([id], [zkratka], [nazev]) VALUES (8, N'OLK', N'Olomoucký kraj')
INSERT [dbo].[kraje] ([id], [zkratka], [nazev]) VALUES (9, N'PAK', N'Pardubický kraj')
INSERT [dbo].[kraje] ([id], [zkratka], [nazev]) VALUES (10, N'PLK', N'Plzeňský kraj')
SET IDENTITY_INSERT [dbo].[kraje] OFF
/****** Object:  Table [dbo].[kalkulace]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kalkulace]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kalkulace](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[zkratka] [nvarchar](50) NULL,
	[nazev] [nvarchar](250) NULL,
	[popis] [nvarchar](max) NULL,
	[procedura] [nvarchar](50) NULL,
	[definice] [nvarchar](max) NULL,
	[mater_c] [nvarchar](250) NULL,
	[param] [nvarchar](50) NULL,
 CONSTRAINT [PK_kalkulace] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[kalkulace] ON
INSERT [dbo].[kalkulace] ([id], [zkratka], [nazev], [popis], [procedura], [definice], [mater_c], [param]) VALUES (1, N'KV1 - 1 VyrR', N'1 sazba výrobní režie', N'Jedna sazba výrobních režií vztažená na práce ruční i strojní. Na materiál uplatněná zásobovací režie i marže. Správní režie na celkové výrobní náklady vč. materiálu.', N'pricesCalculate', NULL, N'MaterialN*(1+ZasR+MatM)', N'')
INSERT [dbo].[kalkulace] ([id], [zkratka], [nazev], [popis], [procedura], [definice], [mater_c], [param]) VALUES (2, N'KV2 - 2 VyrR', N'2 sazby výrobní režie', N'Dvě sazby výrobních režií (elektronika a montáže AFC) vztažené na práce ruční i strojní. Na materiál uplatněná zásobovací režie i marže. Správní režie na celkové výrobní náklady vč. materiálu.', N'pricesCalculate2', NULL, N'MaterialN*(1+ZasR)', N'0')
INSERT [dbo].[kalkulace] ([id], [zkratka], [nazev], [popis], [procedura], [definice], [mater_c], [param]) VALUES (3, N'KV3 - 2 VyrR+MatM', N'2 výrobní režie + materiálová marže', N'Dvě sazby výrobních režií (elektronika a montáže AFC) vztažené na práce ruční i strojní. Na materiál uplatněná zásobovací režie i marže. Správní režie na výrobní náklady bez materiálu. Materiál má zásobovací režii a marži.', N'pricesCalculate2', NULL, N'MaterialN*(1+ZasR+MatM)', N'1')
SET IDENTITY_INSERT [dbo].[kalkulace] OFF
/****** Object:  Table [dbo].[merne_jednotky]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[merne_jednotky]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[merne_jednotky](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[zkratka] [nvarchar](10) NOT NULL,
	[koeficient] [decimal](12, 6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[zkratka] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[merne_jednotky] ON
INSERT [dbo].[merne_jednotky] ([id], [zkratka], [koeficient]) VALUES (1, N'ks', CAST(1.000000 AS Decimal(12, 6)))
INSERT [dbo].[merne_jednotky] ([id], [zkratka], [koeficient]) VALUES (2, N'm', CAST(1.000000 AS Decimal(12, 6)))
INSERT [dbo].[merne_jednotky] ([id], [zkratka], [koeficient]) VALUES (3, N'min', CAST(1.000000 AS Decimal(12, 6)))
INSERT [dbo].[merne_jednotky] ([id], [zkratka], [koeficient]) VALUES (4, N'hod', CAST(0.016700 AS Decimal(12, 6)))
INSERT [dbo].[merne_jednotky] ([id], [zkratka], [koeficient]) VALUES (5, N'mm', CAST(0.001000 AS Decimal(12, 6)))
SET IDENTITY_INSERT [dbo].[merne_jednotky] OFF
/****** Object:  Table [dbo].[meny]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[meny]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[meny](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[zkratka] [nvarchar](10) NOT NULL,
	[nazev] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[nazev] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[zkratka] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[meny] ON
INSERT [dbo].[meny] ([id], [zkratka], [nazev]) VALUES (1, N'CZK', N'Česká koruna')
INSERT [dbo].[meny] ([id], [zkratka], [nazev]) VALUES (2, N'EUR', N'Euro')
INSERT [dbo].[meny] ([id], [zkratka], [nazev]) VALUES (3, N'USD', N'Americký dolar')
INSERT [dbo].[meny] ([id], [zkratka], [nazev]) VALUES (4, N'JPY', N'Japonský jen')
SET IDENTITY_INSERT [dbo].[meny] OFF
/****** Object:  Table [dbo].[druhy_operaci]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[druhy_operaci]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[druhy_operaci](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[zkratka] [nvarchar](15) NOT NULL,
	[nazev] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[nazev] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[zkratka] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[druhy_operaci] ON
INSERT [dbo].[druhy_operaci] ([id], [zkratka], [nazev]) VALUES (1, N'Ruční', N'Ruční operace EMS')
INSERT [dbo].[druhy_operaci] ([id], [zkratka], [nazev]) VALUES (2, N'Strojní', N'Strojní operace EMS')
INSERT [dbo].[druhy_operaci] ([id], [zkratka], [nazev]) VALUES (3, N'Ostatní', N'Ostatní operace EMS')
INSERT [dbo].[druhy_operaci] ([id], [zkratka], [nazev]) VALUES (4, N'Jednorázové', N'Jednorázové operace')
INSERT [dbo].[druhy_operaci] ([id], [zkratka], [nazev]) VALUES (5, N'Montáž', N'Montážní operace AFC')
SET IDENTITY_INSERT [dbo].[druhy_operaci] OFF
/****** Object:  Table [dbo].[druhy_firem]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[druhy_firem]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[druhy_firem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[zkratka] [nvarchar](10) NOT NULL,
	[nazev] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[zkratka] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[druhy_firem] ON
INSERT [dbo].[druhy_firem] ([id], [zkratka], [nazev]) VALUES (1, N'a.s.', N'akciová společnost')
INSERT [dbo].[druhy_firem] ([id], [zkratka], [nazev]) VALUES (2, N's.r.o.', N'společnost s ručením omezeným')
INSERT [dbo].[druhy_firem] ([id], [zkratka], [nazev]) VALUES (3, N'k.s.', N'komanditní společnost')
INSERT [dbo].[druhy_firem] ([id], [zkratka], [nazev]) VALUES (4, N'v.o.s.', N'veřejná obchodní společnost')
INSERT [dbo].[druhy_firem] ([id], [zkratka], [nazev]) VALUES (5, N'FO', N'fyzická osoba')
SET IDENTITY_INSERT [dbo].[druhy_firem] OFF
/****** Object:  Table [dbo].[atr_casu]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[atr_casu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[atr_casu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[zkratka] [nvarchar](50) NOT NULL,
	[nazev] [nvarchar](255) NULL,
	[cas_sec] [decimal](10, 2) NULL,
	[typ] [int] NULL,
 CONSTRAINT [PK_atr_casu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[atr_casu] ON
INSERT [dbo].[atr_casu] ([id], [zkratka], [nazev], [cas_sec], [typ]) VALUES (1, N'Pasiva L1', N'Pasiva (Linka1: Topaz/Opal)', CAST(0.70 AS Decimal(10, 2)), 1)
INSERT [dbo].[atr_casu] ([id], [zkratka], [nazev], [cas_sec], [typ]) VALUES (2, N'IO standard', N'IO standard', CAST(1.30 AS Decimal(10, 2)), 1)
INSERT [dbo].[atr_casu] ([id], [zkratka], [nazev], [cas_sec], [typ]) VALUES (3, N'IO BGA', N'IO BGA', CAST(2.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[atr_casu] ([id], [zkratka], [nazev], [cas_sec], [typ]) VALUES (4, N'Konektor - stroj', N'Konektor - stroj', CAST(2.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[atr_casu] ([id], [zkratka], [nazev], [cas_sec], [typ]) VALUES (5, N'Konektor - ručně', N'Konektor - ručně', CAST(8.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[atr_casu] ([id], [zkratka], [nazev], [cas_sec], [typ]) VALUES (6, N'Ostatní - stroj', N'Ostatní - stroj', CAST(1.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[atr_casu] ([id], [zkratka], [nazev], [cas_sec], [typ]) VALUES (7, N'Ostatní - ručně', N'Ostatní - ručně', CAST(8.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[atr_casu] ([id], [zkratka], [nazev], [cas_sec], [typ]) VALUES (8, N'Pasiva L2', N'Pasiva (Linka2: AIMEX/Opal)', CAST(0.30 AS Decimal(10, 2)), 1)
INSERT [dbo].[atr_casu] ([id], [zkratka], [nazev], [cas_sec], [typ]) VALUES (9, N'Komponety AOI1', N'Testovaná komponenta na AOI Mirtec', CAST(1.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[atr_casu] ([id], [zkratka], [nazev], [cas_sec], [typ]) VALUES (10, N'Komponety AOI2', N'Testovaná komponenta na AOI Goepel', CAST(1.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[atr_casu] ([id], [zkratka], [nazev], [cas_sec], [typ]) VALUES (11, N'Příprava mat. SMT', N'Příprava materiálu na SMT linky', CAST(120.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[atr_casu] ([id], [zkratka], [nazev], [cas_sec], [typ]) VALUES (12, N'Nabíjení SMT', N'Nabíjení komponenty na SMT linku', CAST(30.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[atr_casu] ([id], [zkratka], [nazev], [cas_sec], [typ]) VALUES (13, N'Kontrola nabití SMT', N'Kontrola nabití komponenty na SMT lince', CAST(15.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[atr_casu] ([id], [zkratka], [nazev], [cas_sec], [typ]) VALUES (14, N'Lepení komp. SMT', N'Lepení komponenty na SMT', CAST(7.50 AS Decimal(10, 2)), 2)
INSERT [dbo].[atr_casu] ([id], [zkratka], [nazev], [cas_sec], [typ]) VALUES (15, N'Kontrola 1. kusu', N'Kontrola 1. kusu', CAST(15.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[atr_casu] ([id], [zkratka], [nazev], [cas_sec], [typ]) VALUES (16, N'Pájení 1. pinu', N'Ruční pájení prvního pinu', CAST(5.00 AS Decimal(10, 2)), 1)
SET IDENTITY_INSERT [dbo].[atr_casu] OFF
/****** Object:  Table [dbo].[obce]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[obce]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[obce](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nazev] [nvarchar](100) NOT NULL,
	[psc] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[obce] ON
INSERT [dbo].[obce] ([id], [nazev], [psc]) VALUES (1, N'Brno', N'61300')
INSERT [dbo].[obce] ([id], [nazev], [psc]) VALUES (2, N'Ústí nad Orlicí', N'56201')
INSERT [dbo].[obce] ([id], [nazev], [psc]) VALUES (3, N'Praha 9', N'190 11')
INSERT [dbo].[obce] ([id], [nazev], [psc]) VALUES (4, N'Ústí nad Orlicí III', N'')
SET IDENTITY_INSERT [dbo].[obce] OFF
/****** Object:  Table [dbo].[permission]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[modul] [nvarchar](50) NULL,
	[presenter] [nvarchar](50) NULL,
	[poradi] [int] NULL,
	[funkce] [nvarchar](50) NULL,
	[popis] [nvarchar](max) NULL,
 CONSTRAINT [PK_permission] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[permission] ON
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (1, N'Base', N'Homepage', 1, N'default', N'výchozí stránka')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (2, N'Base', N'Homepage', 2, N'editMe', N'změna údajů uživatele')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (3, N'Base', N'Sign', 1, N'in', N'přihlášení do systému')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (4, N'Obchod', N'Obchod', 1, N'default', N'výchozí stránka modulu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (5, N'Obchod', N'Obchod', 2, N'dash', N'dashboard obchodu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (6, N'Obchod', N'Firma', 1, N'default', N'seznam všech zákazníků (firem)')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (7, N'Obchod', N'Firma', 2, N'detail', N'detail zvolené firmy')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (8, N'Obchod', N'Firma', 3, N'add', N'přidání nové firmy')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (9, N'Obchod', N'Firma', 4, N'edit', N'změna údajů firmy')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (10, N'Obchod', N'Firma', 5, N'delete', N'smazání zvolené firmy')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (11, N'Obchod', N'Firma', 6, N'addContact', N'přidání kontaktu firmy')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (12, N'Obchod', N'Firma', 7, N'editContact', N'změna kontaktu firmy')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (13, N'Obchod', N'Firma', 8, N'deleteContact', N'smazání kontaktu firmy')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (14, N'Obchod', N'Firma', 9, N'eraseSet', N'smazání aktuálního nastavení')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (15, N'Obchod', N'Nabidka', 1, N'default', N'seznam všech nabídek')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (16, N'Obchod', N'Nabidka', 2, N'offer', N'seznam nabídek aktivního zákazníka')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (17, N'Obchod', N'Nabidka', 3, N'detail', N'detail zvolené nabídky')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (18, N'Obchod', N'Nabidka', 4, N'toPdf', N'export detailu nabídky do PDF')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (19, N'Obchod', N'Nabidka', 5, N'add', N'přidání nové nabídky')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (20, N'Obchod', N'Nabidka', 6, N'edit', N'změna údajů nabídky')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (21, N'Obchod', N'Nabidka', 7, N'delete', N'smazání zvolené nabídky')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (22, N'Obchod', N'Nabidka', 8, N'changeStatus', N'změna stavu nabídky')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (23, N'Obchod', N'Nabidka', 9, N'eraseStatus', N'výmaz zvoleného stavu nabídky')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (24, N'Obchod', N'Nabidka', 10, N'copyNabidka', N'zkopíruje aktuální nabídku pod novým číslem')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (25, N'Obchod', N'Nabidka', 11, N'lock', N'uzamknutí aktuální nabídky')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (26, N'Obchod', N'Nabidka', 12, N'unlock', N'odemknutí uzamčené nabídky')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (27, N'Obchod', N'Osoba', 1, N'default', N'seznam všech osob (všech zákazníků)')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (28, N'Obchod', N'Osoba', 2, N'people', N'seznam osob aktivního zákazníka')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (29, N'Obchod', N'Osoba', 3, N'detail', N'detail zvolené osoby')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (30, N'Obchod', N'Osoba', 4, N'add', N'přidání nové osoby')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (31, N'Obchod', N'Osoba', 5, N'edit', N'změna údajů osoby')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (32, N'Obchod', N'Osoba', 6, N'delete', N'smazání zvolené osoby')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (33, N'Obchod', N'Osoba', 7, N'addContact', N'přidání kontaktu osoby')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (34, N'Obchod', N'Osoba', 8, N'editContact', N'změna kontaktu osoby')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (35, N'Obchod', N'Osoba', 9, N'deleteContact', N'smazání kontaktu osoby')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (36, N'Obchod', N'Produkt', 1, N'default', N'seznam všech produktů')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (37, N'Obchod', N'Produkt', 2, N'product', N'seznam produktů aktivního zákazníka')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (38, N'Obchod', N'Produkt', 3, N'detail', N'detail zvoleného produktu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (39, N'Obchod', N'Produkt', 4, N'toPdf', N'export detailu produktu do PDF')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (40, N'Obchod', N'Produkt', 5, N'add', N'přidání nového produktu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (41, N'Obchod', N'Produkt', 6, N'edit', N'změna údajů produktu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (42, N'Obchod', N'Produkt', 7, N'delete', N'smazání zvoleného produktu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (43, N'Obchod', N'Produkt', 8, N'assign', N'přiřazení produktu nabídce (vazba -> ceny)')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (44, N'Obchod', N'Produkt', 9, N'eraseOffer', N'zrušení přiřazení produktu k nabídce')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (45, N'Obchod', N'Produkt', 10, N'addAmount', N'přidání nového plán. množství produktu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (46, N'Obchod', N'Produkt', 11, N'editAmount', N'změna plánovaného množství produktu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (47, N'Obchod', N'Produkt', 12, N'deleteAmount', N'smazání zvoleného množství produktu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (48, N'Obchod', N'Produkt', 13, N'viewCosts', N'detail nákladů aktuálního produktu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (49, N'Obchod', N'Produkt', 14, N'viewPrices', N'detail cen aktuálního produktu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (50, N'Obchod', N'Produkt', 15, N'costsUpd', N'výpočet/aktualizace nákladů produktu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (51, N'Obchod', N'Produkt', 16, N'pricesUpd', N'výpočet/aktualizace cen produktu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (52, N'Obchod', N'Produkt', 17, N'erasePrices', N'výmaz cen produktu zadané měny a množství')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (53, N'Obchod', N'Produkt', 18, N'chngStatus', N'změna stavu produktu (dialogem)')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (54, N'Obchod', N'Produkt', 19, N'changeStatus', N'změna stavu produktu (kliknutím)')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (55, N'Obchod', N'Produkt', 20, N'eraseStatus', N'výmaz zvoleného stavu produktu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (56, N'Obchod', N'Produkt', 21, N'copyProdukt', N'zkopíruje aktuální produkt pod novým číslem')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (57, N'Obchod', N'Produkt', 22, N'lock', N'uzamknutí aktuálního produktu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (58, N'Obchod', N'Produkt', 23, N'unlock', N'odemknutí uzamčeného produktu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (59, N'Obchod', N'Kurz', 1, N'default', N'výpis zadaných kurzů měn')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (60, N'Obchod', N'Kurz', 2, N'add', N'přidání nového kurzu měny')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (61, N'Obchod', N'Kurz', 3, N'edit', N'změna kurzu měny')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (62, N'Obchod', N'Kurz', 4, N'delete', N'smazání kurzu měny')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (63, N'Obchod', N'SetSazeb', 1, N'default', N'seznam všech setů režijních sazeb')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (64, N'Obchod', N'SetSazeb', 2, N'detail', N'detail zvoleného setu režijních sazeb')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (65, N'Obchod', N'SetSazeb', 3, N'add', N'přidání nového setu režijních sazeb')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (66, N'Obchod', N'SetSazeb', 4, N'edit', N'změna zvoleného setu režijních sazeb')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (67, N'Obchod', N'SetSazeb', 5, N'delete', N'smazání zvoleného setu režijních sazeb')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (68, N'Obchod', N'SetSazeb', 6, N'addRate', N'přidání jedné nové režijní sazby')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (69, N'Obchod', N'SetSazeb', 7, N'editRate', N'změna zvolené režijní sazby')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (70, N'Obchod', N'SetSazeb', 8, N'deleteRate', N'smazání zvolené režijní sazby')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (71, N'Obchod', N'SetSazeb', 9, N'addGroup', N'hromadné přidání režijních sazeb do setu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (72, N'Tpv', N'Tpv', 1, N'default', N'výchozí stránka modulu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (73, N'Tpv', N'Tpv', 2, N'operace', N'přechod na seznam operací aktuálního produktu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (74, N'Tpv', N'Operace', 1, N'default', N'seznam operací aktuálního produktu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (75, N'Tpv', N'Operace', 2, N'detail', N'detail zvolené výrobní operace')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (76, N'Tpv', N'Operace', 3, N'add', N'přidání nové operace')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (77, N'Tpv', N'Operace', 4, N'edit', N'změna zvolené operace')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (78, N'Tpv', N'Operace', 5, N'delete', N'smazání zvolené operace')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (79, N'Tpv', N'Operace', 6, N'addGroup', N'hromadné přidání výrobních operací')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (80, N'Tpv', N'Operace', 7, N'export', N'exportuje operace TPV do CSV souboru')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (81, N'Tpv', N'Operace', 8, N'tcalc', N'kalkulace výpočtu spotřeby času operace')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (82, N'Tpv', N'Operace', 9, N'changeStatus', N'změna stavu TPV produktu (kliknutím)')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (83, N'Tpv', N'TypOperace', 1, N'default', N'seznam všech typových operací')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (84, N'Tpv', N'TypOperace', 2, N'detail', N'detail zvolené typové operace')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (85, N'Tpv', N'TypOperace', 3, N'add', N'přidání nové typové operace')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (86, N'Tpv', N'TypOperace', 4, N'edit', N'změna zvolené typové operace')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (87, N'Tpv', N'TypOperace', 5, N'delete', N'smazání zvolené typové operace')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (88, N'Tpv', N'SetSazebO', 1, N'default', N'seznam setů sazeb výrobních operací')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (89, N'Tpv', N'SetSazebO', 2, N'detail', N'detail zvoleného setu sazeb výr. operací')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (90, N'Tpv', N'SetSazebO', 3, N'add', N'přidání nového setu sazeb výr. operací')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (91, N'Tpv', N'SetSazebO', 4, N'edit', N'změna zvoleného setu sazeb výr. operací')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (92, N'Tpv', N'SetSazebO', 5, N'delete', N'smazání zvoleného setu sazeb výr. operací')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (93, N'Tpv', N'SetSazebO', 6, N'addRate', N'přidání jedné nové sazby výrobní operace')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (94, N'Tpv', N'SetSazebO', 7, N'editRate', N'změna zvolené sazby výrobní operace')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (95, N'Tpv', N'SetSazebO', 8, N'deleteRate', N'smazání zvolené sazby výrobní operace')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (96, N'Tpv', N'SetSazebO', 9, N'addGroup', N'hromadné přidání sazeb výr. operací do setu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (97, N'Tpv', N'AtrCasu', 1, N'default', N'seznam všech atributů času operací')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (98, N'Tpv', N'AtrCasu', 2, N'detail', N'detail zvoleného atributu času operace')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (99, N'Tpv', N'AtrCasu', 3, N'add', N'přidání nového atributu času operace')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (100, N'Tpv', N'AtrCasu', 4, N'edit', N'změna zvoleného atributu času operace')
GO
print 'Processed 100 total records'
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (101, N'Tpv', N'AtrCasu', 5, N'delete', N'smazání zvoleného atributu času operace')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (102, N'Tpv', N'AtrCasu', 6, N'setGroup', N'přiřazení atributu času typovým operacím')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (103, N'Nakup', N'Nakup', 1, N'default', N'výchozí stránka modulu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (104, N'Nakup', N'Nakup', 2, N'material', N'přechod na materiály operací aktuálního produktu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (105, N'Nakup', N'Material', 1, N'default', N'seznam materiál. položek aktuálního produktu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (106, N'Nakup', N'Material', 2, N'list', N'seznam materál. Položek produktu dle filtru')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (107, N'Nakup', N'Material', 3, N'detail', N'detail zvolené materiálové položky')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (108, N'Nakup', N'Material', 4, N'add', N'přidání nové materiálové položky')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (109, N'Nakup', N'Material', 5, N'edit', N'změna zvolené materiálové položky')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (110, N'Nakup', N'Material', 6, N'delete', N'smazání zvolené materiálové položky')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (111, N'Nakup', N'Material', 7, N'editr', N'změna ceny a id_k2 mater. Položky')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (112, N'Nakup', N'Material', 8, N'changeStatus', N'změna stavu  mater. produktu  (kliknutím)')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (113, N'Nakup', N'Material', 9, N'export', N'export materiálového kusovníku do CSV souboru')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (114, N'Nakup', N'Import', 1, N'default', N'výchozí formulář pro výběr CSV souboru')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (115, N'Nakup', N'Import', 2, N'check', N'formulář pro přiřazení sloupců CSV polím tabulky')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (116, N'Nakup', N'Import', 3, N'confirm', N'potvrzující formulář pro import dat z CSV do DB')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (117, N'Nakup', N'K2', 1, N'default', N'seznam materiálových položek z ERP systému')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (118, N'Nakup', N'K2', 2, N'find', N'formulář pro hledání položek v ERP dle názvu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (119, N'Nakup', N'K2', 3, N'prices', N'seznam nákupních cen zvolené položky z ERP')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (120, N'Nakup', N'K2', 4, N'select', N'přiřazení položky z ERP materiálové položce')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (121, N'Nakup', N'K2', 5, N'setPrice', N'přiřazení ceny a k2 čísla z ERP materiálové položce')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (122, N'Nakup', N'K2', 6, N'setPriceValue', N'přiřazení jen ceny položky z ERP materiálové položce')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (123, N'Sprava', N'Sprava', 1, N'default', N'výchozí stránka modulu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (124, N'Sprava', N'Uzivatel', 1, N'default', N'seznam uživatelů systému')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (125, N'Sprava', N'Uzivatel', 2, N'add', N'přidání nového uživatele')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (126, N'Sprava', N'Uzivatel', 3, N'edit', N'změna zvoleného uživatele')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (127, N'Sprava', N'Uzivatel', 4, N'delete', N'smazání zvoleného uživatele')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (128, N'Sprava', N'Misto', 1, N'default', N'seznam míst - státy, kraje, obce')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (129, N'Sprava', N'Misto', 2, N'adds', N'přidání nového státu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (130, N'Sprava', N'Misto', 3, N'edits', N'změna zvoleného státu')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (131, N'Sprava', N'Misto', 4, N'addk', N'přidání nového kraje')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (132, N'Sprava', N'Misto', 5, N'editk', N'změna zvoleného kraje')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (133, N'Sprava', N'Misto', 6, N'addo', N'přidání nové obce')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (134, N'Sprava', N'Misto', 7, N'edito', N'změna zvolené obce')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (135, N'Sprava', N'Ciselnik', 1, N'default', N'seznam systémových číselníků (druhy firem, druhy operací, měrné jednotky, oslovení, role, typy cen, typy nákladů, typy kontaktů, typy režijních sazeb)')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (136, N'Sprava', N'Query', 1, N'default', N'provedení SQL dotazu SELECT nad databází')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (137, N'Sprava', N'Prava', 1, N'default', N'seznam práv přístupu pro jednotlivé role')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (138, N'Sprava', N'Prava', 2, N'add', N'přidání nové role')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (139, N'Sprava', N'Prava', 3, N'edit', N'změna zvolené role')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (140, N'Sprava', N'Prava', 4, N'delete', N'smazání zvolené role')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (141, N'Sprava', N'Prava', 5, N'setRights', N'nastavení práv přístupu pro zvolenou roli')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (142, N'Sprava', N'Agenda', 1, N'default', N'seznam agend/funkcí aplikace')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (143, N'Sprava', N'Agenda', 2, N'add', N'přidání nové agendy/funkce')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (144, N'Sprava', N'Agenda', 3, N'edit', N'změna zvolené agendy/funkce aplikace')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (145, N'Sprava', N'Agenda', 4, N'delete', N'smazání zvolené agendy/funkce aplikace')
INSERT [dbo].[permission] ([id], [modul], [presenter], [poradi], [funkce], [popis]) VALUES (146, N'Nakup', N'Material', 10, N'matPrice', N'hromadný výpočet prodejní ceny materiálu')
SET IDENTITY_INSERT [dbo].[permission] OFF
/****** Object:  Table [dbo].[role]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nazev] [nvarchar](50) NOT NULL,
	[popis] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[nazev] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[role] ON
INSERT [dbo].[role] ([id], [nazev], [popis]) VALUES (1, N'Admin', N'Administrátor')
INSERT [dbo].[role] ([id], [nazev], [popis]) VALUES (2, N'Obchod', N'Obchodník')
INSERT [dbo].[role] ([id], [nazev], [popis]) VALUES (3, N'Nakup', N'Nákupčí')
INSERT [dbo].[role] ([id], [nazev], [popis]) VALUES (4, N'Tpv', N'Technolog')
INSERT [dbo].[role] ([id], [nazev], [popis]) VALUES (5, N'Sprava', N'Správce')
SET IDENTITY_INSERT [dbo].[role] OFF
/****** Object:  Table [dbo].[osloveni]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[osloveni]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[osloveni](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nazev] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[nazev] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[osloveni] ON
INSERT [dbo].[osloveni] ([id], [nazev]) VALUES (2, N'Vážená paní')
INSERT [dbo].[osloveni] ([id], [nazev]) VALUES (1, N'Vážený pane')
SET IDENTITY_INSERT [dbo].[osloveni] OFF
/****** Object:  Table [dbo].[kurzy]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kurzy]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kurzy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_meny] [int] NOT NULL,
	[platnost_od] [date] NOT NULL,
	[platnost_do] [date] NULL,
	[kurz_nakupni] [decimal](12, 6) NOT NULL,
	[kurz_prodejni] [decimal](12, 6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[kurzy] ON
INSERT [dbo].[kurzy] ([id], [id_meny], [platnost_od], [platnost_do], [kurz_nakupni], [kurz_prodejni]) VALUES (1, 2, CAST(0xBE350B00 AS Date), CAST(0x48370B00 AS Date), CAST(26.500000 AS Decimal(12, 6)), CAST(24.000000 AS Decimal(12, 6)))
INSERT [dbo].[kurzy] ([id], [id_meny], [platnost_od], [platnost_do], [kurz_nakupni], [kurz_prodejni]) VALUES (2, 3, CAST(0xBE350B00 AS Date), CAST(0x48370B00 AS Date), CAST(21.000000 AS Decimal(12, 6)), CAST(18.000000 AS Decimal(12, 6)))
SET IDENTITY_INSERT [dbo].[kurzy] OFF
/****** Object:  Table [dbo].[adresy]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[adresy]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[adresy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ulice] [nvarchar](100) NULL,
	[cp] [nvarchar](20) NULL,
	[id_obce] [int] NULL,
	[id_kraje] [int] NULL,
	[id_staty] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[adresy] ON
INSERT [dbo].[adresy] ([id], [ulice], [cp], [id_obce], [id_kraje], [id_staty]) VALUES (1, N'Podnikatelská', N'6', 1, NULL, 1)
INSERT [dbo].[adresy] ([id], [ulice], [cp], [id_obce], [id_kraje], [id_staty]) VALUES (2, N'Moravská', N'519', 2, NULL, 1)
INSERT [dbo].[adresy] ([id], [ulice], [cp], [id_obce], [id_kraje], [id_staty]) VALUES (5, N'Podnikatelská', N'550', 3, 1, 1)
INSERT [dbo].[adresy] ([id], [ulice], [cp], [id_obce], [id_kraje], [id_staty]) VALUES (6, N'Sokolská', N'71', 4, 9, 1)
SET IDENTITY_INSERT [dbo].[adresy] OFF
/****** Object:  Table [dbo].[users]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[jmeno] [nvarchar](50) NULL,
	[prijmeni] [nvarchar](50) NULL,
	[email] [nvarchar](100) NOT NULL,
	[poznamka] [nvarchar](255) NULL,
	[role] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[users] ON
INSERT [dbo].[users] ([id], [username], [password], [jmeno], [prijmeni], [email], [poznamka], [role]) VALUES (1, N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'Vlastimil', N'Mračko', N'v.mracko@mikroelektronika.cz', N'administrátor systému', 1)
INSERT [dbo].[users] ([id], [username], [password], [jmeno], [prijmeni], [email], [poznamka], [role]) VALUES (2, N'hunv', N'h', N'Vlastimil', N'Huňáček', N'v.hunacek@mikroelektronika.cz', N'', 1)
INSERT [dbo].[users] ([id], [username], [password], [jmeno], [prijmeni], [email], [poznamka], [role]) VALUES (3, N'zitj', N'z', N'Jan', N'Zita', N'j.zita@mikroelektronika.cz', N'', 2)
INSERT [dbo].[users] ([id], [username], [password], [jmeno], [prijmeni], [email], [poznamka], [role]) VALUES (4, N'rejm', N'r', N'Miroslav', N'Rejman', N'm.rejman@mikroelektronika.cz', N'', 4)
SET IDENTITY_INSERT [dbo].[users] OFF
/****** Object:  Table [dbo].[typy_operaci]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[typy_operaci]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[typy_operaci](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[zkratka] [nvarchar](60) NOT NULL,
	[nazev] [nvarchar](255) NOT NULL,
	[id_druhy_operaci] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[nazev] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[zkratka] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[typy_operaci] ON
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (1, N'Osazování', N'Ruční osazování', 1)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (2, N'Ruční pájení', N'Ruční pájení', 1)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (3, N'Montáž EMS', N'Ruční montáž', 1)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (4, N'Oživování EMS', N'Oživování', 1)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (5, N'Testování EMS', N'Testování ruční nebo na přípravku', 1)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (6, N'Kontrola EMS', N'Vizuální/mezioperační kontrola', 1)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (7, N'SelektPájení', N'Selektivní pájení na lince ORISSA', 2)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (8, N'Pájení vlnou', N'Pájení vlnou SEHO', 2)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (9, N'AOI 1', N'Automatická optická inspekce MIRTEC', 2)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (10, N'AOI 2', N'Automatická optická inspekce batch system', 2)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (11, N'SMT 1', N'Osazování na SMT lince ASSEMBLEON', 2)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (12, N'SMT 2', N'Osazování na SMT lince FUJI AIMEX', 2)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (13, N'ICT', N'Vnitroobvodový test ICT REINHARDT', 2)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (14, N'Doprava ME', N'Doprava vlastní', 3)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (15, N'Doprava EX', N'Doprava externí', 3)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (16, N'Balení', N'Balení', 3)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (17, N'Přípravky', N'Jednoúčelové přípravky', 4)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (18, N'Šablony', N'Sitotiskové šablony', 4)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (19, N'Programování', N'Programování strojů', 4)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (20, N'Opravy', N'Opravy', 1)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (21, N'Mytí', N'Automatické mytí DPS (Injet 675)', 2)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (22, N'Ruční lakování', N'Ruční lakování', 1)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (24, N'Montáž AFC', N'Montážní operace AFC', 5)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (25, N'Tvarování součástek', N'Tvarování součástek', 1)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (26, N'Pasta', N'Pájecí pasta', 3)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (27, N'Příprava materiálu', N'Příprava materiálu', 1)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (28, N'Ukončení práce', N'Ukončení práce na lince, předání do meziskladu', 1)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (29, N'Výstupní kontrola', N'Výstupní kontrola', 1)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (30, N'Depanelizace a lepení štítku', N'Depanelizace a lepení štítku', 1)
INSERT [dbo].[typy_operaci] ([id], [zkratka], [nazev], [id_druhy_operaci]) VALUES (31, N'Převzetí a předání materiálu', N'Převzetí a předání materiálu', 1)
SET IDENTITY_INSERT [dbo].[typy_operaci] OFF
/****** Object:  Table [dbo].[prava]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prava]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[prava](
	[id_role] [int] NOT NULL,
	[id_permission] [int] NOT NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 1)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 2)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 3)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 4)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 5)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 6)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 7)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 8)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 9)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 10)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 11)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 12)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 13)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 14)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 15)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 16)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 17)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 18)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 19)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 20)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 21)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 22)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 23)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 24)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 25)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 27)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 28)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 29)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 30)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 31)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 32)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 33)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 34)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 35)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 36)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 37)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 38)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 39)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 40)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 41)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 42)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 43)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 44)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 45)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 46)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 47)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 48)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 49)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 50)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 51)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 52)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 53)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 54)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 55)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 56)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 57)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 59)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 60)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 61)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 62)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 63)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 64)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 65)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 66)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 67)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 68)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 69)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 70)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 71)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 72)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 73)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 74)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 75)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 81)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 83)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 84)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 88)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 89)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 97)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 98)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 103)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 1)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 2)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 3)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 4)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 6)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 7)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 14)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 15)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 16)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 17)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 36)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 37)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 38)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 48)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 53)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 72)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 73)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 74)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 75)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 76)
GO
print 'Processed 100 total records'
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 77)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 78)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 79)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 80)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 81)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 82)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 83)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 84)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 85)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 86)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 88)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 89)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 1)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 2)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 3)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 90)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 91)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (5, 1)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (5, 2)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (5, 3)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (5, 123)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (5, 124)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (5, 125)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (5, 126)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (5, 128)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (5, 135)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 104)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 105)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (5, 137)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (5, 142)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 93)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 94)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 96)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 97)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 106)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 107)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 4)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 5)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 15)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 16)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 17)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 36)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 37)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 38)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 48)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 53)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 103)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 104)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 105)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 106)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 107)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 108)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 109)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 110)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 111)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 112)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 113)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 114)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 115)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 116)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 117)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 118)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 119)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 120)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 121)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (3, 122)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 98)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 99)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 100)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 102)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 103)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 104)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 105)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 106)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 107)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 114)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (4, 115)
INSERT [dbo].[prava] ([id_role], [id_permission]) VALUES (2, 146)
/****** Object:  Table [dbo].[stav_role]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stav_role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stav_role](
	[id_stav] [int] NULL,
	[id_role] [int] NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[stav_role] ([id_stav], [id_role]) VALUES (1, 2)
INSERT [dbo].[stav_role] ([id_stav], [id_role]) VALUES (2, 2)
INSERT [dbo].[stav_role] ([id_stav], [id_role]) VALUES (3, 2)
INSERT [dbo].[stav_role] ([id_stav], [id_role]) VALUES (4, 2)
INSERT [dbo].[stav_role] ([id_stav], [id_role]) VALUES (5, 2)
INSERT [dbo].[stav_role] ([id_stav], [id_role]) VALUES (6, 2)
INSERT [dbo].[stav_role] ([id_stav], [id_role]) VALUES (7, 2)
INSERT [dbo].[stav_role] ([id_stav], [id_role]) VALUES (8, 2)
INSERT [dbo].[stav_role] ([id_stav], [id_role]) VALUES (9, 2)
INSERT [dbo].[stav_role] ([id_stav], [id_role]) VALUES (10, 2)
INSERT [dbo].[stav_role] ([id_stav], [id_role]) VALUES (11, 2)
INSERT [dbo].[stav_role] ([id_stav], [id_role]) VALUES (21, 2)
INSERT [dbo].[stav_role] ([id_stav], [id_role]) VALUES (22, 5)
INSERT [dbo].[stav_role] ([id_stav], [id_role]) VALUES (3, 3)
INSERT [dbo].[stav_role] ([id_stav], [id_role]) VALUES (6, 3)
INSERT [dbo].[stav_role] ([id_stav], [id_role]) VALUES (4, 4)
INSERT [dbo].[stav_role] ([id_stav], [id_role]) VALUES (5, 4)
INSERT [dbo].[stav_role] ([id_stav], [id_role]) VALUES (12, 2)
/****** Object:  Table [dbo].[set_sazeb]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[set_sazeb]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[set_sazeb](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nazev] [nvarchar](50) NOT NULL,
	[platnost_od] [date] NOT NULL,
	[platnost_do] [date] NULL,
	[kalkulace] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[set_sazeb] ON
INSERT [dbo].[set_sazeb] ([id], [nazev], [platnost_od], [platnost_do], [kalkulace]) VALUES (1, N'Sazby H2013', CAST(0x94360B00 AS Date), CAST(0x00380B00 AS Date), 3)
INSERT [dbo].[set_sazeb] ([id], [nazev], [platnost_od], [platnost_do], [kalkulace]) VALUES (2, N'Sazby H2012', CAST(0xDC350B00 AS Date), CAST(0xDB350B00 AS Date), 1)
SET IDENTITY_INSERT [dbo].[set_sazeb] OFF
/****** Object:  Table [dbo].[sazby_o]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sazby_o]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sazby_o](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hodnota] [decimal](10, 5) NOT NULL,
	[id_typy_operaci] [int] NOT NULL,
	[id_set_sazeb_o] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[sazby_o] ON
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (7, CAST(100.00000 AS Decimal(10, 5)), 1, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (8, CAST(110.00000 AS Decimal(10, 5)), 2, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (9, CAST(100.00000 AS Decimal(10, 5)), 3, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (10, CAST(130.00000 AS Decimal(10, 5)), 4, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (11, CAST(130.00000 AS Decimal(10, 5)), 5, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (12, CAST(110.00000 AS Decimal(10, 5)), 6, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (13, CAST(365.00000 AS Decimal(10, 5)), 7, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (14, CAST(506.00000 AS Decimal(10, 5)), 8, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (15, CAST(181.00000 AS Decimal(10, 5)), 9, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (16, CAST(323.00000 AS Decimal(10, 5)), 10, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (17, CAST(859.00000 AS Decimal(10, 5)), 11, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (18, CAST(1228.00000 AS Decimal(10, 5)), 12, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (19, CAST(130.00000 AS Decimal(10, 5)), 20, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (20, CAST(289.00000 AS Decimal(10, 5)), 21, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (21, CAST(100.00000 AS Decimal(10, 5)), 22, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (22, CAST(100.00000 AS Decimal(10, 5)), 25, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (23, CAST(110.00000 AS Decimal(10, 5)), 27, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (24, CAST(100.00000 AS Decimal(10, 5)), 28, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (25, CAST(130.00000 AS Decimal(10, 5)), 29, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (26, CAST(100.00000 AS Decimal(10, 5)), 30, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (27, CAST(100.00000 AS Decimal(10, 5)), 31, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (28, CAST(150.00000 AS Decimal(10, 5)), 24, 2)
INSERT [dbo].[sazby_o] ([id], [hodnota], [id_typy_operaci], [id_set_sazeb_o]) VALUES (29, CAST(280.00000 AS Decimal(10, 5)), 13, 2)
SET IDENTITY_INSERT [dbo].[sazby_o] OFF
/****** Object:  Table [dbo].[sazby]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sazby]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sazby](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hodnota] [decimal](10, 5) NOT NULL,
	[id_typy_sazeb] [int] NOT NULL,
	[id_set_sazeb] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[sazby] ON
INSERT [dbo].[sazby] ([id], [hodnota], [id_typy_sazeb], [id_set_sazeb]) VALUES (1, CAST(0.32000 AS Decimal(10, 5)), 1, 2)
INSERT [dbo].[sazby] ([id], [hodnota], [id_typy_sazeb], [id_set_sazeb]) VALUES (2, CAST(0.20000 AS Decimal(10, 5)), 4, 2)
INSERT [dbo].[sazby] ([id], [hodnota], [id_typy_sazeb], [id_set_sazeb]) VALUES (3, CAST(0.04500 AS Decimal(10, 5)), 3, 2)
INSERT [dbo].[sazby] ([id], [hodnota], [id_typy_sazeb], [id_set_sazeb]) VALUES (4, CAST(0.10000 AS Decimal(10, 5)), 2, 2)
INSERT [dbo].[sazby] ([id], [hodnota], [id_typy_sazeb], [id_set_sazeb]) VALUES (5, CAST(1.68000 AS Decimal(10, 5)), 7, 2)
INSERT [dbo].[sazby] ([id], [hodnota], [id_typy_sazeb], [id_set_sazeb]) VALUES (6, CAST(0.10000 AS Decimal(10, 5)), 8, 2)
INSERT [dbo].[sazby] ([id], [hodnota], [id_typy_sazeb], [id_set_sazeb]) VALUES (7, CAST(0.20000 AS Decimal(10, 5)), 5, 2)
INSERT [dbo].[sazby] ([id], [hodnota], [id_typy_sazeb], [id_set_sazeb]) VALUES (8, CAST(0.20000 AS Decimal(10, 5)), 6, 2)
INSERT [dbo].[sazby] ([id], [hodnota], [id_typy_sazeb], [id_set_sazeb]) VALUES (14, CAST(0.32000 AS Decimal(10, 5)), 1, 1)
INSERT [dbo].[sazby] ([id], [hodnota], [id_typy_sazeb], [id_set_sazeb]) VALUES (15, CAST(0.25000 AS Decimal(10, 5)), 2, 1)
INSERT [dbo].[sazby] ([id], [hodnota], [id_typy_sazeb], [id_set_sazeb]) VALUES (16, CAST(0.04500 AS Decimal(10, 5)), 3, 1)
INSERT [dbo].[sazby] ([id], [hodnota], [id_typy_sazeb], [id_set_sazeb]) VALUES (17, CAST(0.10000 AS Decimal(10, 5)), 4, 1)
INSERT [dbo].[sazby] ([id], [hodnota], [id_typy_sazeb], [id_set_sazeb]) VALUES (18, CAST(0.15000 AS Decimal(10, 5)), 5, 1)
INSERT [dbo].[sazby] ([id], [hodnota], [id_typy_sazeb], [id_set_sazeb]) VALUES (19, CAST(0.15000 AS Decimal(10, 5)), 6, 1)
INSERT [dbo].[sazby] ([id], [hodnota], [id_typy_sazeb], [id_set_sazeb]) VALUES (20, CAST(1.70000 AS Decimal(10, 5)), 7, 1)
INSERT [dbo].[sazby] ([id], [hodnota], [id_typy_sazeb], [id_set_sazeb]) VALUES (21, CAST(0.10000 AS Decimal(10, 5)), 8, 1)
SET IDENTITY_INSERT [dbo].[sazby] OFF
/****** Object:  Table [dbo].[material]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[material]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[material](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[zkratka] [nvarchar](60) NOT NULL,
	[nazev] [nvarchar](255) NOT NULL,
	[cena_kc] [money] NULL,
	[cena_cm] [money] NULL,
	[id_k2] [int] NULL,
	[id_merne_jednotky] [int] NULL,
	[id_meny] [int] NULL,
	[id_kurzy] [int] NULL,
	[cena_kc2] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[material] ON
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (82, N'15P/NP0/50V C0603 C101', N'15P/NP0/50V C0603 C101', 0.0251, 0.0251, 31483, 1, 1, NULL, 0.0287)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (83, N'15P/NP0/50V C0603 C102', N'15P/NP0/50V C0603 C102', 0.0300, 0.0300, 31483, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (84, N'1M/X5R/16V C0603 C103', N'1M/X5R/16V C0603 C103', 0.0900, 0.0900, 38096, 1, 1, NULL, 0.1031)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (85, N'10N/X7R/50V C0603 C104', N'10N/X7R/50V C0603 C104', 0.1200, 0.1200, 32742, 1, 1, NULL, 0.1374)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (86, N'M1/X7R/25V C0603 C105', N'M1/X7R/25V C0603 C105', 0.0300, 0.0300, 23145, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (87, N'4M7/X5R/16V C0603 C106', N'4M7/X5R/16V C0603 C106', 0.5300, 0.5300, 47519, 1, 1, NULL, 0.6069)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (88, N'M1/X7R/25V C0603 C107', N'M1/X7R/25V C0603 C107', 0.0300, 0.0300, 23145, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (89, N'M1/X7R/25V C0603 C108', N'M1/X7R/25V C0603 C108', 0.0300, 0.0300, 23145, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (90, N'M1/X7R/25V C0603 C109', N'M1/X7R/25V C0603 C109', 0.0300, 0.0300, 23145, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (91, N'M1/X7R/25V C0603 C110', N'M1/X7R/25V C0603 C110', 0.0300, 0.0300, 23145, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (92, N'M1/X7R/25V C0603 C201', N'M1/X7R/25V C0603 C201', 0.0300, 0.0300, 23145, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (93, N'M1/X7R/25V C0603 C202', N'M1/X7R/25V C0603 C202', 0.0300, 0.0300, 23145, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (94, N'M1/X7R/25V C0603 C203', N'M1/X7R/25V C0603 C203', 0.0300, 0.0300, 23145, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (95, N'M1/X7R/25V C0603 C204', N'M1/X7R/25V C0603 C204', 0.0300, 0.0300, 23145, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (96, N'M1/X7R/25V C0603 C205', N'M1/X7R/25V C0603 C205', 0.0300, 0.0300, 23145, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (97, N'M1/X7R/25V C0603 C206', N'M1/X7R/25V C0603 C206', 0.0300, 0.0300, 23145, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (98, N'M1/X7R/25V C0603 C207', N'M1/X7R/25V C0603 C207', 0.0300, 0.0300, 23145, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (99, N'M1/X7R/25V C0603 C208', N'M1/X7R/25V C0603 C208', 0.0300, 0.0300, 23145, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (100, N'M1/X7R/50V C1206 C301', N'M1/X7R/50V C1206 C301', 0.1200, 0.1200, 9611, 1, 1, NULL, 0.1374)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (101, N'M1/X7R/50V C1206 C302', N'M1/X7R/50V C1206 C302', 0.1200, 0.1200, 9611, 1, 1, NULL, 0.1374)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (102, N'CD-100M/35/± 20%/105°C PANASONIC_F C303', N'CD-100M/35/± 20%/105°C PANASONIC_F C303', 1.8700, 1.8700, 47288, 1, 1, NULL, 2.1412)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (103, N'M1/X7R/50V C1206 C304', N'M1/X7R/50V C1206 C304', 0.1200, 0.1200, 9611, 1, 1, NULL, 0.1374)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (104, N'100P/NP0/50V C1206 C305', N'100P/NP0/50V C1206 C305', 0.2400, 0.2400, 11119, 1, 1, NULL, 0.2748)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (105, N'CD-220M/10V/± 20%/105°C PANASONIC_E C306', N'CD-220M/10V/± 20%/105°C PANASONIC_E C306', 2.3000, 2.3000, 47289, 1, 1, NULL, 2.6335)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (106, N'CD-220M/10V/± 20%/105°C PANASONIC_E C307', N'CD-220M/10V/± 20%/105°C PANASONIC_E C307', 2.3000, 2.3000, 47289, 1, 1, NULL, 2.6335)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (107, N'M1/X7R/50V C1206 C308', N'M1/X7R/50V C1206 C308', 0.1100, 0.1100, 9611, 1, 1, NULL, 0.1260)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (108, N'10M/X5R/25V C1206 C309', N'10M/X5R/25V C1206 C309', 0.4300, 0.4300, 39379, 1, 1, NULL, 0.4924)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (109, N'10M/X5R/25V C1206 C310', N'10M/X5R/25V C1206 C310', 0.4300, 0.4300, 39379, 1, 1, NULL, 0.4924)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (110, N'1M/X5R/16V C0603 C401', N'1M/X5R/16V C0603 C401', 0.0900, 0.0900, 38096, 1, 1, NULL, 0.1031)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (111, N'1M/X5R/16V C0603 C402', N'1M/X5R/16V C0603 C402', 0.0900, 0.0900, 38096, 1, 1, NULL, 0.1031)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (112, N'1M/X5R/16V C0603 C403', N'1M/X5R/16V C0603 C403', 0.0900, 0.0900, 38096, 1, 1, NULL, 0.1031)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (113, N'1M/X5R/16V C0603 C404', N'1M/X5R/16V C0603 C404', 0.0900, 0.0900, 38096, 1, 1, NULL, 0.1031)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (114, N'1M/X5R/16V C0603 C405', N'1M/X5R/16V C0603 C405', 0.0900, 0.0900, 38096, 1, 1, NULL, 0.1031)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (115, N'1M/X5R/16V C0603 C406', N'1M/X5R/16V C0603 C406', 0.0900, 0.0900, 38096, 1, 1, NULL, 0.1031)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (116, N'330P/X7R/50V C0603 C408', N'330P/X7R/50V C0603 C408', 0.0300, 0.0300, 47520, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (117, N'M1/X7R/25V C0603 C501', N'M1/X7R/25V C0603 C501', 0.0300, 0.0300, 23145, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (118, N'1M/X5R/16V C0603 C502', N'1M/X5R/16V C0603 C502', 0.0900, 0.0900, 38096, 1, 1, NULL, 0.1031)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (119, N'1M/X5R/16V C0603 C503', N'1M/X5R/16V C0603 C503', 0.0034, 0.0034, 38096, 1, 1, NULL, 0.0039)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (120, N'M22/X7R/16V C0603 C504', N'M22/X7R/16V C0603 C504', 0.1000, 0.1000, 37967, 1, 1, NULL, 0.1145)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (121, N'10M/X5R/25V C1206 C505', N'10M/X5R/25V C1206 C505', 0.4300, 0.4300, 39379, 1, 1, NULL, 0.4924)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (122, N'M1/X7R/50V C1206 C506', N'M1/X7R/50V C1206 C506', 0.1100, 0.1100, 9611, 1, 1, NULL, 0.1260)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (123, N'M1/X7R/50V C1206 C507', N'M1/X7R/50V C1206 C507', 0.1100, 0.1100, 9611, 1, 1, NULL, 0.1260)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (124, N'CD-47M/35V/± 20%/105°C PANASONIC_D C508', N'CD-47M/35V/± 20%/105°C PANASONIC_D C508', 0.8000, 0.8000, 43183, 1, 1, NULL, 0.9160)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (125, N'1N/X7R/50V C1206 C509', N'1N/X7R/50V C1206 C509', 0.1200, 0.1200, 20185, 1, 1, NULL, 0.1374)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (126, N'1N/X7R/50V C1206 C510', N'1N/X7R/50V C1206 C510', 0.1200, 0.1200, 20185, 1, 1, NULL, 0.1374)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (127, N'M1/X7R/50V C1206 C601', N'M1/X7R/50V C1206 C601', 0.1100, 0.1100, 9611, 1, 1, NULL, 0.1260)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (128, N'CD-47M/35V/± 20%/105°C PANASONIC_D C602', N'CD-47M/35V/± 20%/105°C PANASONIC_D C602', 0.8000, 0.8000, 43183, 1, 1, NULL, 0.9160)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (129, N'10N/X7R/50V C1206 C603', N'10N/X7R/50V C1206 C603', 0.1200, 0.1200, 10918, 1, 1, NULL, 0.1374)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (130, N'10N/X7R/50V C1206 C604', N'10N/X7R/50V C1206 C604', 0.1200, 0.1200, 10918, 1, 1, NULL, 0.1374)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (131, N'1M/X5R/16V C1206 C605', N'1M/X5R/16V C1206 C605', 0.2400, 0.2400, 36008, 1, 1, NULL, 0.2748)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (132, N'1M/X7R/50V C1206 C606', N'1M/X7R/50V C1206 C606', 0.2400, 0.2400, 27698, 1, 1, NULL, 1.2000)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (133, N'6M8/100V-X7R/-+20% C2220 C607', N'6M8/100V-X7R/-+20% C2220 C607', 14.2200, 14.2200, 47452, 1, 1, NULL, 16.2819)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (134, N'NUP2105L SOT23 D201', N'NUP2105L SOT23 D201', 2.2400, 2.2400, 27674, 1, 1, NULL, 2.5648)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (135, N'1N4148MICRO-MELF MICRO-MELF D202', N'1N4148MICRO-MELF MICRO-MELF D202', 0.2500, 0.2500, 28390, 1, 1, NULL, 0.2863)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (136, N'1N4148MICRO-MELF MICRO-MELF D203', N'1N4148MICRO-MELF MICRO-MELF D203', 0.2500, 0.2500, 28390, 1, 1, NULL, 0.2863)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (137, N'1N4148MICRO-MELF MICRO-MELF D204', N'1N4148MICRO-MELF MICRO-MELF D204', 0.2500, 0.2500, 28390, 1, 1, NULL, 0.2863)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (138, N'1N4148MICRO-MELF MICRO-MELF D205', N'1N4148MICRO-MELF MICRO-MELF D205', 0.2500, 0.2500, 28390, 1, 1, NULL, 0.2863)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (139, N'1N4148MICRO-MELF MICRO-MELF D206', N'1N4148MICRO-MELF MICRO-MELF D206', 0.2500, 0.2500, 28390, 1, 1, NULL, 0.2863)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (140, N'MBRS140T3 SMB-403A D207', N'MBRS140T3 SMB-403A D207', 0.9000, 0.9000, 19209, 1, 1, NULL, 1.0305)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (141, N'MBRS340T3 SMC D301', N'MBRS340T3 SMC D301', 1.4100, 1.4100, 15232, 1, 1, NULL, 1.6145)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (142, N'MBRS140T3 SMB-403A D302', N'MBRS140T3 SMB-403A D302', 0.9000, 0.9000, 19209, 1, 1, NULL, 1.0305)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (143, N'1N4148MICRO-MELF MICRO-MELF D401', N'1N4148MICRO-MELF MICRO-MELF D401', 0.2500, 0.2500, 28390, 1, 1, NULL, 0.2863)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (144, N'US1G SMA D601', N'US1G SMA D601', 0.8500, 0.8500, 47303, 1, 1, NULL, 0.9733)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (145, N'US1G SMA D602', N'US1G SMA D602', 0.8500, 0.8500, 47303, 1, 1, NULL, 0.9733)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (146, N'SMBJ28A SMB DT301', N'SMBJ28A SMB DT301', 0.9900, 0.9900, 43083, 1, 1, NULL, 1.1336)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (147, N'SMBJ28A SMB DT601', N'SMBJ28A SMB DT601', 0.9900, 0.9900, 43083, 1, 1, NULL, 1.1336)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (148, N'FSMD030-2920 FSMD FU201', N'FSMD030-2920 FSMD FU201', 2.7800, 2.7800, 47304, 1, 1, NULL, 3.1831)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (149, N'FSMD150-2920 FSMD FU301', N'FSMD150-2920 FSMD FU301', 3.1000, 3.1000, 43084, 1, 1, NULL, 3.5495)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (150, N'STM32F103RB LQFP64-LP IC101', N'STM32F103RB LQFP64-LP IC101', 46.8000, 46.8000, 26818, 1, 1, NULL, 53.5860)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (151, N'TJA1051T/3 SO08 IC201', N'TJA1051T/3 SO08 IC201', 6.2400, 6.2400, 43089, 1, 1, NULL, 7.1448)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (152, N'LM2594M-5.0 SO8 IC301', N'LM2594M-5.0 SO8 IC301', 23.1400, 23.1400, 47305, 1, 1, NULL, 26.4953)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (153, N'TPS79333DBV SOT23-5 IC302', N'TPS79333DBV SOT23-5 IC302', 3.8400, 3.8400, 47306, 1, 1, NULL, 4.3968)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (154, N'LM324D SO14 IC401', N'LM324D SO14 IC401', 1.0700, 1.0700, 47307, 1, 1, NULL, 1.2252)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (155, N'LMV301 SC70-5 IC501', N'LMV301 SC70-5 IC501', 6.4900, 6.4900, 47308, 1, 1, NULL, 7.4311)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (156, N'A3984 TSSOP24+TP IC502', N'A3984 TSSOP24+TP IC502', 44.2000, 44.2000, 47309, 1, 1, NULL, 50.6090)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (157, N'VNI2140J POWERSSO-12 IC601', N'VNI2140J POWERSSO-12 IC601', 27.3300, 27.3300, 43094, 1, 1, NULL, 31.2929)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (158, N'BD6230 SOP8 IC602', N'BD6230 SOP8 IC602', 27.3300, 27.3300, 47312, 1, 1, NULL, 31.2929)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (159, N'LG A676-GR OSRAM-SIDELED LED401', N'LG A676-GR OSRAM-SIDELED LED401', 1.1700, 1.1700, 47310, 1, 1, NULL, 1.3397)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (160, N'LY A676-YE OSRAM-SIDELED LED402', N'LY A676-YE OSRAM-SIDELED LED402', 1.1200, 1.1200, 47311, 1, 1, NULL, 1.2824)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (161, N'LS A676-RE OSRAM-SIDELED LED403', N'LS A676-RE OSRAM-SIDELED LED403', 1.1200, 1.1200, 47313, 1, 1, NULL, 1.2824)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (162, N'SFH4244 OSRAM-SIDELED OD401', N'SFH4244 OSRAM-SIDELED OD401', 5.0700, 5.0700, 47314, 1, 1, NULL, 5.8052)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (163, N'SFH4244 OSRAM-SIDELED LED404', N'SFH4244 OSRAM-SIDELED LED404', 5.0700, 5.0700, 47314, 1, 1, NULL, 5.8052)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (164, N'TEFT4300 TEFT4300-angle OT401', N'TEFT4300 TEFT4300-angle OT401', 3.1200, 3.1200, 47315, 1, 1, NULL, 3.5724)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (165, N'SFH325 P-LCC-2 OT402', N'SFH325 P-LCC-2 OT402', 3.1200, 3.1200, 47317, 1, 1, NULL, 3.5724)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (166, N'8MHz KX-9A Q101', N'8MHz KX-9A Q101', 7.7100, 7.7100, 43098, 1, 1, NULL, 8.8280)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (167, N'10K R0603 R101', N'10K R0603 R101', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (168, N'10K R0603 R102', N'10K R0603 R102', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (169, N'10K R0603 R103', N'10K R0603 R103', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (170, N'0R R0603 R104', N'0R R0603 R104', 0.0100, 0.0100, 20531, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (171, N'0R R0603 R105', N'0R R0603 R105', 0.0100, 0.0100, 20531, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (172, N'0R R0603 R106', N'0R R0603 R106', 0.0100, 0.0100, 20531, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (173, N'10K R0603 R107', N'10K R0603 R107', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (174, N'0R R0603 R108', N'0R R0603 R108', 0.0100, 0.0100, 20531, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (175, N'0R R1206 R201', N'0R R1206 R201', 0.0300, 0.0300, 6232, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (176, N'100K R0603 R202', N'100K R0603 R202', 0.0100, 0.0100, 19993, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (177, N'2K4 R0603 R203', N'2K4 R0603 R203', 0.0100, 0.0100, 32527, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (178, N'3R3 R1206 R204', N'3R3 R1206 R204', 0.0400, 0.0400, 38116, 1, 1, NULL, 0.0458)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (179, N'3R3 R1206 R205', N'3R3 R1206 R205', 0.0400, 0.0400, 38116, 1, 1, NULL, 0.0458)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (180, N'100K R0603 R206', N'100K R0603 R206', 0.0100, 0.0100, 19993, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (181, N'10K R0603 R207', N'10K R0603 R207', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
GO
print 'Processed 100 total records'
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (182, N'10K R0603 R208', N'10K R0603 R208', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (183, N'10K R0603 R209', N'10K R0603 R209', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (184, N'10K R0603 R210', N'10K R0603 R210', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (185, N'10K R0603 R211', N'10K R0603 R211', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (186, N'10K R0603 R212', N'10K R0603 R212', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (187, N'10K R0603 R213', N'10K R0603 R213', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (188, N'10K R0603 R214', N'10K R0603 R214', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (189, N'10K R0603 R215', N'10K R0603 R215', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (190, N'10K R0603 R216', N'10K R0603 R216', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (191, N'3K0 R0603 R217', N'3K0 R0603 R217', 0.0100, 0.0100, 33567, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (192, N'10R R0603 R218', N'10R R0603 R218', 0.0100, 0.0100, 35516, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (193, N'3K0 R0603 R219', N'3K0 R0603 R219', 0.0100, 0.0100, 33567, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (194, N'22K R1206 R220', N'22K R1206 R220', 0.0300, 0.0300, 10141, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (195, N'10R R1206 R301', N'10R R1206 R301', 0.0300, 0.0300, 10049, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (196, N'10R R1206 R302', N'10R R1206 R302', 0.0300, 0.0300, 10049, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (197, N'470R R1206 R303', N'470R R1206 R303', 0.0300, 0.0300, 25179, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (198, N'100R R1206 R401', N'100R R1206 R401', 0.0300, 0.0300, 25842, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (199, N'3K0 R0603 R402', N'3K0 R0603 R402', 0.0100, 0.0100, 33567, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (200, N'2K0 R0603 R403', N'2K0 R0603 R403', 0.0100, 0.0100, 21249, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (201, N'3K0 R0603 R404', N'3K0 R0603 R404', 0.0100, 0.0100, 33567, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (202, N'1M R0603 R405', N'1M R0603 R405', 0.0100, 0.0100, 18031, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (203, N'10K R0603 R406', N'10K R0603 R406', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (204, N'10K R0603 R407', N'10K R0603 R407', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (205, N'3K0 R0603 R408', N'3K0 R0603 R408', 0.0100, 0.0100, 33567, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (206, N'20K R0603 R409', N'20K R0603 R409', 0.0100, 0.0100, 26319, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (207, N'1K0 R0603 R410', N'1K0 R0603 R410', 0.0100, 0.0100, 26409, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (208, N'2K0 R0603 R411', N'2K0 R0603 R411', 0.0100, 0.0100, 21249, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (209, N'22K R0603 R412', N'22K R0603 R412', 0.0100, 0.0100, 18028, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (210, N'39K R0603 R413', N'39K R0603 R413', 0.0100, 0.0100, 19992, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (211, N'300K R0603 R414', N'300K R0603 R414', 0.0100, 0.0100, 34727, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (212, N'3K0 R0603 R416', N'3K0 R0603 R416', 0.0100, 0.0100, 33567, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (213, N'3K0 R0603 R417', N'3K0 R0603 R417', 0.0100, 0.0100, 33567, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (214, N'1M R0603 R418', N'1M R0603 R418', 0.0100, 0.0100, 18031, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (215, N'1K0 R0603 R419', N'1K0 R0603 R419', 0.0100, 0.0100, 26409, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (216, N'2K0 R0603 R420', N'2K0 R0603 R420', 0.0100, 0.0100, 21249, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (217, N'300R R0603 R421', N'300R R0603 R421', 0.0100, 0.0100, 33956, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (218, N'47K R0603 R422', N'47K R0603 R422', 0.0100, 0.0100, 26411, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (219, N'470R R0603 R423', N'470R R0603 R423', 0.0100, 0.0100, 35514, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (220, N'150R R0603 R424', N'150R R0603 R424', 0.0100, 0.0100, 26410, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (221, N'120R R0603 R425', N'120R R0603 R425', 0.0100, 0.0100, 27070, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (222, N'10K R0603 R501', N'10K R0603 R501', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (223, N'10K R0603 R502', N'10K R0603 R502', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (224, N'300K R0603 R503', N'300K R0603 R503', 0.0100, 0.0100, 34727, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (225, N'1K0 R0603 R504', N'1K0 R0603 R504', 0.0100, 0.0100, 26409, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (226, N'10K R0603 R505', N'10K R0603 R505', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (227, N'10K R0603 R506', N'10K R0603 R506', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (228, N'10K R0603 R507', N'10K R0603 R507', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (229, N'24K R0603 R508', N'24K R0603 R508', 0.0100, 0.0100, 33260, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (230, N'R1 R2512 R509', N'R1 R2512 R509', 1.4000, 1.4000, 28618, 1, 1, NULL, 1.6030)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (231, N'R1 R2512 R510', N'R1 R2512 R510', 1.4000, 1.4000, 28618, 1, 1, NULL, 1.6030)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (232, N'1K0/500V R2512 R511', N'1K0/500V R2512 R511', 0.4300, 0.4300, 47320, 1, 1, NULL, 0.4924)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (233, N'100R R0603 R601', N'100R R0603 R601', 0.0100, 0.0100, 35513, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (234, N'100R R0603 R602', N'100R R0603 R602', 0.0100, 0.0100, 35513, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (235, N'10K R0603 R603', N'10K R0603 R603', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (236, N'10K R0603 R604', N'10K R0603 R604', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (237, N'4K7 R0603 R605', N'4K7 R0603 R605', 0.0100, 0.0100, 20536, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (238, N'4K7 R0603 R606', N'4K7 R0603 R606', 0.0100, 0.0100, 20536, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (239, N'100R R0603 R607', N'100R R0603 R607', 0.0100, 0.0100, 35513, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (240, N'3K3 R0603 R608', N'3K3 R0603 R608', 0.0100, 0.0100, 28447, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (241, N'100R R0603 R609', N'100R R0603 R609', 0.0100, 0.0100, 35513, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (242, N'100R R0603 R610', N'100R R0603 R610', 0.0100, 0.0100, 35513, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (243, N'10K R0603 R611', N'10K R0603 R611', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (244, N'10K R0603 R612', N'10K R0603 R612', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (245, N'MMBTA42SMD SOT23 T201', N'MMBTA42SMD SOT23 T201', 0.3100, 0.3100, 46029, 1, 1, NULL, 0.3550)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (246, N'MSS1048-2,2uH MSS1048 TL301', N'MSS1048-2,2uH MSS1048 TL301', 6.0900, 6.0900, 47322, 1, 1, NULL, 6.9731)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (247, N'MSS1048-220uH MSS1048 TL302', N'MSS1048-220uH MSS1048 TL302', 6.0900, 6.0900, 47323, 1, 1, NULL, 6.9731)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (248, N'MSTBA2,5/2-G PHOENIX_MSTBA2,5/2-G X1', N'MSTBA2,5/2-G PHOENIX_MSTBA2,5/2-G X1', 11.7400, 11.7400, 29552, 1, 1, NULL, 13.4423)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (249, N'RJ45 2-215877-1 (black) 215877-7 X2', N'RJ45 2-215877-1 (black) 215877-7 X2', 3.9000, 3.9000, 19773, 1, 1, NULL, 4.4655)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (250, N'05PIN-S5B-XH-A (white) S5B-XH-A X3', N'05PIN-S5B-XH-A (white) S5B-XH-A X3', 2.1100, 2.1100, 6024, 1, 1, NULL, 2.4160)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (251, N'02PIN-S2B-XH-A-BK (black) S2B-XH-A X4', N'02PIN-S2B-XH-A-BK (black) S2B-XH-A X4', 1.1200, 1.1200, 6018, 1, 1, NULL, 1.2824)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (252, N'02PIN-S2B-XH-A (white) S2B-XH-A X5', N'02PIN-S2B-XH-A (white) S2B-XH-A X5', 1.1200, 1.1200, 6018, 1, 1, NULL, 1.2824)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (253, N'03PIN-S3B-XH-A (white) S3B-XH-A X6', N'03PIN-S3B-XH-A (white) S3B-XH-A X6', 1.5900, 1.5900, 6019, 1, 1, NULL, 1.8206)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (254, N'04PIN-S4B-XH-A (white) S4B-XH-A X7', N'04PIN-S4B-XH-A (white) S4B-XH-A X7', 1.9900, 1.9900, 6011, 1, 1, NULL, 2.2786)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (255, N'RJ45 4-215877-1 (blue) 215877-7 X8', N'RJ45 4-215877-1 (blue) 215877-7 X8', 10.7600, 10.7600, 47362, 1, 1, NULL, 12.3202)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (256, N'08PIN-B8B-ZR-SM4-TF B8B-ZR-SM4-TF X9', N'08PIN-B8B-ZR-SM4-TF B8B-ZR-SM4-TF X9', 6.8000, 6.8000, 47325, 1, 1, NULL, 7.7860)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (257, N'DPS', N'DPS', 31.3000, 31.3000, 47526, 1, 1, NULL, 35.8385)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (261, N'KRYT 4022 293 48101                                         ', N'KRYT 4022 293 48101                                               ', 645.0000, 645.0000, 44937, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (262, N'PRIRUBA 1022732', N'PRIRUBA 1022732', 830.0000, 830.0000, 45584, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (263, N'KRYT 4022 293 48101                                         ', N'KRYT 4022 293 48101                                               ', 645.0000, 645.0000, 44937, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (264, N'KRYT ZADNI 4022 290 61631                                   ', N'KRYT ZADNI 4022 290 61631                                         ', 399.0000, 399.0000, 44938, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (265, N'DESKA OCHRANNA 1028673-A-110-01', N'DESKA OCHRANNA 1028673-A-110-01', 72.0000, 72.0000, 44939, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (266, N'DISTANCNI SLOUPEK M3x10 MM 5.13.109 NEREZ                   ', N'DISTANCNI SLOUPEK M3x10 MM 5.13.109 NEREZ                         ', 5.4200, 5.4200, 14213, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (267, N'AMP KOLIK 5216675-4 RoHS                                    ', N'AMP KOLIK 5216675-4 RoHS                                          ', 4.9000, 4.9000, 40971, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (268, N'ZAPADKA POSUVNÁ CONEC 160X10159X                            ', N'ZAPADKA POSUVNÁ CONEC 160X10159X                                  ', 25.0000, 25.0000, 41335, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (269, N'SROUB M3X8 ISO 14583-A4 (BN 20038)                          ', N'SROUB M3X8 ISO 14583-A4 (BN 20038)                                ', 0.6600, 0.6600, 41989, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (270, N'MATICE M3 DIN 934-A4  (BN 629)                              ', N'MATICE M3 DIN 934-A4  (BN 629)                                    ', 0.5400, 0.5400, 41994, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (271, N'SROUB M2,5X6 ISO 14583 A4 (BN20038)                         ', N'SROUB M2,5X6 ISO 14583 A4 (BN20038)                               ', 0.4500, 0.4500, 42127, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (272, N'SROUB M3X6 ISO 14583-A4 (BN 20038)                          ', N'SROUB M3X6 ISO 14583-A4 (BN 20038)                                ', 0.7700, 0.7700, 42296, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (273, N'DPS FEI 1102004 (GOLD) Isola IS400 (PANEL 1x2 ks)', N'DPS FEI 1102004 (GOLD) Isola IS400 (PANEL 1x2 ks)', 617.0000, 617.0000, 47647, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (274, N'TK SMD 0805 100N/50V 10% X7R (V PASU) RoHS', N'TK SMD 0805 100N/50V 10% X7R (V PASU) RoHS', 0.0400, 0.0400, 15213, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (275, N'TK SMD 1206 10M/16V 10% X5R (V PASU) RoHS', N'TK SMD 1206 10M/16V 10% X5R (V PASU) RoHS', 0.5300, 0.5300, 39278, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (276, N'TK SMD 0805 10N/50V 10% X7R (V PASU) RoHS', N'TK SMD 0805 10N/50V 10% X7R (V PASU) RoHS', 0.0400, 0.0400, 15212, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (277, N'TK SMD 0805 1N/50V 5% C0G/NPO (V PASU) RoHS', N'TK SMD 0805 1N/50V 5% C0G/NPO (V PASU) RoHS', 0.0900, 0.0900, 16041, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (278, N'TK SMD 1206 1M/16V 10% X7R (V PASU) RoHS', N'TK SMD 1206 1M/16V 10% X7R (V PASU) RoHS', 0.5700, 0.5700, 19516, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (279, N'CS 470M/16V (SMD 10 x 10,5mm) RoHS', N'CS 470M/16V (SMD 10 x 10,5mm) RoHS', 5.2000, 5.2000, 19268, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (280, N'R1LP0108ESP-7SR (SMD SOP-32) RoHS', N'R1LP0108ESP-7SR (SMD SOP-32) RoHS', 34.0200, 34.0200, 45215, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (281, N'74ACT245SC (SMD SOIC-20, Fairchild) RoHS', N'74ACT245SC (SMD SOIC-20, Fairchild) RoHS', 11.2600, 11.2600, 45217, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (282, N'CD74ACT573M (SMD SOIC-20) RoHS', N'CD74ACT573M (SMD SOIC-20) RoHS', 12.4100, 12.4100, 39097, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (283, N'LM393M (SMD SOIC8) RoHS', N'LM393M (SMD SOIC8) RoHS', 5.5000, 5.5000, 40325, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (284, N'AM29F010B-70JF (PLCC-32)  RoHS', N'AM29F010B-70JF (PLCC-32)  RoHS', 30.0000, 30.0000, 39442, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (285, N'ATF22V10C-15JU (SMD PLCC28)  RoHS', N'ATF22V10C-15JU (SMD PLCC28)  RoHS', 35.4900, 35.4900, 45216, 1, 1, NULL, NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (286, N'AMP PATICE PLCC28 822516-2 (SMD)  RoHS', N'AMP PATICE PLCC28 822516-2 (SMD)  RoHS', 23.1000, 23.1000, 39088, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (287, N'PATICE PLCC32 (SMD, 56484-432LF) RoHS, problém', N'PATICE PLCC32 (SMD, 56484-432LF) RoHS, problém', 21.4300, 21.4300, 39089, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (288, N'AD810ARZ (SMD SO-8) RoHS', N'AD810ARZ (SMD SO-8) RoHS', 79.4900, 79.4900, 39128, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (289, N'ODPOR SMD 0603 2K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 2K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 21249, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (290, N'ODPOR SMD 0603 1K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 1K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26409, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (291, N'ODPOR SMD 0603 2K7/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 2K7/F 0,1W (V PASU) RoHS', 0.0200, 0.0200, 26519, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (292, N'ODPOR SMD 0603 0R (V PASU) RoHS', N'ODPOR SMD 0603 0R (V PASU) RoHS', 0.0100, 0.0100, 20531, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (293, N'ODPOR SMD 1206 10R/F (V PASU) 0,25W RoHS', N'ODPOR SMD 1206 10R/F (V PASU) 0,25W RoHS', 0.0300, 0.0300, 10049, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (294, N'ODPOR SMD 0603 10K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 10K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26778, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (295, N'ODPOR SMD 0603 470R/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 470R/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 35514, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (296, N'ODPOR SMD 0603 220R/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 220R/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 31118, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (297, N'ODPOR SMD 0603 10R/F 0,1W (V PASU)  RoHS', N'ODPOR SMD 0603 10R/F 0,1W (V PASU)  RoHS', 0.0100, 0.0100, 35516, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (298, N'ODPOR SMD 1206 1K/F (V PASU) 0,25W RoHS', N'ODPOR SMD 1206 1K/F (V PASU) 0,25W RoHS', 0.0300, 0.0300, 14888, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (299, N'ODPOR SMD 0603 15K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 15K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 19991, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (300, N'ODPOR SMD 0603 18K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 18K/F 0,1W (V PASU) RoHS', 0.0300, 0.0300, 35951, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (301, N'ODPOR SMD 0603 27K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 27K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 20000, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (302, N'ODPOR SMD 0603 120K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 120K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 32272, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (303, N'ODPOR SMD 0603 47K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 47K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26411, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (304, N'BC849C (SMD SOT-23) 30V/0,2A RoHS', N'BC849C (SMD SOT-23) 30V/0,2A RoHS', 1.1400, 1.1400, 39139, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (305, N'BAS16 (SMD SOT23) 100V/215mA (NXP) RoHS', N'BAS16 (SMD SOT23) 100V/215mA (NXP) RoHS', 0.1800, 0.1800, 29812, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (306, N'LM385M3-2.5 (SMD SOT-23-3) RoHS', N'LM385M3-2.5 (SMD SOT-23-3) RoHS', 24.3700, 24.3700, 39140, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (307, N'VIDLICE 2X25 SMD (ERNI 054596) RoHS', N'VIDLICE 2X25 SMD (ERNI 054596) RoHS', 139.3900, 139.3900, 39142, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (308, N'ZASUVKA 2X6 SMD (ERNI 064318) RoHS', N'ZASUVKA 2X6 SMD (ERNI 064318) RoHS', 106.0000, 106.0000, 39147, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (872, N'STITEK TYPOVY 45,7x21,2 mm odolné vlivům počasí (L4778-20)', N'STITEK TYPOVY 45,7x21,2 mm odolné vlivům počasí (L4778-20)', 0.7100, 0.7100, 41374, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (873, N'PRIRUBA 1022732', N'PRIRUBA 1022732', 830.0000, 830.0000, 45584, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (874, N'KRYT 4022 293 48101                                         ', N'KRYT 4022 293 48101                                               ', 645.0000, 645.0000, 44937, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (875, N'KRYT ZADNI 4022 290 61631                                   ', N'KRYT ZADNI 4022 290 61631                                         ', 399.0000, 399.0000, 44938, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (876, N'DESKA OCHRANNA 1028673-A-110-01', N'DESKA OCHRANNA 1028673-A-110-01', 72.0000, 72.0000, 44939, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (877, N'DISTANCNI SLOUPEK M3x10 MM 5.13.109 NEREZ                   ', N'DISTANCNI SLOUPEK M3x10 MM 5.13.109 NEREZ                         ', 5.4200, 5.4200, 14213, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (878, N'AMP KOLIK 5216675-4 RoHS                                    ', N'AMP KOLIK 5216675-4 RoHS                                          ', 4.9000, 4.9000, 40971, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (879, N'ZAPADKA POSUVNÁ CONEC 160X10159X                            ', N'ZAPADKA POSUVNÁ CONEC 160X10159X                                  ', 25.0000, 25.0000, 41335, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (880, N'SROUB M3X8 ISO 14583-A4 (BN 20038)                          ', N'SROUB M3X8 ISO 14583-A4 (BN 20038)                                ', 0.6600, 0.6600, 41989, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (881, N'MATICE M3 DIN 934-A4  (BN 629)                              ', N'MATICE M3 DIN 934-A4  (BN 629)                                    ', 0.5400, 0.5400, 41994, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (882, N'SROUB M2,5X6 ISO 14583 A4 (BN20038)                         ', N'SROUB M2,5X6 ISO 14583 A4 (BN20038)                               ', 0.4500, 0.4500, 42127, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (883, N'SROUB M3X6 ISO 14583-A4 (BN 20038)                          ', N'SROUB M3X6 ISO 14583-A4 (BN 20038)                                ', 0.7700, 0.7700, 42296, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (884, N'DPS FEI 1102004 (GOLD) Isola IS400 (PANEL 1x2 ks)', N'DPS FEI 1102004 (GOLD) Isola IS400 (PANEL 1x2 ks)', 617.0000, 617.0000, 47647, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (885, N'TK SMD 0805 100N/50V 10% X7R (V PASU) RoHS', N'TK SMD 0805 100N/50V 10% X7R (V PASU) RoHS', 0.0400, 0.0400, 15213, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (886, N'TK SMD 1206 10M/16V 10% X5R (V PASU) RoHS', N'TK SMD 1206 10M/16V 10% X5R (V PASU) RoHS', 0.5300, 0.5300, 39278, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (887, N'TK SMD 0805 10N/50V 10% X7R (V PASU) RoHS', N'TK SMD 0805 10N/50V 10% X7R (V PASU) RoHS', 0.0400, 0.0400, 15212, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (888, N'TK SMD 0805 1N/50V 5% C0G/NPO (V PASU) RoHS', N'TK SMD 0805 1N/50V 5% C0G/NPO (V PASU) RoHS', 0.0900, 0.0900, 16041, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (889, N'TK SMD 1206 1M/16V 10% X7R (V PASU) RoHS', N'TK SMD 1206 1M/16V 10% X7R (V PASU) RoHS', 0.5700, 0.5700, 19516, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (890, N'CS 470M/16V (SMD 10 x 10,5mm) RoHS', N'CS 470M/16V (SMD 10 x 10,5mm) RoHS', 5.2000, 5.2000, 19268, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (891, N'R1LP0108ESP-7SR (SMD SOP-32) RoHS', N'R1LP0108ESP-7SR (SMD SOP-32) RoHS', 34.0200, 34.0200, 45215, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (892, N'74ACT245SC (SMD SOIC-20, Fairchild) RoHS', N'74ACT245SC (SMD SOIC-20, Fairchild) RoHS', 11.2600, 11.2600, 45217, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (893, N'CD74ACT573M (SMD SOIC-20) RoHS', N'CD74ACT573M (SMD SOIC-20) RoHS', 12.4100, 12.4100, 39097, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (894, N'LM393M (SMD SOIC8) RoHS', N'LM393M (SMD SOIC8) RoHS', 5.5000, 5.5000, 40325, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (895, N'AM29F010B-70JF (PLCC-32)  RoHS', N'AM29F010B-70JF (PLCC-32)  RoHS', 30.0000, 30.0000, 39442, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (896, N'ATF22V10C-15JU (SMD PLCC28)  RoHS', N'ATF22V10C-15JU (SMD PLCC28)  RoHS', 35.4900, 35.4900, 45216, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (897, N'AMP PATICE PLCC28 822516-2 (SMD)  RoHS', N'AMP PATICE PLCC28 822516-2 (SMD)  RoHS', 23.1000, 23.1000, 39088, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (898, N'PATICE PLCC32 (SMD, 56484-432LF) RoHS, problém', N'PATICE PLCC32 (SMD, 56484-432LF) RoHS, problém', 21.4300, 21.4300, 39089, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (899, N'AD810ARZ (SMD SO-8) RoHS', N'AD810ARZ (SMD SO-8) RoHS', 79.4900, 79.4900, 39128, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (900, N'ODPOR SMD 0603 2K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 2K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 21249, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (901, N'ODPOR SMD 0603 1K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 1K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26409, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (902, N'ODPOR SMD 0603 2K7/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 2K7/F 0,1W (V PASU) RoHS', 0.0200, 0.0200, 26519, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (903, N'ODPOR SMD 0603 0R (V PASU) RoHS', N'ODPOR SMD 0603 0R (V PASU) RoHS', 0.0100, 0.0100, 20531, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (904, N'ODPOR SMD 1206 10R/F (V PASU) 0,25W RoHS', N'ODPOR SMD 1206 10R/F (V PASU) 0,25W RoHS', 0.0300, 0.0300, 10049, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (905, N'ODPOR SMD 0603 10K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 10K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26778, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (906, N'ODPOR SMD 0603 470R/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 470R/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 35514, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (907, N'ODPOR SMD 0603 220R/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 220R/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 31118, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (908, N'ODPOR SMD 0603 10R/F 0,1W (V PASU)  RoHS', N'ODPOR SMD 0603 10R/F 0,1W (V PASU)  RoHS', 0.0100, 0.0100, 35516, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (909, N'ODPOR SMD 1206 1K/F (V PASU) 0,25W RoHS', N'ODPOR SMD 1206 1K/F (V PASU) 0,25W RoHS', 0.0300, 0.0300, 14888, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (910, N'ODPOR SMD 0603 15K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 15K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 19991, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (911, N'ODPOR SMD 0603 18K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 18K/F 0,1W (V PASU) RoHS', 0.0300, 0.0300, 35951, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (912, N'ODPOR SMD 0603 27K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 27K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 20000, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (913, N'ODPOR SMD 0603 120K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 120K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 32272, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (914, N'ODPOR SMD 0603 47K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 47K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26411, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (915, N'BC849C (SMD SOT-23) 30V/0,2A RoHS', N'BC849C (SMD SOT-23) 30V/0,2A RoHS', 1.1400, 1.1400, 39139, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (916, N'BAS16 (SMD SOT23) 100V/215mA (NXP) RoHS', N'BAS16 (SMD SOT23) 100V/215mA (NXP) RoHS', 0.1800, 0.1800, 29812, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (917, N'LM385M3-2.5 (SMD SOT-23-3) RoHS', N'LM385M3-2.5 (SMD SOT-23-3) RoHS', 24.3700, 24.3700, 39140, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (918, N'VIDLICE 2X25 SMD (ERNI 054596) RoHS', N'VIDLICE 2X25 SMD (ERNI 054596) RoHS', 139.3900, 139.3900, 39142, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (919, N'ZASUVKA 2X6 SMD (ERNI 064318) RoHS', N'ZASUVKA 2X6 SMD (ERNI 064318) RoHS', 106.0000, 106.0000, 39147, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (920, N'TK SMD 0805 100N/50V 10% X7R (V PASU) RoHS', N'TK SMD 0805 100N/50V 10% X7R (V PASU) RoHS', 0.0400, 0.0400, 15213, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (921, N'TK SMD 1206 10M/16V 10% X5R (V PASU) RoHS', N'TK SMD 1206 10M/16V 10% X5R (V PASU) RoHS', 0.5300, 0.5300, 39278, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (922, N'TK SMD 0805 22P/50V 5% C0G/NPO (V PASU) RoHS', N'TK SMD 0805 22P/50V 5% C0G/NPO (V PASU) RoHS', 0.0800, 0.0800, 10480, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (923, N'TK SMD 1206 1M/16V 10% X7R (V PASU) RoHS', N'TK SMD 1206 1M/16V 10% X7R (V PASU) RoHS', 0.5700, 0.5700, 19516, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (924, N'TK SMD 0805 10N/50V 10% X7R (V PASU) RoHS', N'TK SMD 0805 10N/50V 10% X7R (V PASU) RoHS', 0.0400, 0.0400, 15212, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (925, N'TK SMD 0805 1N/50V 5% C0G/NPO (V PASU) RoHS', N'TK SMD 0805 1N/50V 5% C0G/NPO (V PASU) RoHS', 0.0900, 0.0900, 16041, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (926, N'R1LP0108ESP-7SR (SMD SOP-32) RoHS', N'R1LP0108ESP-7SR (SMD SOP-32) RoHS', 34.0200, 34.0200, 45215, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (927, N'CD74ACT573M (SMD SOIC-20) RoHS', N'CD74ACT573M (SMD SOIC-20) RoHS', 15.1600, 15.1600, 39097, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (928, N'74AHC1G04GW (SMD SOT-353, TSSOP-5) RoHS', N'74AHC1G04GW (SMD SOT-353, TSSOP-5) RoHS', 1.1300, 1.1300, 45218, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (929, N'74HCT74 (SMD SO-14) RoHS', N'74HCT74 (SMD SO-14) RoHS', 9.4800, 9.4800, 36314, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (930, N'ADM811LARTZ (SMD SOT-143)  RoHS', N'ADM811LARTZ (SMD SOT-143)  RoHS', 12.1800, 12.1800, 39102, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (931, N'4051 (SMD SO-16) RoHS', N'4051 (SMD SO-16) RoHS', 5.0000, 5.0000, 6529, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (932, N'TJA1040T/VM (SMD SO8) RoHS', N'TJA1040T/VM (SMD SO8) RoHS', 29.5300, 29.5300, 45219, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (933, N'AD5327BRUZ (SMD TSSOP16) RoHS', N'AD5327BRUZ (SMD TSSOP16) RoHS', 310.8000, 310.8000, 39107, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (934, N'AD5323BRUZ (SMD TSSOP16) RoHS', N'AD5323BRUZ (SMD TSSOP16) RoHS', 217.1400, 217.1400, 39108, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (935, N'NC7SZ125P5X (SMD SC70-5) RoHS', N'NC7SZ125P5X (SMD SC70-5) RoHS', 1.4600, 1.4600, 39109, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (936, N'POZISTOR SMD 1812L110/16 (SMD 1812 16V/1,1A) RoHS', N'POZISTOR SMD 1812L110/16 (SMD 1812 16V/1,1A) RoHS', 6.7000, 6.7000, 47778, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (937, N'POZISTOR SMD 1812L050-C (SMD 1812 15V/0,5A) RoHS', N'POZISTOR SMD 1812L050-C (SMD 1812 15V/0,5A) RoHS', 6.0900, 6.0900, 39118, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (938, N'QUARTZ 10,0000 MHZ (SMD SMU3) RoHS', N'QUARTZ 10,0000 MHZ (SMD SMU3) RoHS', 7.9500, 7.9500, 39119, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (939, N'LQ SMD LST67K-J1K2-1 (červená)  RoHS', N'LQ SMD LST67K-J1K2-1 (červená)  RoHS', 2.5100, 2.5100, 47035, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (940, N'LQ SMD LYT67K-J2L1-26 (žlutá)  RoHS', N'LQ SMD LYT67K-J2L1-26 (žlutá)  RoHS', 2.5900, 2.5900, 47036, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (941, N'LQ SMD LGT67K-H2K1-24-Z (zelená) RoHS', N'LQ SMD LGT67K-H2K1-24-Z (zelená) RoHS', 0.7400, 0.7400, 40618, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (942, N'FERIT MURATA BLM18AG102SN1D (SMD 0603, 1Kohm/400mA) RoHS', N'FERIT MURATA BLM18AG102SN1D (SMD 0603, 1Kohm/400mA) RoHS', 0.1900, 0.1900, 35575, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (943, N'AD8131ARZ (SMD SO-8) RoHS', N'AD8131ARZ (SMD SO-8) RoHS', 34.7900, 34.7900, 39130, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (944, N'OPA2703UA (SMD SOIC8) RoHS', N'OPA2703UA (SMD SOIC8) RoHS', 87.1100, 87.1100, 39132, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (945, N'REF3040AIDBZT (SMD SOT-23) RoHS', N'REF3040AIDBZT (SMD SOT-23) RoHS', 22.8400, 22.8400, 39134, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (946, N'LM431CIM3 (SMD SOT-23) RoHS', N'LM431CIM3 (SMD SOT-23) RoHS', 11.5700, 11.5700, 47056, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (947, N'ODPOR SMD 0603 1K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 1K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26409, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (948, N'ODPOR SMD 0603 0R (V PASU) RoHS', N'ODPOR SMD 0603 0R (V PASU) RoHS', 0.0100, 0.0100, 20531, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (949, N'ODPOR SMD 0603 2K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 2K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 21249, 1, 1, NULL, NULL)
GO
print 'Processed 300 total records'
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (950, N'ODPOR SMD 1206 110R/F (V PASU) 0,25W RoHS', N'ODPOR SMD 1206 110R/F (V PASU) 0,25W RoHS', 0.0300, 0.0300, 19665, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (951, N'ODPOR SMD 1206 10R/F (V PASU) 0,25W RoHS', N'ODPOR SMD 1206 10R/F (V PASU) 0,25W RoHS', 0.0300, 0.0300, 10049, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (952, N'ODPOR SMD 0603 10K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 10K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26778, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (953, N'ODPOR SMD 0603 100K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 100K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 19993, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (954, N'ODPOR SMD 0603 100R/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 100R/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 35513, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (955, N'ODPOR SMD 0603 47K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 47K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26411, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (956, N'ODPOR SMD 0603 220K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 220K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 40336, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (957, N'ODPOR SMD 0603 470R/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 470R/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 35514, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (958, N'ODPOR SMD 0603 2K2/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 2K2/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 21250, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (959, N'ODPOR SMD 0603 20K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 20K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26319, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (960, N'ODPOR SMD 0603 33K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 33K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 28573, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (961, N'ODPOR SMD 0603 18K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 18K/F 0,1W (V PASU) RoHS', 0.0300, 0.0300, 35951, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (962, N'ODPOR SMD 1206 120R/F (V PASU) RoHS', N'ODPOR SMD 1206 120R/F (V PASU) RoHS', 0.2100, 0.2100, 45223, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (963, N'ODPOR SMD 0603 1K2/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 1K2/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 19998, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (964, N'ODPOR SMD 0603 47R/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 47R/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 19990, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (965, N'ODPOR SMD 1206 100R/F (V PASU) 0,25W RoHS', N'ODPOR SMD 1206 100R/F (V PASU) 0,25W RoHS', 0.0300, 0.0300, 25842, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (966, N'ODPOR SMD 0603 15K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 15K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 19991, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (967, N'ODPOR SMD 0603 4K7/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 4K7/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 20536, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (968, N'ODPOR SMD 0603 22K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 22K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 18028, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (969, N'ODPOR SMD 1218 10R/F 1W (V PASU) RoHS', N'ODPOR SMD 1218 10R/F 1W (V PASU) RoHS', 4.2000, 4.2000, 43876, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (970, N'BC859C (SMD SOT-23) 30V/0,2A RoHS', N'BC859C (SMD SOT-23) 30V/0,2A RoHS', 1.0500, 1.0500, 39138, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (971, N'EGL1D (SMD miniMELF, DO-213AA, SOD-80) 200V/1A RoHS', N'EGL1D (SMD miniMELF, DO-213AA, SOD-80) 200V/1A RoHS', 9.1000, 9.1000, 39141, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (972, N'EGL1D (SMD miniMELF, DO-213AA, SOD-80) 200V/1A RoHS', N'EGL1D (SMD miniMELF, DO-213AA, SOD-80) 200V/1A RoHS', 9.1000, 9.1000, 39141, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (973, N'SAF-C515C-8EMCA (SMD P-MQFP80-1) RoHS', N'SAF-C515C-8EMCA (SMD P-MQFP80-1) RoHS', 164.3000, 164.3000, 27666, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (974, N'TLUMIVKA MURATA DLW31SN222SQ2 (1206, 1.2ohm/0,2A) RoHS', N'TLUMIVKA MURATA DLW31SN222SQ2 (1206, 1.2ohm/0,2A) RoHS', 15.8400, 15.8400, 47713, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (975, N'TLUMIVKA TDK ACT45B-510-2P (SMD 2000OHM)  RoHS', N'TLUMIVKA TDK ACT45B-510-2P (SMD 2000OHM)  RoHS', 44.1000, 44.1000, 39148, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (976, N'FILTR MURATA NFE31PT222Z1E9L (SMD 1206, 2200pF) RoHS', N'FILTR MURATA NFE31PT222Z1E9L (SMD 1206, 2200pF) RoHS', 5.3000, 5.3000, 39177, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (977, N'LQ HLMP-KB45-A0000 (modrá, 3mm) RoHS', N'LQ HLMP-KB45-A0000 (modrá, 3mm) RoHS', 9.4400, 9.4400, 39124, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (978, N'AMP LISTA 1X2 826631-2 (90°) RoHS', N'AMP LISTA 1X2 826631-2 (90°) RoHS', 4.6600, 4.6600, 45224, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (979, N'MOLEX ZASUVKA USB Firewire 53984-0671 RoHS', N'MOLEX ZASUVKA USB Firewire 53984-0671 RoHS', 93.8100, 93.8100, 39145, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (980, N'PAJECI KOLIK 4022 007 45740', N'PAJECI KOLIK 4022 007 45740', 2.6300, 2.6300, 41946, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (981, N'L7805CP (TO-220FP) RoHS', N'L7805CP (TO-220FP) RoHS', 8.5300, 8.5300, 45713, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (982, N'7905CP (TO-220FP-3) STMicroelectronics,  RoHS', N'7905CP (TO-220FP-3) STMicroelectronics,  RoHS', 14.7200, 14.7200, 44301, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (983, N'L7805CP (TO-220FP) RoHS', N'L7805CP (TO-220FP) RoHS', 8.5300, 8.5300, 45713, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (984, N'CANON 9 VIDLICE DO DPS AMP 2-338309-2 RoHS, problém !!!', N'CANON 9 VIDLICE DO DPS AMP 2-338309-2 RoHS, problém !!!', 29.9100, 29.9100, 39143, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (985, N'DPS FEI 1022721 (GOLD, PANEL 2 x 1 Pcs) Isola IS400         ', N'DPS FEI 1022721 (GOLD, PANEL 2 x 1 Pcs) Isola IS400            ', 368.0000, 368.0000, 45304, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (986, N'TK SMD 0805 47P/50V 5% NPO (V PASU) RoHS                    ', N'TK SMD 0805 47P/50V 5% NPO (V PASU) RoHS                       ', 0.0600, 0.0600, 10486, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (987, N'BAV99 (SMD SOT-23) 70V/0,215A RoHS                          ', N'BAV99 (SMD SOT-23) 70V/0,215A RoHS                             ', 0.2400, 0.2400, 14364, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (988, N'TK SMD 0805 100N/50V 10% X7R (V PASU) RoHS                  ', N'TK SMD 0805 100N/50V 10% X7R (V PASU) RoHS                     ', 0.0400, 0.0400, 15213, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (989, N'ODPOR SMD 0805 10K/F  (V PASU) 0,125W RoHS                  ', N'ODPOR SMD 0805 10K/F  (V PASU) 0,125W RoHS                     ', 0.0200, 0.0200, 15217, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (990, N'ODPOR SMD 0805 1K/F  (V PASU) 0,125W RoHS                   ', N'ODPOR SMD 0805 1K/F  (V PASU) 0,125W RoHS                      ', 0.0200, 0.0200, 15218, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (991, N'TK SMD 0805 1P0/50V +-0,25pF NPO (V PASU) RoHS              ', N'TK SMD 0805 1P0/50V +-0,25pF NPO (V PASU) RoHS                 ', 0.0800, 0.0800, 15663, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (992, N'TK SMD 0805 1N/50V 5% C0G/NPO (V PASU) RoHS                 ', N'TK SMD 0805 1N/50V 5% C0G/NPO (V PASU) RoHS                    ', 0.0900, 0.0900, 16041, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (993, N'ODPOR SMD 0805 820R/F (V PASU) RoHS                         ', N'ODPOR SMD 0805 820R/F (V PASU) RoHS                            ', 0.0200, 0.0200, 19019, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (994, N'ODPOR SMD 0805 200K/F  (V PASU) RoHS                        ', N'ODPOR SMD 0805 200K/F  (V PASU) RoHS                           ', 0.0200, 0.0200, 19407, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (995, N'ODPOR SMD 0805 220R/F  (V PASU) RoHS                        ', N'ODPOR SMD 0805 220R/F  (V PASU) RoHS                           ', 0.0200, 0.0200, 19422, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (996, N'TK SMD 1206 1M/16V 10% X7R (V PASU) RoHS                    ', N'TK SMD 1206 1M/16V 10% X7R (V PASU) RoHS                       ', 0.5700, 0.5700, 19516, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (997, N'BAT54S (SMD SOT23) 30V/0,2A,  RoHS                          ', N'BAT54S (SMD SOT23) 30V/0,2A,  RoHS                             ', 0.5500, 0.5500, 19699, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (998, N'ODPOR SMD 0805 2K/F  (V PASU) RoHS                          ', N'ODPOR SMD 0805 2K/F  (V PASU) RoHS                             ', 0.0200, 0.0200, 19873, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (999, N'ODPOR SMD 0805 4K3/F (V PASU)                               ', N'ODPOR SMD 0805 4K3/F (V PASU)                                  ', 0.0800, 0.0800, 19926, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1000, N'ODPOR SMD 0805 470R/F  (V PASU)  RoHS                       ', N'ODPOR SMD 0805 470R/F  (V PASU)  RoHS                          ', 0.0200, 0.0200, 20033, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1001, N'TK SMD 0805 47N/50V X7R 10% (V PASU) RoHS                   ', N'TK SMD 0805 47N/50V X7R 10% (V PASU) RoHS                      ', 0.1100, 0.1100, 20070, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1002, N'ODPOR SMD 0805 240R/F  (V PASU)                             ', N'ODPOR SMD 0805 240R/F  (V PASU)                                ', 0.0800, 0.0800, 20653, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1003, N'ODPOR SMD 0805 100R/F (V PASU) 0,125W RoHS                  ', N'ODPOR SMD 0805 100R/F (V PASU) 0,125W RoHS                     ', 0.0200, 0.0200, 20656, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1004, N'74HCT165 (SMD SO-16) RoHS                                   ', N'74HCT165 (SMD SO-16) RoHS                                      ', 8.7300, 8.7300, 22577, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1005, N'ODPOR SMD 0805 330K/F (V PASU) 0,125W RoHS                  ', N'ODPOR SMD 0805 330K/F (V PASU) 0,125W RoHS                     ', 0.0200, 0.0200, 23667, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1006, N'ODPOR SMD 0805 120K/F (V PASU) 0,125W RoHS                  ', N'ODPOR SMD 0805 120K/F (V PASU) 0,125W RoHS                     ', 0.0300, 0.0300, 23669, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1007, N'ODPOR SMD 0805 39K/F  (V PASU) RoHS                         ', N'ODPOR SMD 0805 39K/F  (V PASU) RoHS                            ', 0.0200, 0.0200, 25482, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1008, N'ODPOR SMD 0805 1K5/F  (V PASU) RoHS                         ', N'ODPOR SMD 0805 1K5/F  (V PASU) RoHS                            ', 0.0200, 0.0200, 25765, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1009, N'ODPOR SMD 0805 8K2/F  (V PASU) RoHS                         ', N'ODPOR SMD 0805 8K2/F  (V PASU) RoHS                            ', 0.0200, 0.0200, 26713, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1010, N'ODPOR SMD 0805 100K/F (V PASU) TK50, 0,125W RoHS            ', N'ODPOR SMD 0805 100K/F (V PASU) TK50, 0,125W RoHS               ', 8.3200, 8.3200, 27714, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1011, N'ODPOR SMD 0805 47K/F (V PASU) TK50, 0,125W RoHS             ', N'ODPOR SMD 0805 47K/F (V PASU) TK50, 0,125W RoHS                ', 0.0200, 0.0200, 27728, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1012, N'74HC132 (SMD SO14) RoHS                                     ', N'74HC132 (SMD SO14) RoHS                                        ', 2.2200, 2.2200, 28550, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1013, N'TK SMD 1210 10M/25V 10% X7R (V PASU) RoHS                   ', N'TK SMD 1210 10M/25V 10% X7R (V PASU) RoHS                      ', 1.4900, 1.4900, 29787, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1014, N'ODPOR SMD 0805 1M/F (V PASU) 0,125W RoHS                    ', N'ODPOR SMD 0805 1M/F (V PASU) 0,125W RoHS                       ', 0.0200, 0.0200, 30422, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1015, N'ODPOR SMD 0805 620R/F (V PASU) RoHS                         ', N'ODPOR SMD 0805 620R/F (V PASU) RoHS                            ', 0.0200, 0.0200, 30425, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1016, N'ODPOR SMD 0805 200R/F  (V PASU) RoHS                        ', N'ODPOR SMD 0805 200R/F  (V PASU) RoHS                           ', 0.0200, 0.0200, 35196, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1017, N'FERIT MURATA BLM18AG102SN1D (SMD 0603, 1Kohm/400mA) RoHS    ', N'FERIT MURATA BLM18AG102SN1D (SMD 0603, 1Kohm/400mA) RoHS       ', 1.8600, 1.8600, 35575, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1018, N'ODPOR SMD 0805 680K/F (V PASU) RoHS                         ', N'ODPOR SMD 0805 680K/F (V PASU) RoHS                            ', 0.0200, 0.0200, 37503, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1019, N'TK SMD 1206 4M7/25V 10% X7R (V PASU) RoHS                   ', N'TK SMD 1206 4M7/25V 10% X7R (V PASU) RoHS                      ', 5.6800, 5.6800, 37668, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1020, N'TK SMD 0805 10M/16V 10% X5R (V PASU) RoHS                   ', N'TK SMD 0805 10M/16V 10% X5R (V PASU) RoHS                      ', 0.3800, 0.3800, 38277, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1021, N'AD5327BRUZ (SMD TSSOP16) RoHS                               ', N'AD5327BRUZ (SMD TSSOP16) RoHS                                  ', 154.1400, 154.1400, 39107, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1022, N'AD5323BRUZ (SMD TSSOP16) RoHS                               ', N'AD5323BRUZ (SMD TSSOP16) RoHS                                  ', 95.5500, 95.5500, 39108, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1023, N'NC7SZ125P5X (SMD SC70-5) RoHS                               ', N'NC7SZ125P5X (SMD SC70-5) RoHS                                  ', 6.3500, 6.3500, 39109, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1024, N'VIDLICE 2X25 SMD (ERNI 054596) RoHS                         ', N'VIDLICE 2X25 SMD (ERNI 054596) RoHS                            ', 85.0000, 85.0000, 39142, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1025, N'74HC1G02GW (SMD SOT353, TSSOP5) RoHS                        ', N'74HC1G02GW (SMD SOT353, TSSOP5) RoHS                           ', 6.4500, 6.4500, 39151, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1026, N'74HC594  (SMD SO-16) RoHS                                   ', N'74HC594  (SMD SO-16) RoHS                                      ', 10.6600, 10.6600, 39152, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1027, N'74AHC1G14GW (SMD SOT-353, TSSOP-5) RoHS                     ', N'74AHC1G14GW (SMD SOT-353, TSSOP-5) RoHS                        ', 2.4200, 2.4200, 39153, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1028, N'SN74LVC1G374DCKR (SMD SOT23-6) RoHS                         ', N'SN74LVC1G374DCKR (SMD SOT23-6) RoHS                            ', 7.8100, 7.8100, 39154, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1029, N'AD8610ARZ (SMD SO8) RoHS                                    ', N'AD8610ARZ (SMD SO8) RoHS                                       ', 78.7500, 78.7500, 39155, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1030, N'AD603ARZ (SMD SO-8)  RoHS                                   ', N'AD603ARZ (SMD SO-8)  RoHS                                      ', 117.1800, 117.1800, 39157, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1031, N'MAX314CUE+ (SMD TSSOP16) RoHS                               ', N'MAX314CUE+ (SMD TSSOP16) RoHS                                  ', 139.0200, 139.0200, 39158, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1032, N'OPA842ID (SMD SOIC8) RoHS                                   ', N'OPA842ID (SMD SOIC8) RoHS                                      ', 85.0500, 85.0500, 39159, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1033, N'OPA4703EA (SMD TSSOP14) RoHS                                ', N'OPA4703EA (SMD TSSOP14) RoHS                                   ', 177.8700, 177.8700, 39160, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1034, N'SSM2212RZ (SMD SOIC8) RoHS                                  ', N'SSM2212RZ (SMD SOIC8) RoHS                                     ', 62.7900, 62.7900, 39161, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1035, N'ODPOR SMD 0805 2K61/F (V PASU) RoHS                         ', N'ODPOR SMD 0805 2K61/F (V PASU) RoHS                            ', 0.4800, 0.4800, 39165, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1036, N'ODPOR SMD 0805 3R16/F (V PASU) RoHS                         ', N'ODPOR SMD 0805 3R16/F (V PASU) RoHS                            ', 0.4800, 0.4800, 39166, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1037, N'ODPOR SMD 0805 2K15/F (V PASU) RoHS                         ', N'ODPOR SMD 0805 2K15/F (V PASU) RoHS                            ', 0.5800, 0.5800, 39171, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1038, N'BAS28 (SMD SOT143B) 75V/215mA RoHS                          ', N'BAS28 (SMD SOT143B) 75V/215mA RoHS                             ', 2.4400, 2.4400, 39174, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1039, N'BC858CLT1G (SMD SOT-23) 30V/0,1A RoHS                       ', N'BC858CLT1G (SMD SOT-23) 30V/0,1A RoHS                          ', 0.8800, 0.8800, 39175, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1040, N'PAJECI OCKO 5016 (Keystone)                                 ', N'PAJECI OCKO 5016 (Keystone)                                    ', 6.4600, 6.4600, 39176, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1041, N'FILTR MURATA NFE31PT222Z1E9L (SMD 1206, 2200pF) RoHS        ', N'FILTR MURATA NFE31PT222Z1E9L (SMD 1206, 2200pF) RoHS           ', 9.1000, 9.1000, 39177, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1042, N'TERMISTOR PTC TPS0805-22R-10%-TCR+3500 (SMD 0805, 22R)      ', N'TERMISTOR PTC TPS0805-22R-10%-TCR+3500 (SMD 0805, 22R)         ', 14.3900, 14.3900, 39213, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1043, N'TK SMD 1210 47M/16V 20% X5R (V PASU)  RoHS                  ', N'TK SMD 1210 47M/16V 20% X5R (V PASU)  RoHS                     ', 17.7500, 17.7500, 39283, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1044, N'74HCT14 (SMD SO-14) RoHS                                    ', N'74HCT14 (SMD SO-14) RoHS                                       ', 1.6000, 1.6000, 3969, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1045, N'ODPOR SMD 0805 2M2/F (V PASU) RoHS                          ', N'ODPOR SMD 0805 2M2/F (V PASU) RoHS                             ', 0.0200, 0.0200, 44792, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1046, N'LMP7701MF (SMD SOT23-5) RoHS                                ', N'LMP7701MF (SMD SOT23-5) RoHS                                   ', 53.3600, 53.3600, 45297, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1047, N'ODPOR SMD 0805 180R/F (V PASU) RoHS                         ', N'ODPOR SMD 0805 180R/F (V PASU) RoHS                            ', 0.1900, 0.1900, 45298, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1048, N'BC848CLT1G (SMD SOT-23, ON Semic.) 30V/0,1A RoHS            ', N'BC848CLT1G (SMD SOT-23, ON Semic.) 30V/0,1A RoHS               ', 1.0900, 1.0900, 45299, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1049, N'ODPOR SMD 0805 0R (V PASU) RoHS                             ', N'ODPOR SMD 0805 0R (V PASU) RoHS                                ', 0.0100, 0.0100, 6398, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1050, N'DPS FEI 1022719 (GOLD, PANEL 2 x 2 Pcs) Isola IS400         ', N'DPS FEI 1022719 (GOLD, PANEL 2 x 2 Pcs) Isola IS400            ', 80.0000, 80.0000, 45303, 1, 1, NULL, NULL)
GO
print 'Processed 400 total records'
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1051, N'ODPOR SMD 1206 15K/F (V PASU) RoHS                          ', N'ODPOR SMD 1206 15K/F (V PASU) RoHS                             ', 0.0300, 0.0300, 17375, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1052, N'ZASUVKA 2X25 SMD (ERNI 064316) RoHS                         ', N'ZASUVKA 2X25 SMD (ERNI 064316) RoHS                            ', 155.8200, 155.8200, 39084, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1053, N'VIDLICE 2X6 SMD (ERNI 054594) RoHS                          ', N'VIDLICE 2X6 SMD (ERNI 054594) RoHS                             ', 79.5000, 79.5000, 39085, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1054, N'DISTANCNI SLOUPEK 537RE43T, Quick Lock Bolt M3 - 3,8        ', N'DISTANCNI SLOUPEK 537RE43T, Quick Lock Bolt M3 - 3,8           ', 10.6000, 10.6000, 41286, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1055, N'PODLOZKA 3 DIN 128A-A4 (BN 8856)                            ', N'PODLOZKA 3 DIN 128A-A4 (BN 8856)                               ', 0.4700, 0.4700, 41917, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1056, N'CANON 15 ZASUVKA DO DPS AMP 5749374-3 (zlacená) RoHS        ', N'CANON 15 ZASUVKA DO DPS AMP 5749374-3 (zlacená) RoHS           ', 110.7100, 110.7100, 45234, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1057, N'DPS FEI 4022 295 03611 (GOLD, PANEL 2 x 2 Pcs) Isola IS400  ', N'DPS FEI 4022 295 03611 (GOLD, PANEL 2 x 2 Pcs) Isola IS400     ', 53.5000, 53.5000, 45305, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1058, N'ZASUVKA 2X25 SMD (ERNI 064316) RoHS                         ', N'ZASUVKA 2X25 SMD (ERNI 064316) RoHS                            ', 155.8200, 155.8200, 39084, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1059, N'PRISTROJOVA NOZICKA SAMOLEPICI 3M SJ5018BLACK               ', N'PRISTROJOVA NOZICKA SAMOLEPICI 3M SJ5018BLACK                     ', 3.2600, 3.2600, 45570, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1060, N'SROUB M2X3 ISO 14583-A2 (BN5687)', N'SROUB M2X3 ISO 14583-A2 (BN5687)', 0.8400, 0.8400, 45573, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1061, N'SROUB M4X6 ISO 14583-A4 (BN 20038)', N'SROUB M4X6 ISO 14583-A4 (BN 20038)', 0.6300, 0.6300, 41990, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1062, N'SACEK ANTISTATICKY 250x300 (obj.č. 7804.254)                ', N'SACEK ANTISTATICKY 250x300 (obj.č. 7804.254)                      ', 4.5000, 4.5000, 22721, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1063, N'STITEK TYPOVY 210x297 mm odolné vlivům počasí ( L6013-20)', N'STITEK TYPOVY 210x297 mm odolné vlivům počasí ( L6013-20)', 30.0000, 30.0000, 44934, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1064, N'STITEK TYPOVY 45,7x21,2 mm odolné vlivům počasí (L4778-20)', N'STITEK TYPOVY 45,7x21,2 mm odolné vlivům počasí (L4778-20)', 0.7100, 0.7100, 41374, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1065, N'PRIRUBA 1022732', N'PRIRUBA 1022732', 830.0000, 830.0000, 45584, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1066, N'KRYT 4022 293 48101                                         ', N'KRYT 4022 293 48101                                               ', 645.0000, 645.0000, 44937, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1067, N'KRYT ZADNI 4022 290 61631                                   ', N'KRYT ZADNI 4022 290 61631                                         ', 399.0000, 399.0000, 44938, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1068, N'DESKA OCHRANNA 1028673-A-110-01', N'DESKA OCHRANNA 1028673-A-110-01', 72.0000, 72.0000, 44939, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1069, N'DISTANCNI SLOUPEK M3x10 MM 5.13.109 NEREZ                   ', N'DISTANCNI SLOUPEK M3x10 MM 5.13.109 NEREZ                         ', 5.4200, 5.4200, 14213, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1070, N'AMP KOLIK 5216675-4 RoHS                                    ', N'AMP KOLIK 5216675-4 RoHS                                          ', 4.9000, 4.9000, 40971, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1071, N'ZAPADKA POSUVNÁ CONEC 160X10159X                            ', N'ZAPADKA POSUVNÁ CONEC 160X10159X                                  ', 25.0000, 25.0000, 41335, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1072, N'SROUB M3X8 ISO 14583-A4 (BN 20038)                          ', N'SROUB M3X8 ISO 14583-A4 (BN 20038)                                ', 0.6600, 0.6600, 41989, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1073, N'MATICE M3 DIN 934-A4  (BN 629)                              ', N'MATICE M3 DIN 934-A4  (BN 629)                                    ', 0.5400, 0.5400, 41994, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1074, N'SROUB M2,5X6 ISO 14583 A4 (BN20038)', N'SROUB M2,5X6 ISO 14583 A4 (BN20038)', 0.4500, 0.4500, 42127, 1, 1, NULL, 0.0000)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1075, N'SROUB M3X6 ISO 14583-A4 (BN 20038)                          ', N'SROUB M3X6 ISO 14583-A4 (BN 20038)                                ', 0.7700, 0.7700, 42296, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1076, N'DPS FEI 1102004 (GOLD) Isola IS400 (PANEL 1x2 ks)', N'DPS FEI 1102004 (GOLD) Isola IS400 (PANEL 1x2 ks)', 617.0000, 617.0000, 47647, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1077, N'TK SMD 0805 100N/50V 10% X7R (V PASU) RoHS', N'TK SMD 0805 100N/50V 10% X7R (V PASU) RoHS', 0.0400, 0.0400, 15213, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1078, N'TK SMD 1206 10M/16V 10% X5R (V PASU) RoHS', N'TK SMD 1206 10M/16V 10% X5R (V PASU) RoHS', 0.5300, 0.5300, 39278, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1079, N'TK SMD 0805 10N/50V 10% X7R (V PASU) RoHS', N'TK SMD 0805 10N/50V 10% X7R (V PASU) RoHS', 0.0400, 0.0400, 15212, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1080, N'TK SMD 0805 1N/50V 5% C0G/NPO (V PASU) RoHS', N'TK SMD 0805 1N/50V 5% C0G/NPO (V PASU) RoHS', 0.0900, 0.0900, 16041, 1, 1, NULL, 0.0000)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1081, N'TK SMD 1206 1M/16V 10% X7R (V PASU) RoHS', N'TK SMD 1206 1M/16V 10% X7R (V PASU) RoHS', 0.5700, 0.5700, 19516, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1082, N'CS 470M/16V (SMD 10 x 10,5mm) RoHS', N'CS 470M/16V (SMD 10 x 10,5mm) RoHS', 5.2000, 5.2000, 19268, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1083, N'R1LP0108ESP-7SR (SMD SOP-32) RoHS', N'R1LP0108ESP-7SR (SMD SOP-32) RoHS', 34.0200, 34.0200, 45215, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1084, N'74ACT245SC (SMD SOIC-20, Fairchild) RoHS', N'74ACT245SC (SMD SOIC-20, Fairchild) RoHS', 11.2600, 11.2600, 45217, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1085, N'CD74ACT573M (SMD SOIC-20) RoHS', N'CD74ACT573M (SMD SOIC-20) RoHS', 12.4100, 12.4100, 39097, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1086, N'LM393M (SMD SOIC8) RoHS', N'LM393M (SMD SOIC8) RoHS', 5.5000, 5.5000, 40325, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1087, N'AM29F010B-70JF (PLCC-32)  RoHS', N'AM29F010B-70JF (PLCC-32)  RoHS', 30.0000, 30.0000, 39442, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1088, N'ATF22V10C-15JU (SMD PLCC28)  RoHS', N'ATF22V10C-15JU (SMD PLCC28)  RoHS', 35.4900, 35.4900, 45216, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1089, N'AMP PATICE PLCC28 822516-2 (SMD)  RoHS', N'AMP PATICE PLCC28 822516-2 (SMD)  RoHS', 23.1000, 23.1000, 39088, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1090, N'PATICE PLCC32 (SMD, 56484-432LF) RoHS, problém', N'PATICE PLCC32 (SMD, 56484-432LF) RoHS, problém', 21.4300, 21.4300, 39089, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1091, N'AD810ARZ (SMD SO-8) RoHS', N'AD810ARZ (SMD SO-8) RoHS', 79.4900, 79.4900, 39128, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1092, N'ODPOR SMD 0603 2K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 2K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 21249, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1093, N'ODPOR SMD 0603 1K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 1K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26409, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1094, N'ODPOR SMD 0603 2K7/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 2K7/F 0,1W (V PASU) RoHS', 0.0200, 0.0200, 26519, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1095, N'ODPOR SMD 0603 0R (V PASU) RoHS', N'ODPOR SMD 0603 0R (V PASU) RoHS', 0.0100, 0.0100, 20531, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1096, N'ODPOR SMD 1206 10R/F (V PASU) 0,25W RoHS', N'ODPOR SMD 1206 10R/F (V PASU) 0,25W RoHS', 0.0300, 0.0300, 10049, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1097, N'ODPOR SMD 0603 10K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 10K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26778, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1098, N'ODPOR SMD 0603 470R/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 470R/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 35514, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1099, N'ODPOR SMD 0603 220R/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 220R/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 31118, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1100, N'ODPOR SMD 0603 10R/F 0,1W (V PASU)  RoHS', N'ODPOR SMD 0603 10R/F 0,1W (V PASU)  RoHS', 0.0100, 0.0100, 35516, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1101, N'ODPOR SMD 1206 1K/F (V PASU) 0,25W RoHS', N'ODPOR SMD 1206 1K/F (V PASU) 0,25W RoHS', 0.0300, 0.0300, 14888, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1102, N'ODPOR SMD 0603 15K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 15K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 19991, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1103, N'ODPOR SMD 0603 18K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 18K/F 0,1W (V PASU) RoHS', 0.0300, 0.0300, 35951, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1104, N'ODPOR SMD 0603 27K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 27K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 20000, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1105, N'ODPOR SMD 0603 120K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 120K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 32272, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1106, N'ODPOR SMD 0603 47K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 47K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26411, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1107, N'BC849C (SMD SOT-23) 30V/0,2A RoHS', N'BC849C (SMD SOT-23) 30V/0,2A RoHS', 1.1400, 1.1400, 39139, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1108, N'BAS16 (SMD SOT23) 100V/215mA (NXP) RoHS', N'BAS16 (SMD SOT23) 100V/215mA (NXP) RoHS', 0.1800, 0.1800, 29812, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1109, N'LM385M3-2.5 (SMD SOT-23-3) RoHS', N'LM385M3-2.5 (SMD SOT-23-3) RoHS', 24.3700, 24.3700, 39140, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1110, N'VIDLICE 2X25 SMD (ERNI 054596) RoHS', N'VIDLICE 2X25 SMD (ERNI 054596) RoHS', 139.3900, 139.3900, 39142, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1111, N'ZASUVKA 2X6 SMD (ERNI 064318) RoHS', N'ZASUVKA 2X6 SMD (ERNI 064318) RoHS', 106.0000, 106.0000, 39147, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1112, N'TK SMD 0805 100N/50V 10% X7R (V PASU) RoHS', N'TK SMD 0805 100N/50V 10% X7R (V PASU) RoHS', 0.0400, 0.0400, 15213, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1113, N'TK SMD 1206 10M/16V 10% X5R (V PASU) RoHS', N'TK SMD 1206 10M/16V 10% X5R (V PASU) RoHS', 0.5300, 0.5300, 39278, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1114, N'TK SMD 0805 22P/50V 5% C0G/NPO (V PASU) RoHS', N'TK SMD 0805 22P/50V 5% C0G/NPO (V PASU) RoHS', 0.0800, 0.0800, 10480, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1115, N'TK SMD 1206 1M/16V 10% X7R (V PASU) RoHS', N'TK SMD 1206 1M/16V 10% X7R (V PASU) RoHS', 0.5700, 0.5700, 19516, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1116, N'TK SMD 0805 10N/50V 10% X7R (V PASU) RoHS', N'TK SMD 0805 10N/50V 10% X7R (V PASU) RoHS', 0.0400, 0.0400, 15212, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1117, N'TK SMD 0805 1N/50V 5% C0G/NPO (V PASU) RoHS', N'TK SMD 0805 1N/50V 5% C0G/NPO (V PASU) RoHS', 0.0900, 0.0900, 16041, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1118, N'R1LP0108ESP-7SR (SMD SOP-32) RoHS', N'R1LP0108ESP-7SR (SMD SOP-32) RoHS', 34.0200, 34.0200, 45215, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1119, N'CD74ACT573M (SMD SOIC-20) RoHS', N'CD74ACT573M (SMD SOIC-20) RoHS', 15.1600, 15.1600, 39097, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1120, N'74AHC1G04GW (SMD SOT-353, TSSOP-5) RoHS', N'74AHC1G04GW (SMD SOT-353, TSSOP-5) RoHS', 1.1300, 1.1300, 45218, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1121, N'74HCT74 (SMD SO-14) RoHS', N'74HCT74 (SMD SO-14) RoHS', 9.4800, 9.4800, 36314, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1122, N'ADM811LARTZ (SMD SOT-143)  RoHS', N'ADM811LARTZ (SMD SOT-143)  RoHS', 12.1800, 12.1800, 39102, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1123, N'4051 (SMD SO-16) RoHS', N'4051 (SMD SO-16) RoHS', 5.0000, 5.0000, 6529, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1124, N'TJA1040T/VM (SMD SO8) RoHS', N'TJA1040T/VM (SMD SO8) RoHS', 29.5300, 29.5300, 45219, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1125, N'AD5327BRUZ (SMD TSSOP16) RoHS', N'AD5327BRUZ (SMD TSSOP16) RoHS', 310.8000, 310.8000, 39107, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1126, N'AD5323BRUZ (SMD TSSOP16) RoHS', N'AD5323BRUZ (SMD TSSOP16) RoHS', 217.1400, 217.1400, 39108, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1127, N'NC7SZ125P5X (SMD SC70-5) RoHS', N'NC7SZ125P5X (SMD SC70-5) RoHS', 1.4600, 1.4600, 39109, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1128, N'POZISTOR SMD 1812L110/16 (SMD 1812 16V/1,1A) RoHS', N'POZISTOR SMD 1812L110/16 (SMD 1812 16V/1,1A) RoHS', 6.7000, 6.7000, 47778, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1129, N'POZISTOR SMD 1812L050-C (SMD 1812 15V/0,5A) RoHS', N'POZISTOR SMD 1812L050-C (SMD 1812 15V/0,5A) RoHS', 6.0900, 6.0900, 39118, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1130, N'QUARTZ 10,0000 MHZ (SMD SMU3) RoHS', N'QUARTZ 10,0000 MHZ (SMD SMU3) RoHS', 7.9500, 7.9500, 39119, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1131, N'LQ SMD LST67K-J1K2-1 (červená)  RoHS', N'LQ SMD LST67K-J1K2-1 (červená)  RoHS', 2.5100, 2.5100, 47035, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1132, N'LQ SMD LYT67K-J2L1-26 (žlutá)  RoHS', N'LQ SMD LYT67K-J2L1-26 (žlutá)  RoHS', 2.5900, 2.5900, 47036, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1133, N'LQ SMD LGT67K-H2K1-24-Z (zelená) RoHS', N'LQ SMD LGT67K-H2K1-24-Z (zelená) RoHS', 0.7400, 0.7400, 40618, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1134, N'FERIT MURATA BLM18AG102SN1D (SMD 0603, 1Kohm/400mA) RoHS', N'FERIT MURATA BLM18AG102SN1D (SMD 0603, 1Kohm/400mA) RoHS', 0.1900, 0.1900, 35575, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1135, N'AD8131ARZ (SMD SO-8) RoHS', N'AD8131ARZ (SMD SO-8) RoHS', 34.7900, 34.7900, 39130, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1136, N'OPA2703UA (SMD SOIC8) RoHS', N'OPA2703UA (SMD SOIC8) RoHS', 87.1100, 87.1100, 39132, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1137, N'REF3040AIDBZT (SMD SOT-23) RoHS', N'REF3040AIDBZT (SMD SOT-23) RoHS', 22.8400, 22.8400, 39134, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1138, N'LM431CIM3 (SMD SOT-23) RoHS', N'LM431CIM3 (SMD SOT-23) RoHS', 11.5700, 11.5700, 47056, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1139, N'ODPOR SMD 0603 1K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 1K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26409, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1140, N'ODPOR SMD 0603 0R (V PASU) RoHS', N'ODPOR SMD 0603 0R (V PASU) RoHS', 0.0100, 0.0100, 20531, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1141, N'ODPOR SMD 0603 2K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 2K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 21249, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1142, N'ODPOR SMD 1206 110R/F (V PASU) 0,25W RoHS', N'ODPOR SMD 1206 110R/F (V PASU) 0,25W RoHS', 0.0300, 0.0300, 19665, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1143, N'ODPOR SMD 1206 10R/F (V PASU) 0,25W RoHS', N'ODPOR SMD 1206 10R/F (V PASU) 0,25W RoHS', 0.0300, 0.0300, 10049, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1144, N'ODPOR SMD 0603 10K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 10K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26778, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1145, N'ODPOR SMD 0603 100K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 100K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 19993, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1146, N'ODPOR SMD 0603 100R/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 100R/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 35513, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1147, N'ODPOR SMD 0603 47K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 47K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26411, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1148, N'ODPOR SMD 0603 220K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 220K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 40336, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1149, N'ODPOR SMD 0603 470R/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 470R/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 35514, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1150, N'ODPOR SMD 0603 2K2/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 2K2/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 21250, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1151, N'ODPOR SMD 0603 20K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 20K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26319, 1, 1, NULL, NULL)
GO
print 'Processed 500 total records'
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1152, N'ODPOR SMD 0603 33K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 33K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 28573, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1153, N'ODPOR SMD 0603 18K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 18K/F 0,1W (V PASU) RoHS', 0.0300, 0.0300, 35951, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1154, N'ODPOR SMD 1206 120R/F (V PASU) RoHS', N'ODPOR SMD 1206 120R/F (V PASU) RoHS', 0.2100, 0.2100, 45223, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1155, N'ODPOR SMD 0603 1K2/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 1K2/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 19998, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1156, N'ODPOR SMD 0603 47R/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 47R/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 19990, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1157, N'ODPOR SMD 1206 100R/F (V PASU) 0,25W RoHS', N'ODPOR SMD 1206 100R/F (V PASU) 0,25W RoHS', 0.0300, 0.0300, 25842, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1158, N'ODPOR SMD 0603 15K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 15K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 19991, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1159, N'ODPOR SMD 0603 4K7/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 4K7/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 20536, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1160, N'ODPOR SMD 0603 22K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 22K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 18028, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1161, N'ODPOR SMD 1218 10R/F 1W (V PASU) RoHS', N'ODPOR SMD 1218 10R/F 1W (V PASU) RoHS', 4.2000, 4.2000, 43876, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1162, N'BC859C (SMD SOT-23) 30V/0,2A RoHS', N'BC859C (SMD SOT-23) 30V/0,2A RoHS', 1.0500, 1.0500, 39138, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1163, N'EGL1D (SMD miniMELF, DO-213AA, SOD-80) 200V/1A RoHS', N'EGL1D (SMD miniMELF, DO-213AA, SOD-80) 200V/1A RoHS', 9.1000, 9.1000, 39141, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1164, N'EGL1D (SMD miniMELF, DO-213AA, SOD-80) 200V/1A RoHS', N'EGL1D (SMD miniMELF, DO-213AA, SOD-80) 200V/1A RoHS', 9.1000, 9.1000, 39141, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1165, N'SAF-C515C-8EMCA (SMD P-MQFP80-1) RoHS', N'SAF-C515C-8EMCA (SMD P-MQFP80-1) RoHS', 164.3000, 164.3000, 27666, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1166, N'TLUMIVKA MURATA DLW31SN222SQ2 (1206, 1.2ohm/0,2A) RoHS', N'TLUMIVKA MURATA DLW31SN222SQ2 (1206, 1.2ohm/0,2A) RoHS', 15.8400, 15.8400, 47713, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1167, N'TLUMIVKA TDK ACT45B-510-2P (SMD 2000OHM)  RoHS', N'TLUMIVKA TDK ACT45B-510-2P (SMD 2000OHM)  RoHS', 44.1000, 44.1000, 39148, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1168, N'FILTR MURATA NFE31PT222Z1E9L (SMD 1206, 2200pF) RoHS', N'FILTR MURATA NFE31PT222Z1E9L (SMD 1206, 2200pF) RoHS', 5.3000, 5.3000, 39177, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1169, N'LQ HLMP-KB45-A0000 (modrá, 3mm) RoHS', N'LQ HLMP-KB45-A0000 (modrá, 3mm) RoHS', 9.4400, 9.4400, 39124, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1170, N'AMP LISTA 1X2 826631-2 (90°) RoHS', N'AMP LISTA 1X2 826631-2 (90°) RoHS', 4.6600, 4.6600, 45224, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1171, N'MOLEX ZASUVKA USB Firewire 53984-0671 RoHS', N'MOLEX ZASUVKA USB Firewire 53984-0671 RoHS', 93.8100, 93.8100, 39145, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1172, N'PAJECI KOLIK 4022 007 45740', N'PAJECI KOLIK 4022 007 45740', 2.6300, 2.6300, 41946, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1173, N'L7805CP (TO-220FP) RoHS', N'L7805CP (TO-220FP) RoHS', 8.5300, 8.5300, 45713, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1174, N'7905CP (TO-220FP-3) STMicroelectronics,  RoHS', N'7905CP (TO-220FP-3) STMicroelectronics,  RoHS', 14.7200, 14.7200, 44301, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1175, N'L7805CP (TO-220FP) RoHS', N'L7805CP (TO-220FP) RoHS', 8.5300, 8.5300, 45713, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1176, N'CANON 9 VIDLICE DO DPS AMP 2-338309-2 RoHS, problém !!!', N'CANON 9 VIDLICE DO DPS AMP 2-338309-2 RoHS, problém !!!', 29.9100, 29.9100, 39143, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1177, N'DPS FEI 1022721 (GOLD, PANEL 2 x 1 Pcs) Isola IS400         ', N'DPS FEI 1022721 (GOLD, PANEL 2 x 1 Pcs) Isola IS400            ', 368.0000, 368.0000, 45304, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1178, N'TK SMD 0805 47P/50V 5% NPO (V PASU) RoHS                    ', N'TK SMD 0805 47P/50V 5% NPO (V PASU) RoHS                       ', 0.0600, 0.0600, 10486, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1179, N'BAV99 (SMD SOT-23) 70V/0,215A RoHS                          ', N'BAV99 (SMD SOT-23) 70V/0,215A RoHS                             ', 0.2400, 0.2400, 14364, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1180, N'TK SMD 0805 100N/50V 10% X7R (V PASU) RoHS                  ', N'TK SMD 0805 100N/50V 10% X7R (V PASU) RoHS                     ', 0.0400, 0.0400, 15213, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1181, N'ODPOR SMD 0805 10K/F  (V PASU) 0,125W RoHS                  ', N'ODPOR SMD 0805 10K/F  (V PASU) 0,125W RoHS                     ', 0.0200, 0.0200, 15217, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1182, N'ODPOR SMD 0805 1K/F  (V PASU) 0,125W RoHS                   ', N'ODPOR SMD 0805 1K/F  (V PASU) 0,125W RoHS                      ', 0.0200, 0.0200, 15218, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1183, N'TK SMD 0805 1P0/50V +-0,25pF NPO (V PASU) RoHS              ', N'TK SMD 0805 1P0/50V +-0,25pF NPO (V PASU) RoHS                 ', 0.0800, 0.0800, 15663, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1184, N'TK SMD 0805 1N/50V 5% C0G/NPO (V PASU) RoHS                 ', N'TK SMD 0805 1N/50V 5% C0G/NPO (V PASU) RoHS                    ', 0.0900, 0.0900, 16041, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1185, N'ODPOR SMD 0805 820R/F (V PASU) RoHS                         ', N'ODPOR SMD 0805 820R/F (V PASU) RoHS                            ', 0.0200, 0.0200, 19019, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1186, N'ODPOR SMD 0805 200K/F  (V PASU) RoHS                        ', N'ODPOR SMD 0805 200K/F  (V PASU) RoHS                           ', 0.0200, 0.0200, 19407, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1187, N'ODPOR SMD 0805 220R/F  (V PASU) RoHS                        ', N'ODPOR SMD 0805 220R/F  (V PASU) RoHS                           ', 0.0200, 0.0200, 19422, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1188, N'TK SMD 1206 1M/16V 10% X7R (V PASU) RoHS                    ', N'TK SMD 1206 1M/16V 10% X7R (V PASU) RoHS                       ', 0.5700, 0.5700, 19516, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1189, N'BAT54S (SMD SOT23) 30V/0,2A,  RoHS                          ', N'BAT54S (SMD SOT23) 30V/0,2A,  RoHS                             ', 0.5500, 0.5500, 19699, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1190, N'ODPOR SMD 0805 2K/F  (V PASU) RoHS                          ', N'ODPOR SMD 0805 2K/F  (V PASU) RoHS                             ', 0.0200, 0.0200, 19873, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1191, N'ODPOR SMD 0805 4K3/F (V PASU)                               ', N'ODPOR SMD 0805 4K3/F (V PASU)                                  ', 0.0800, 0.0800, 19926, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1192, N'ODPOR SMD 0805 470R/F  (V PASU)  RoHS                       ', N'ODPOR SMD 0805 470R/F  (V PASU)  RoHS                          ', 0.0200, 0.0200, 20033, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1193, N'TK SMD 0805 47N/50V X7R 10% (V PASU) RoHS                   ', N'TK SMD 0805 47N/50V X7R 10% (V PASU) RoHS                      ', 0.1100, 0.1100, 20070, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1194, N'ODPOR SMD 0805 240R/F  (V PASU)                             ', N'ODPOR SMD 0805 240R/F  (V PASU)                                ', 0.0800, 0.0800, 20653, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1195, N'ODPOR SMD 0805 100R/F (V PASU) 0,125W RoHS                  ', N'ODPOR SMD 0805 100R/F (V PASU) 0,125W RoHS                     ', 0.0200, 0.0200, 20656, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1196, N'74HCT165 (SMD SO-16) RoHS                                   ', N'74HCT165 (SMD SO-16) RoHS                                      ', 8.7300, 8.7300, 22577, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1197, N'ODPOR SMD 0805 330K/F (V PASU) 0,125W RoHS                  ', N'ODPOR SMD 0805 330K/F (V PASU) 0,125W RoHS                     ', 0.0200, 0.0200, 23667, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1198, N'ODPOR SMD 0805 120K/F (V PASU) 0,125W RoHS                  ', N'ODPOR SMD 0805 120K/F (V PASU) 0,125W RoHS                     ', 0.0300, 0.0300, 23669, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1199, N'ODPOR SMD 0805 39K/F  (V PASU) RoHS                         ', N'ODPOR SMD 0805 39K/F  (V PASU) RoHS                            ', 0.0200, 0.0200, 25482, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1200, N'ODPOR SMD 0805 1K5/F  (V PASU) RoHS                         ', N'ODPOR SMD 0805 1K5/F  (V PASU) RoHS                            ', 0.0200, 0.0200, 25765, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1201, N'ODPOR SMD 0805 8K2/F  (V PASU) RoHS                         ', N'ODPOR SMD 0805 8K2/F  (V PASU) RoHS                            ', 0.0200, 0.0200, 26713, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1202, N'ODPOR SMD 0805 100K/F (V PASU) TK50, 0,125W RoHS            ', N'ODPOR SMD 0805 100K/F (V PASU) TK50, 0,125W RoHS               ', 8.3200, 8.3200, 27714, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1203, N'ODPOR SMD 0805 47K/F (V PASU) TK50, 0,125W RoHS             ', N'ODPOR SMD 0805 47K/F (V PASU) TK50, 0,125W RoHS                ', 0.0200, 0.0200, 27728, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1204, N'74HC132 (SMD SO14) RoHS                                     ', N'74HC132 (SMD SO14) RoHS                                        ', 2.2200, 2.2200, 28550, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1205, N'TK SMD 1210 10M/25V 10% X7R (V PASU) RoHS                   ', N'TK SMD 1210 10M/25V 10% X7R (V PASU) RoHS                      ', 1.4900, 1.4900, 29787, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1206, N'ODPOR SMD 0805 1M/F (V PASU) 0,125W RoHS                    ', N'ODPOR SMD 0805 1M/F (V PASU) 0,125W RoHS                       ', 0.0200, 0.0200, 30422, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1207, N'ODPOR SMD 0805 620R/F (V PASU) RoHS                         ', N'ODPOR SMD 0805 620R/F (V PASU) RoHS                            ', 0.0200, 0.0200, 30425, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1208, N'ODPOR SMD 0805 200R/F  (V PASU) RoHS                        ', N'ODPOR SMD 0805 200R/F  (V PASU) RoHS                           ', 0.0200, 0.0200, 35196, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1209, N'FERIT MURATA BLM18AG102SN1D (SMD 0603, 1Kohm/400mA) RoHS    ', N'FERIT MURATA BLM18AG102SN1D (SMD 0603, 1Kohm/400mA) RoHS       ', 1.8600, 1.8600, 35575, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1210, N'ODPOR SMD 0805 680K/F (V PASU) RoHS                         ', N'ODPOR SMD 0805 680K/F (V PASU) RoHS                            ', 0.0200, 0.0200, 37503, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1211, N'TK SMD 1206 4M7/25V 10% X7R (V PASU) RoHS                   ', N'TK SMD 1206 4M7/25V 10% X7R (V PASU) RoHS                      ', 5.6800, 5.6800, 37668, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1212, N'TK SMD 0805 10M/16V 10% X5R (V PASU) RoHS                   ', N'TK SMD 0805 10M/16V 10% X5R (V PASU) RoHS                      ', 0.3800, 0.3800, 38277, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1213, N'AD5327BRUZ (SMD TSSOP16) RoHS                               ', N'AD5327BRUZ (SMD TSSOP16) RoHS                                  ', 154.1400, 154.1400, 39107, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1214, N'AD5323BRUZ (SMD TSSOP16) RoHS                               ', N'AD5323BRUZ (SMD TSSOP16) RoHS                                  ', 95.5500, 95.5500, 39108, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1215, N'NC7SZ125P5X (SMD SC70-5) RoHS                               ', N'NC7SZ125P5X (SMD SC70-5) RoHS                                  ', 6.3500, 6.3500, 39109, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1216, N'VIDLICE 2X25 SMD (ERNI 054596) RoHS                         ', N'VIDLICE 2X25 SMD (ERNI 054596) RoHS                            ', 85.0000, 85.0000, 39142, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1217, N'74HC1G02GW (SMD SOT353, TSSOP5) RoHS                        ', N'74HC1G02GW (SMD SOT353, TSSOP5) RoHS                           ', 6.4500, 6.4500, 39151, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1218, N'74HC594  (SMD SO-16) RoHS                                   ', N'74HC594  (SMD SO-16) RoHS                                      ', 10.6600, 10.6600, 39152, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1219, N'74AHC1G14GW (SMD SOT-353, TSSOP-5) RoHS                     ', N'74AHC1G14GW (SMD SOT-353, TSSOP-5) RoHS                        ', 2.4200, 2.4200, 39153, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1220, N'SN74LVC1G374DCKR (SMD SOT23-6) RoHS                         ', N'SN74LVC1G374DCKR (SMD SOT23-6) RoHS                            ', 7.8100, 7.8100, 39154, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1221, N'AD8610ARZ (SMD SO8) RoHS                                    ', N'AD8610ARZ (SMD SO8) RoHS                                       ', 78.7500, 78.7500, 39155, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1222, N'AD603ARZ (SMD SO-8)  RoHS                                   ', N'AD603ARZ (SMD SO-8)  RoHS                                      ', 117.1800, 117.1800, 39157, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1223, N'MAX314CUE+ (SMD TSSOP16) RoHS                               ', N'MAX314CUE+ (SMD TSSOP16) RoHS                                  ', 139.0200, 139.0200, 39158, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1224, N'OPA842ID (SMD SOIC8) RoHS                                   ', N'OPA842ID (SMD SOIC8) RoHS                                      ', 85.0500, 85.0500, 39159, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1225, N'OPA4703EA (SMD TSSOP14) RoHS                                ', N'OPA4703EA (SMD TSSOP14) RoHS                                   ', 177.8700, 177.8700, 39160, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1226, N'SSM2212RZ (SMD SOIC8) RoHS                                  ', N'SSM2212RZ (SMD SOIC8) RoHS                                     ', 62.7900, 62.7900, 39161, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1227, N'ODPOR SMD 0805 2K61/F (V PASU) RoHS                         ', N'ODPOR SMD 0805 2K61/F (V PASU) RoHS                            ', 0.4800, 0.4800, 39165, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1228, N'ODPOR SMD 0805 3R16/F (V PASU) RoHS                         ', N'ODPOR SMD 0805 3R16/F (V PASU) RoHS                            ', 0.4800, 0.4800, 39166, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1229, N'ODPOR SMD 0805 2K15/F (V PASU) RoHS                         ', N'ODPOR SMD 0805 2K15/F (V PASU) RoHS                            ', 0.5800, 0.5800, 39171, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1230, N'BAS28 (SMD SOT143B) 75V/215mA RoHS                          ', N'BAS28 (SMD SOT143B) 75V/215mA RoHS                             ', 2.4400, 2.4400, 39174, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1231, N'BC858CLT1G (SMD SOT-23) 30V/0,1A RoHS                       ', N'BC858CLT1G (SMD SOT-23) 30V/0,1A RoHS                          ', 0.8800, 0.8800, 39175, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1232, N'PAJECI OCKO 5016 (Keystone)                                 ', N'PAJECI OCKO 5016 (Keystone)                                    ', 6.4600, 6.4600, 39176, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1233, N'FILTR MURATA NFE31PT222Z1E9L (SMD 1206, 2200pF) RoHS        ', N'FILTR MURATA NFE31PT222Z1E9L (SMD 1206, 2200pF) RoHS           ', 9.1000, 9.1000, 39177, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1234, N'TERMISTOR PTC TPS0805-22R-10%-TCR+3500 (SMD 0805, 22R)      ', N'TERMISTOR PTC TPS0805-22R-10%-TCR+3500 (SMD 0805, 22R)         ', 14.3900, 14.3900, 39213, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1235, N'TK SMD 1210 47M/16V 20% X5R (V PASU)  RoHS                  ', N'TK SMD 1210 47M/16V 20% X5R (V PASU)  RoHS                     ', 17.7500, 17.7500, 39283, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1236, N'74HCT14 (SMD SO-14) RoHS                                    ', N'74HCT14 (SMD SO-14) RoHS                                       ', 1.6000, 1.6000, 3969, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1237, N'ODPOR SMD 0805 2M2/F (V PASU) RoHS                          ', N'ODPOR SMD 0805 2M2/F (V PASU) RoHS                             ', 0.0200, 0.0200, 44792, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1238, N'LMP7701MF (SMD SOT23-5) RoHS                                ', N'LMP7701MF (SMD SOT23-5) RoHS                                   ', 53.3600, 53.3600, 45297, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1239, N'ODPOR SMD 0805 180R/F (V PASU) RoHS                         ', N'ODPOR SMD 0805 180R/F (V PASU) RoHS                            ', 0.1900, 0.1900, 45298, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1240, N'BC848CLT1G (SMD SOT-23, ON Semic.) 30V/0,1A RoHS            ', N'BC848CLT1G (SMD SOT-23, ON Semic.) 30V/0,1A RoHS               ', 1.0900, 1.0900, 45299, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1241, N'ODPOR SMD 0805 0R (V PASU) RoHS                             ', N'ODPOR SMD 0805 0R (V PASU) RoHS                                ', 0.0100, 0.0100, 6398, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1242, N'DPS FEI 1022719 (GOLD, PANEL 2 x 2 Pcs) Isola IS400         ', N'DPS FEI 1022719 (GOLD, PANEL 2 x 2 Pcs) Isola IS400            ', 80.0000, 80.0000, 45303, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1243, N'ODPOR SMD 1206 15K/F (V PASU) RoHS                          ', N'ODPOR SMD 1206 15K/F (V PASU) RoHS                             ', 0.0300, 0.0300, 17375, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1244, N'ZASUVKA 2X25 SMD (ERNI 064316) RoHS                         ', N'ZASUVKA 2X25 SMD (ERNI 064316) RoHS                            ', 155.8200, 155.8200, 39084, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1245, N'VIDLICE 2X6 SMD (ERNI 054594) RoHS                          ', N'VIDLICE 2X6 SMD (ERNI 054594) RoHS                             ', 79.5000, 79.5000, 39085, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1246, N'DISTANCNI SLOUPEK 537RE43T, Quick Lock Bolt M3 - 3,8        ', N'DISTANCNI SLOUPEK 537RE43T, Quick Lock Bolt M3 - 3,8           ', 10.6000, 10.6000, 41286, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1247, N'PODLOZKA 3 DIN 128A-A4 (BN 8856)                            ', N'PODLOZKA 3 DIN 128A-A4 (BN 8856)                               ', 0.4700, 0.4700, 41917, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1248, N'CANON 15 ZASUVKA DO DPS AMP 5749374-3 (zlacená) RoHS        ', N'CANON 15 ZASUVKA DO DPS AMP 5749374-3 (zlacená) RoHS           ', 110.7100, 110.7100, 45234, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1249, N'DPS FEI 4022 295 03611 (GOLD, PANEL 2 x 2 Pcs) Isola IS400  ', N'DPS FEI 4022 295 03611 (GOLD, PANEL 2 x 2 Pcs) Isola IS400     ', 53.5000, 53.5000, 45305, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1250, N'ZASUVKA 2X25 SMD (ERNI 064316) RoHS                         ', N'ZASUVKA 2X25 SMD (ERNI 064316) RoHS                            ', 155.8200, 155.8200, 39084, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1251, N'PRISTROJOVA NOZICKA SAMOLEPICI 3M SJ5018BLACK               ', N'PRISTROJOVA NOZICKA SAMOLEPICI 3M SJ5018BLACK                     ', 3.2600, 3.2600, 45570, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1252, N'SROUB M2X3 ISO 14583-A2 (BN5687)', N'SROUB M2X3 ISO 14583-A2 (BN5687)', 0.8400, 0.8400, 45573, 1, 1, NULL, NULL)
GO
print 'Processed 600 total records'
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1253, N'SROUB M4X6 ISO 14583-A4 (BN 20038)', N'SROUB M4X6 ISO 14583-A4 (BN 20038)', 0.6300, 0.6300, 41990, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1254, N'SACEK ANTISTATICKY 250x300 (obj.č. 7804.254)                ', N'SACEK ANTISTATICKY 250x300 (obj.č. 7804.254)                      ', 4.5000, 4.5000, 22721, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1255, N'STITEK TYPOVY 210x297 mm odolné vlivům počasí ( L6013-20)', N'STITEK TYPOVY 210x297 mm odolné vlivům počasí ( L6013-20)', 30.0000, 30.0000, 44934, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1256, N'STITEK TYPOVY 45,7x21,2 mm odolné vlivům počasí (L4778-20)', N'STITEK TYPOVY 45,7x21,2 mm odolné vlivům počasí (L4778-20)', 0.7100, 0.7100, 41374, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1257, N'ODPOR 0,33W 47R 5% (NFR2500004709JR500) RoHS', N'ODPOR 0,33W 47R 5% (NFR2500004709JR500) RoHS', 8.1900, 8.1900, 48447, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1258, N'RELE CX240D5', N'RELE CX240D5', 257.3200, 257.3200, 48446, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1259, N'VIDLICE 96 DIN41612  86094327113H58E1LF (FCI) RoHS', N'VIDLICE 96 DIN41612  86094327113H58E1LF (FCI) RoHS', 64.0500, 64.0500, 48448, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1260, N'SROUB M2,5X8 ISO 14583-A4 (BN 20038)', N'SROUB M2,5X8 ISO 14583-A4 (BN 20038)', 1.9600, 1.9600, 43747, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1261, N'MATICE M2,5 DIN 934-A4 (BN 629)', N'MATICE M2,5 DIN 934-A4 (BN 629)', 0.3600, 0.3600, 41158, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1262, N'DRZAK DPS Schroff 60817-051 (2712 028 00512)', N'DRZAK DPS Schroff 60817-051 (2712 028 00512)', 27.0300, 27.0300, 48449, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1263, N'DPS FEI 1024038_A (GOLD) Isola IS400', N'DPS FEI 1024038_A (GOLD) Isola IS400', 0.0000, 0.0000, 48451, 1, NULL, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1264, N'INTR IJ290_00', N'INTRIPLE DPS IJ290_00', NULL, NULL, 48781, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1265, N'INTR SCHF-17', N'INTRIPLE SCHF-17', NULL, NULL, 48779, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1266, N'INTR SCHF-25', N'INTRIPLE SCHF-25', NULL, NULL, 48778, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1267, N'INTR RHP-44', N'INTRIPLE RHP-44', NULL, NULL, 48777, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1268, N'INTR RHP-65', N'INTRIPLE RHP-65', NULL, NULL, 48776, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1269, N'INTR RHP-92', N'INTRIPLE RHP-92', NULL, NULL, 48775, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1270, N'INTR RHP-122', N'INTRIPLE RHP-122', NULL, NULL, 48774, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1271, N'INTR RHP-180', N'INTRIPLE RHP-180', NULL, NULL, 48773, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1272, N'INTR RHP-250', N'INTRIPLE RHP-250', NULL, NULL, 48772, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1273, N'INTR RHP-305', N'INTRIPLE RHP-305', NULL, NULL, 48771, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1274, N'INTR HFCN-440', N'INTRIPLE HFCN-440', NULL, NULL, 48770, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1275, N'INTR HFCN-650', N'INTRIPLE HFCN-650', NULL, NULL, 48769, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1276, N'INTR HFCN-880', N'INTRIPLE HFCN-880', NULL, NULL, 48768, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1277, N'INTR HFCN-1300', N'INTRIPLE HFCN-1300', NULL, NULL, 48767, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1278, N'INTR HFCN-1810', N'INTRIPLE HFCN-1810', NULL, NULL, 48766, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1279, N'INTR SXLP-36', N'INTRIPLE SXLP-36', NULL, NULL, 48765, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1280, N'INTR LPF-B50', N'INTRIPLE LPF-B50', NULL, NULL, 48764, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1281, N'INTR RLP-70', N'INTRIPLE RLP-70', NULL, NULL, 48763, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1282, N'INTR RLP-105', N'INTRIPLE RLP-105', NULL, NULL, 48762, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1283, N'INTR SXLP-135', N'INTRIPLE SXLP-135', NULL, NULL, 48761, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1284, N'INTR RLP-190', N'INTRIPLE RLP-190', NULL, NULL, 48760, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1285, N'INTR RLP-290', N'INTRIPLE RLP-290', NULL, NULL, 48759, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1286, N'INTR LFCN-320', N'INTRIPLE LFCN-320', NULL, NULL, 48758, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1287, N'INTR LFCN-490', N'INTRIPLE LFCN-490', NULL, NULL, 48757, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1288, N'INTR SALF-800', N'INTRIPLE SALF-800', NULL, NULL, 48756, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1289, N'INTR LFCN-1000', N'INTRIPLE LFCN-1000', NULL, NULL, 48755, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1290, N'INTR LFCN-1500', N'INTRIPLE LFCN-1500', NULL, NULL, 48754, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1291, N'INTR LFCN-2400', N'INTRIPLE LFCN-2400', NULL, NULL, 48753, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1292, N'INTR LPF-B0R3', N'INTRIPLE LPF-B0R3', NULL, NULL, 48752, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1293, N'INTR LPF-B0R35', N'INTRIPLE LPF-B0R35', NULL, NULL, 48751, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1294, N'INTR LPF-B0R5', N'INTRIPLE LPF-B0R5', NULL, NULL, 48750, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1295, N'INTR LPF-B0R8', N'INTRIPLE LPF-B0R8', NULL, NULL, 48749, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1296, N'INTR SXLP-3', N'INTRIPLE SXLP-3', NULL, NULL, 48748, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1297, N'INTR SXLP-4.7', N'INTRIPLE SXLP-4.7', NULL, NULL, 48747, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1298, N'INTR SXLP-8.4', N'INTRIPLE SXLP-8.4', NULL, NULL, 48746, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1299, N'INTR SXLP-10.7', N'INTRIPLE SXLP-10.7', NULL, NULL, 48745, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1300, N'INTR SXLP-25', N'INTRIPLE SXLP-25', NULL, NULL, 48744, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1301, N'INTR ARS16A12', N'INTRIPLE relé ARS16A12', NULL, NULL, 48743, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1302, N'INTR SMA_F', N'INTRIPLE SMA_Female_EDGE', NULL, NULL, 48739, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1303, N'INTR 5650478-5', N'INTRIPLE konektor 48 5650478-5', NULL, NULL, 48780, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1304, N'TK SMD 0603 100P/50V 5% NPO', N'TK SMD 0603 100P/50V 5% C0G/NPO (V PASU) RoHS', NULL, NULL, 32749, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1305, N'TK SMD 0603 100N/50V 5% X7R', N'TK SMD 0603 100N/50V 5% X7R (V PASU) RoHS', NULL, NULL, 40557, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1306, N'TK SMD 1210 100M 20%', N'TK SMD 1210 100M/6,3V 20% X5R (V PASU)  RoHS', NULL, NULL, 37975, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1307, N'TK SMD 1206 10M/16V', N'TK SMD 1206 10M/16V 10% X5R (V PASU) RoHS', NULL, NULL, 39278, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1308, N'TK SMD 0603 1M/16V X7R', N'TK SMD 0603 1M/16V 10%  X7R (V PASU) RoHS', NULL, NULL, 32244, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1309, N'INTR NFM41PC204F1H3L', N'INTRIPLE NFM41PC204F1H3L Filtr', NULL, NULL, 48737, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1310, N'INTR NFM18PC105R0J3D', N'INTRIPLE NFM18PC105R0J3D Filtr 0603', NULL, NULL, 42732, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1311, N'INTR W3F45C4718AT1A', N'INTRIPLE W3F45C4718AT1A (1206)', NULL, NULL, 48736, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1312, N'INTR TLUMIVKA 600MH (0603)', N'INTRIPLE Tlumivka 600 mH (0603)', NULL, NULL, 42779, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1313, N'INTR B82432T1472K', N'INTRIPLE B8432T1472K 4,7uH(L1812)', NULL, NULL, 48738, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1314, N'INTR RC0603FR-074K7', N'INTRIPLE ODPOR SMD 0603 4K7/F', NULL, NULL, 48735, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1315, N'INTR MAX4896ETP+', N'INTRIPLE MAX4896ETP+ (TQFN-20)', NULL, NULL, 48734, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1316, N'INTR SIL05_1A72-71L', N'INTRIPLE SIL05_1A72-71L', NULL, NULL, 48742, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1317, N'INTR IJ290_00', N'INTRIPLE DPS IJ290_00', NULL, NULL, 48781, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1318, N'INTR SCHF-17', N'INTRIPLE SCHF-17', NULL, NULL, 48779, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1319, N'INTR SCHF-25', N'INTRIPLE SCHF-25', NULL, NULL, 48778, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1320, N'INTR RHP-44', N'INTRIPLE RHP-44', NULL, NULL, 48777, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1321, N'INTR RHP-65', N'INTRIPLE RHP-65', NULL, NULL, 48776, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1322, N'INTR RHP-92', N'INTRIPLE RHP-92', NULL, NULL, 48775, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1323, N'INTR RHP-122', N'INTRIPLE RHP-122', NULL, NULL, 48774, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1324, N'INTR RHP-180', N'INTRIPLE RHP-180', NULL, NULL, 48773, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1325, N'INTR RHP-250', N'INTRIPLE RHP-250', NULL, NULL, 48772, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1326, N'INTR RHP-305', N'INTRIPLE RHP-305', NULL, NULL, 48771, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1327, N'INTR HFCN-440', N'INTRIPLE HFCN-440', NULL, NULL, 48770, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1328, N'INTR HFCN-650', N'INTRIPLE HFCN-650', NULL, NULL, 48769, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1329, N'INTR HFCN-880', N'INTRIPLE HFCN-880', NULL, NULL, 48768, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1330, N'INTR HFCN-1300', N'INTRIPLE HFCN-1300', NULL, NULL, 48767, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1331, N'INTR HFCN-1810', N'INTRIPLE HFCN-1810', NULL, NULL, 48766, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1332, N'INTR SXLP-36', N'INTRIPLE SXLP-36', NULL, NULL, 48765, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1333, N'INTR LPF-B50', N'INTRIPLE LPF-B50', NULL, NULL, 48764, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1334, N'INTR RLP-70', N'INTRIPLE RLP-70', NULL, NULL, 48763, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1335, N'INTR RLP-105', N'INTRIPLE RLP-105', NULL, NULL, 48762, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1336, N'INTR SXLP-135', N'INTRIPLE SXLP-135', NULL, NULL, 48761, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1337, N'INTR RLP-190', N'INTRIPLE RLP-190', NULL, NULL, 48760, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1338, N'INTR RLP-290', N'INTRIPLE RLP-290', NULL, NULL, 48759, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1339, N'INTR LFCN-320', N'INTRIPLE LFCN-320', NULL, NULL, 48758, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1340, N'INTR LFCN-490', N'INTRIPLE LFCN-490', NULL, NULL, 48757, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1341, N'INTR SALF-800', N'INTRIPLE SALF-800', NULL, NULL, 48756, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1342, N'INTR LFCN-1000', N'INTRIPLE LFCN-1000', NULL, NULL, 48755, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1343, N'INTR LFCN-1500', N'INTRIPLE LFCN-1500', NULL, NULL, 48754, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1344, N'INTR LFCN-2400', N'INTRIPLE LFCN-2400', NULL, NULL, 48753, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1345, N'INTR LPF-B0R3', N'INTRIPLE LPF-B0R3', NULL, NULL, 48752, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1346, N'INTR LPF-B0R35', N'INTRIPLE LPF-B0R35', NULL, NULL, 48751, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1347, N'INTR LPF-B0R5', N'INTRIPLE LPF-B0R5', NULL, NULL, 48750, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1348, N'INTR LPF-B0R8', N'INTRIPLE LPF-B0R8', NULL, NULL, 48749, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1349, N'INTR SXLP-3', N'INTRIPLE SXLP-3', NULL, NULL, 48748, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1350, N'INTR SXLP-4.7', N'INTRIPLE SXLP-4.7', NULL, NULL, 48747, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1351, N'INTR SXLP-8.4', N'INTRIPLE SXLP-8.4', NULL, NULL, 48746, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1352, N'INTR SXLP-10.7', N'INTRIPLE SXLP-10.7', NULL, NULL, 48745, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1353, N'INTR SXLP-25', N'INTRIPLE SXLP-25', NULL, NULL, 48744, 1, 1, NULL, NULL)
GO
print 'Processed 700 total records'
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1354, N'INTR ARS16A12', N'INTRIPLE relé ARS16A12', NULL, NULL, 48743, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1355, N'INTR SMA_F', N'INTRIPLE SMA_Female_EDGE', NULL, NULL, 48739, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1356, N'INTR 5650478-5', N'INTRIPLE konektor 48 5650478-5', NULL, NULL, 48780, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1357, N'TK SMD 0603 100P/50V 5% NPO', N'TK SMD 0603 100P/50V 5% C0G/NPO (V PASU) RoHS', NULL, NULL, 32749, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1358, N'TK SMD 0603 100N/50V 5% X7R', N'TK SMD 0603 100N/50V 5% X7R (V PASU) RoHS', NULL, NULL, 40557, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1359, N'TK SMD 1210 100M 20%', N'TK SMD 1210 100M/6,3V 20% X5R (V PASU)  RoHS', NULL, NULL, 37975, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1360, N'TK SMD 1206 10M/16V', N'TK SMD 1206 10M/16V 10% X5R (V PASU) RoHS', NULL, NULL, 39278, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1361, N'TK SMD 0603 1M/16V X7R', N'TK SMD 0603 1M/16V 10%  X7R (V PASU) RoHS', NULL, NULL, 32244, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1362, N'INTR NFM41PC204F1H3L', N'INTRIPLE NFM41PC204F1H3L Filtr', NULL, NULL, 48737, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1363, N'INTR NFM18PC105R0J3D', N'INTRIPLE NFM18PC105R0J3D Filtr 0603', NULL, NULL, 42732, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1364, N'INTR W3F45C4718AT1A', N'INTRIPLE W3F45C4718AT1A (1206)', NULL, NULL, 48736, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1365, N'INTR TLUMIVKA 600MH (0603)', N'INTRIPLE Tlumivka 600 mH (0603)', NULL, NULL, 42779, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1366, N'INTR B82432T1472K', N'INTRIPLE B8432T1472K 4,7uH(L1812)', NULL, NULL, 48738, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1367, N'INTR RC0603FR-074K7', N'INTRIPLE ODPOR SMD 0603 4K7/F', NULL, NULL, 48735, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1368, N'INTR MAX4896ETP+', N'INTRIPLE MAX4896ETP+ (TQFN-20)', NULL, NULL, 48734, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1369, N'INTR SIL05_1A72-71L', N'INTRIPLE SIL05_1A72-71L', NULL, NULL, 48742, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1370, N'1033540 DPS', N'DPS FEI 1033540 GOLD  Isola IS400', 161.0000, 161.0000, 48198, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1371, N'TK SMD 0805 100N X7R', N'TK SMD 0805 100N/50V 10% X7R (V PASU) RoHS', 0.1000, 0.1000, 15213, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1372, N'LGA67K-H2K1-24', N'LQ SMD LGA67K-H2K1-24-Z (PLCC-2, zelená) RoHS', 1.0200, 1.0200, 40984, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1373, N'LYA67K-J2L1-26', N'LQ SMD LYA67K-J2L1-26-Z (PLCC-2, žlutá)', 3.6700, 3.6700, 44113, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1374, N'TQ2SA-24V-Z', N'RELE TQ2SA-24V-Z (SMD, PANASONIC) RoHS', 85.8800, 85.8800, 47798, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1375, N'LM78L15ACM/NOPB', N'LM78L15ACM (SMD SOIC8) RoHS', 5.2600, 5.2600, 48019, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1376, N'LM358M/NOPB', N'LM358M (SMD SO-8) RoHS', 7.9400, 7.9400, 47065, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1377, N'MC78L05ACDR2G', N'MC78L05ACDR2G (SMD SOIC-8) RoHS', 5.5300, 5.5300, 38749, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1378, N'ODPOR SMD 1206 3K9/F', N'ODPOR SMD 1206 3K9/F (V PASU) RoHS', 0.1000, 0.1000, 37671, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1379, N'ODPOR SMD 0603 4K7', N'ODPOR SMD 0603 4K7/F 0,1W (V PASU) RoHS', 0.1000, 0.1000, 20536, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1380, N'TK SMD 0805 220N 10%', N'TK SMD 0805 220N/50V 10% X7R (V PASU) RoHS', 0.1200, 0.1200, 20765, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1381, N'ODPOR SMD 0603 10K/F', N'ODPOR SMD 0603 10K/F 0,1W (V PASU) RoHS', 0.1000, 0.1000, 26778, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1382, N'ODPOR SMD 0603 12K/F', N'ODPOR SMD 0603 12K/F 0,1W (V PASU) RoHS', 0.1000, 0.1000, 20077, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1383, N'ODPOR SMD 0603 220K/F', N'ODPOR SMD 0603 220K/F 0,1W (V PASU) RoHS', 0.1000, 0.1000, 40336, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1384, N'ODPOR SMD 0603 390K', N'ODPOR SMD 0603 390K/F 0,1W (V PASU) RoHS', 0.1000, 0.1000, 25946, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1385, N'ODPOR SMD 1206 0,26 F', N'ODPOR SMD 1206 100R/F (V PASU) 0,25W RoHS', 0.1000, 0.1000, 25842, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1386, N'ODPOR SMD 0603 100R/F', N'ODPOR SMD 0603 100R/F 0,1W (V PASU) RoHS', 0.1000, 0.1000, 35513, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1387, N'ODPOR SMD 0603 22K/F', N'ODPOR SMD 0603 22K/F 0,1W (V PASU) RoHS', 0.1000, 0.1000, 18028, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1388, N'ODPOR SMD 0603 82K/F', N'ODPOR SMD 0603 82K/F 0,1W (V PASU) RoHS', 0.1000, 0.1000, 32523, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1389, N'PMBF170', N'PMBF170 (SMD SOT23, TO-236AB) RoHS', 0.8100, 0.8100, 29877, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1390, N'SMBJ30A', N'SMBJ30A (SMD SMB, DO-214AA) RoHS', 2.0000, 2.0000, 19757, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1391, N'TK SMD 0805 330N/50V 10% X7R', N'TK SMD 0805 330N/50V 10% X7R (V PASU) RoHS', 0.1000, 0.1000, 36836, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1392, N'BAS16,215', N'BAS16 (SMD SOT23) 100V/215mA (NXP) RoHS', 0.5300, 0.5300, 29812, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1393, N'MBR0530', N'MBR0530 (SMD SOD-123) 30V/0,5A RoHS', 4.3700, 4.3700, 34548, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1394, N'BZX84C15', N'ZD 0,25W 15V BZX84C15 (SMD SOT23) RoHS', 0.6400, 0.6400, 44205, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1395, N'BZX84C47', N'ZD 0,25W 47V BZX84C47 (SMD SOT23) RoHS', 0.6600, 0.6600, 42348, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1396, N'EEEFK1V101XP', N'CS 100M/35V 20% (SMD 6,6 x 7,7mm) +105°C RoHS', 7.9600, 7.9600, 43076, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1397, N'222215366101', N'CS 100M/25V 20% (SMD 8 x 10mm) +105°C RoHS', 17.1600, 17.1600, 40312, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1398, N'4541 SMD', N'4541 (SMD SOIC-14) RoHS', 3.8600, 3.8600, 6493, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1399, N'74HCT04 SMD', N'74HCT04 (SMD SO-14) RoHS', 2.4200, 2.4200, 2936, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1400, N'SMD050F-2', N'POZISTOR SMD050F-2 (60V/0,50A, 7,98 x 5,44 mm) RoHS', 7.6800, 7.6800, 18998, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1401, N'SFH6156-3T', N'SFH6156-3T (SMD SO-4) RoHS', 5.1000, 5.1000, 43859, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1402, N'SCHURTER 6182.0033', N'ZASUVKA 220V DO PAN. 6182.0033 (Schurter)', 65.5000, 65.5000, 48025, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1403, N'SROUB M3X8 ISO 14583-A4', N'SROUB M3X8 ISO 14583-A4 (BN 20038)', 0.5300, 0.5300, 41989, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1404, N'MATICE M3 DIN 934-A4', N'MATICE M3 DIN 934-A4  (BN 629)', 0.2000, 0.2000, 41994, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1405, N'AMP 7-1393243-9', N'RELE RT424730  (7-1393243-9) RoHS', 109.2500, 109.2500, 48014, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1406, N'AMP 6-1393243-8', N'RELE RT424024  (6-1393243-8) RoHS', 52.2000, 52.2000, 40320, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1407, N'AMP 726386-2', N'AMP PL.KOLIK 6,3 do DPS 726386-2', 1.4900, 1.4900, 2820, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1408, N'MOLEX 43045-0621', N'MOLEX VIDLICE 43045-0621 RoHS', 35.9800, 35.9800, 48022, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1409, N'AMP 3-794677-4', N'AMP VIDLICE 4 POL 3-794677-4 RoHS', 12.2200, 12.2200, 48023, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1410, N'1026626', N'BOTTOM COVER, BOCU 1026626', 249.5500, 249.5500, 47884, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1411, N'PRUCHODKA ST PG11', N'PRUCHODKA ST PG11 (LAPP 53015020)', 11.5000, 11.5000, 10324, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1412, N'MATICE GMP-GL PG11 (', N'MATICE GMP-GL PG11 (LAPP 53019020)', 2.6500, 2.6500, 10321, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1413, N'1027566', N'KABEL FEI 1027566', 624.7400, 624.7400, 48029, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1414, N'SROUB M4X12 DIN 912-A4', N'SROUB M4X12 DIN 912-A4, ISO 4762 (BN 612) IMBUS', 1.6700, 1.6700, 47818, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1415, N'MATICE M4 DIN 934-A4', N'MATICE M4 DIN 934-A4 (BN 629)', 0.3900, 0.3900, 47823, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1416, N'PODLOZKA 4,3 DIN 125-A4', N'PODLOZKA 4,3 DIN 125-A4 (BN 671), ISO 7089', 0.1300, 0.1300, 41993, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1417, N'PODLOZKA 4,3 DIN 9021-A4', N'PODLOZKA 4,3 DIN 9021-A4 (BN 1684), ISO 7093', 0.2900, 0.2900, 47821, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1418, N'SROUB M3X6 ISO 14583-A4', N'SROUB M3X6 ISO 14583-A4 (BN 20038)', 0.8900, 0.8900, 42296, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1419, N'PODLOZKA 4 DIN 128A-A4', N'PODLOZKA 4 DIN 128A-A4 (BN 8856)', 0.7100, 0.7100, 47819, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1420, N'4022 260 08643_A', N'STITEK SAMOLEPICI VYSTRAZNY 90X35MM (FEI 4022 260 08640)', 17.8300, 17.8300, 42300, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1421, N'4022 297 17091', N'STITEK PRO POWER 7827355', 1.7900, 1.7900, 48007, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1422, N'SROUB M3X5 ISO 14583-A4', N'SROUB M3X5 ISO 14583-A4 (BN 20038)', 0.8900, 0.8900, 47814, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1423, N'PODLOZKA 3,2 DIN 125-A4', N'PODLOZKA 3,2 DIN 125-A4 (BN 671), ISO 7089', 0.1100, 0.1100, 41992, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1424, N'1028244', N'TOP COVER, BOCU 1028244', 70.1500, 70.1500, 47883, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1425, N'SROUB M3X5 ISO 14581-A4', N'SROUB M3X5 ISO 14581-A4 (BN 20039)', 1.4500, 1.4500, 47816, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1426, N'7804.244', N'SACEK ANTISTATICKY 150x200 (obj.č. 7804.244) permanentní disipativ', 2.5000, 2.5000, 10832, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1427, N'PASKA D1 DYMO 9/7', N'PASKA D1 DYMO 9/7 ZLUTA', 2.9900, 2.9900, 24383, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1428, N'STITEK AVERY L4778-20 BÍLÝ', N'STITEK AVERY 45,7x21,2 mm odolné vlivům počasí A4/48 (L4778-20', 0.8100, 0.8100, 41374, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1813, N'DPS CONEL UCR-v2-3 (GOLD, PANEL 2x 1 Pcs)', N'DPS CONEL UCR-v2-3 (GOLD, PANEL 2x 1 Pcs)', 47.6600, 47.6600, 44754, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1814, N'LQ SMD LGY870-K2M1-1-Z (zelená) RoHS', N'LQ SMD LGY870-K2M1-1-Z (zelená) RoHS', 1.1200, 1.1200, 24580, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1815, N'LQ SMD LYY876-Q2S1-26-Z (žlutá) RoHS', N'LQ SMD LYY876-Q2S1-26-Z (žlutá) RoHS', 1.2000, 1.2000, 24737, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1816, N'KONEKTOR WURTH 658 853 500 340 RoHS', N'KONEKTOR WURTH 658 853 500 340 RoHS', 16.5700, 16.5700, 39970, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1817, N'MOLEX SIM SOCKET 91228-3006 (s aretačními kolíky) RoHS', N'MOLEX SIM SOCKET 91228-3006 (s aretačními kolíky) RoHS', 18.7600, 18.7600, 45888, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1818, N'LQ SMD LGY870-K2M1-1-Z (zelená) RoHS', N'LQ SMD LGY870-K2M1-1-Z (zelená) RoHS', 1.1200, 1.1200, 24580, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1819, N'LQ SMD LSY876-P2R1-1-Z (červená)  RoHS', N'LQ SMD LSY876-P2R1-1-Z (červená)  RoHS', 1.1400, 1.1400, 24575, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1820, N'LQ SMD LYY876-Q2S1-26-Z (žlutá) RoHS', N'LQ SMD LYY876-Q2S1-26-Z (žlutá) RoHS', 1.2000, 1.2000, 24737, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1821, N'TK SMD 0603 220N/50V 10% X7R RoHS', N'TK SMD 0603 220N/50V 10% X7R RoHS', 0.8800, 0.8800, 35675, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1822, N'TE SMD TPS 47M/6,3V 10% (B 3528)  LOW ESR RoHS', N'TE SMD TPS 47M/6,3V 10% (B 3528)  LOW ESR RoHS', 3.3800, 3.3800, 33548, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1823, N'TK SMD 1206 47M/25V 20% X5R (V PASU) RoHS', N'TK SMD 1206 47M/25V 20% X5R (V PASU) RoHS', 6.8900, 6.8900, 48360, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1824, N'TK SMD 0603 10N/50V 10%  X7R (V PASU) RoHS', N'TK SMD 0603 10N/50V 10%  X7R (V PASU) RoHS', 0.0300, 0.0300, 27068, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1825, N'TK SMD 1210 2M2/50V 10% X7R (V PASU) RoHS', N'TK SMD 1210 2M2/50V 10% X7R (V PASU) RoHS', 1.3500, 1.3500, 21697, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1826, N'TK SMD 2220 10M/50V 20% X7R (V PASU) RoHS', N'TK SMD 2220 10M/50V 20% X7R (V PASU) RoHS', 8.7000, 8.7000, 47711, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1827, N'TK SMD 0603 100N/50V 10% X7R (V PASU) RoHS', N'TK SMD 0603 100N/50V 10% X7R (V PASU) RoHS', 0.0300, 0.0300, 23145, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1828, N'TK SMD 0603 100P/50V 5% C0G/NPO (V PASU) RoHS', N'TK SMD 0603 100P/50V 5% C0G/NPO (V PASU) RoHS', 0.0300, 0.0300, 32749, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1829, N'TK SMD 0603 10P/50V 10%  C0G/NPO (V PASU) RoHS', N'TK SMD 0603 10P/50V 10%  C0G/NPO (V PASU) RoHS', 0.0300, 0.0300, 31012, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1830, N'MBRS340T3G (SMD DO214AB, SMC)  40V/3A RoHS', N'MBRS340T3G (SMD DO214AB, SMC)  40V/3A RoHS', 1.6500, 1.6500, 15232, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1831, N'TLUMIVKA SUMIDA CDRH125L125NP-330MC (33u/2,93A,  SMD) RoHS', N'TLUMIVKA SUMIDA CDRH125L125NP-330MC (33u/2,93A,  SMD) RoHS', 5.3000, 5.3000, 48275, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1832, N'ODPOR SMD 0603 4K7/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 4K7/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 20536, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1833, N'ODPOR SMD 0603 6K8/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 6K8/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 27151, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1834, N'ODPOR SMD 0603 4K3/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 4K3/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26759, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1835, N'ODPOR SMD 0603 10K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 10K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26778, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1836, N'ODPOR SMD 0603 0R 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 0R 0,1W (V PASU) RoHS', 0.0100, 0.0100, 20531, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1837, N'ODPOR SMD 0603 2K2/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 2K2/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 21250, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1838, N'ODPOR SMD 0603 470R/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 470R/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 35514, 1, 1, NULL, NULL)
GO
print 'Processed 800 total records'
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1839, N'KONEKTOR MINI PCI EXPRESS CARD MM60-52B1-E1-R650 (JAE) RoHS', N'KONEKTOR MINI PCI EXPRESS CARD MM60-52B1-E1-R650 (JAE) RoHS', 10.6300, 10.6300, 40530, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1841, N'DPS CONEL UCR-v2-3 (GOLD, PANEL 2x 1 Pcs)', N'DPS CONEL UCR-v2-3 (GOLD, PANEL 2x 1 Pcs)', 47.6600, 47.6600, 44754, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1842, N'LQ SMD LGY870-K2M1-1-Z (zelená) RoHS', N'LQ SMD LGY870-K2M1-1-Z (zelená) RoHS', 1.1200, 1.1200, 24580, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1843, N'LQ SMD LYY876-Q2S1-26-Z (žlutá) RoHS', N'LQ SMD LYY876-Q2S1-26-Z (žlutá) RoHS', 1.2000, 1.2000, 24737, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1844, N'KONEKTOR WURTH 658 853 500 340 RoHS', N'KONEKTOR WURTH 658 853 500 340 RoHS', 16.5700, 16.5700, 39970, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1845, N'MOLEX SIM SOCKET 91228-3006 (s aretačními kolíky) RoHS', N'MOLEX SIM SOCKET 91228-3006 (s aretačními kolíky) RoHS', 18.7600, 18.7600, 45888, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1846, N'LQ SMD LGY870-K2M1-1-Z (zelená) RoHS', N'LQ SMD LGY870-K2M1-1-Z (zelená) RoHS', 1.1200, 1.1200, 24580, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1847, N'LQ SMD LSY876-P2R1-1-Z (červená)  RoHS', N'LQ SMD LSY876-P2R1-1-Z (červená)  RoHS', 1.1400, 1.1400, 24575, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1848, N'LQ SMD LYY876-Q2S1-26-Z (žlutá) RoHS', N'LQ SMD LYY876-Q2S1-26-Z (žlutá) RoHS', 1.2000, 1.2000, 24737, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1849, N'TK SMD 0603 220N/50V 10% X7R RoHS', N'TK SMD 0603 220N/50V 10% X7R RoHS', 0.8800, 0.8800, 35675, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1850, N'TE SMD TPS 47M/6,3V 10% (B 3528)  LOW ESR RoHS', N'TE SMD TPS 47M/6,3V 10% (B 3528)  LOW ESR RoHS', 3.3800, 3.3800, 33548, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1851, N'TK SMD 1206 47M/25V 20% X5R (V PASU) RoHS', N'TK SMD 1206 47M/25V 20% X5R (V PASU) RoHS', 6.8900, 6.8900, 48360, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1852, N'TK SMD 0603 10N/50V 10%  X7R (V PASU) RoHS', N'TK SMD 0603 10N/50V 10%  X7R (V PASU) RoHS', 0.0300, 0.0300, 27068, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1853, N'TK SMD 1210 2M2/50V 10% X7R (V PASU) RoHS', N'TK SMD 1210 2M2/50V 10% X7R (V PASU) RoHS', 1.3500, 1.3500, 21697, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1854, N'TK SMD 2220 10M/50V 20% X7R (V PASU) RoHS', N'TK SMD 2220 10M/50V 20% X7R (V PASU) RoHS', 8.7000, 8.7000, 47711, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1855, N'TK SMD 0603 100N/50V 10% X7R (V PASU) RoHS', N'TK SMD 0603 100N/50V 10% X7R (V PASU) RoHS', 0.0300, 0.0300, 23145, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1856, N'TK SMD 0603 100P/50V 5% C0G/NPO (V PASU) RoHS', N'TK SMD 0603 100P/50V 5% C0G/NPO (V PASU) RoHS', 0.0300, 0.0300, 32749, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1857, N'TK SMD 0603 10P/50V 10%  C0G/NPO (V PASU) RoHS', N'TK SMD 0603 10P/50V 10%  C0G/NPO (V PASU) RoHS', 0.0300, 0.0300, 31012, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1858, N'MBRS340T3G (SMD DO214AB, SMC)  40V/3A RoHS', N'MBRS340T3G (SMD DO214AB, SMC)  40V/3A RoHS', 1.6500, 1.6500, 15232, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1859, N'TLUMIVKA SUMIDA CDRH125L125NP-330MC (33u/2,93A,  SMD) RoHS', N'TLUMIVKA SUMIDA CDRH125L125NP-330MC (33u/2,93A,  SMD) RoHS', 5.3000, 5.3000, 48275, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1860, N'ODPOR SMD 0603 4K7/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 4K7/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 20536, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1861, N'ODPOR SMD 0603 6K8/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 6K8/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 27151, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1862, N'ODPOR SMD 0603 4K3/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 4K3/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26759, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1863, N'ODPOR SMD 0603 10K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 10K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26778, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1864, N'ODPOR SMD 0603 0R 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 0R 0,1W (V PASU) RoHS', 0.0100, 0.0100, 20531, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1865, N'ODPOR SMD 0603 2K2/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 2K2/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 21250, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1866, N'ODPOR SMD 0603 470R/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 470R/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 35514, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1867, N'KONEKTOR MINI PCI EXPRESS CARD MM60-52B1-E1-R650 (JAE) RoHS', N'KONEKTOR MINI PCI EXPRESS CARD MM60-52B1-E1-R650 (JAE) RoHS', 10.6300, 10.6300, 40530, 1, 1, NULL, NULL)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1897, N'DPS CONEL UCR-v2-3 (GOLD, PANEL 2x 1 Pcs)', N'DPS CONEL UCR-v2-3 (GOLD, PANEL 2x 1 Pcs)', 47.6600, 47.6600, 44754, 1, 1, NULL, 54.5707)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1898, N'LQ SMD LGY870-K2M1-1-Z (zelená) RoHS', N'LQ SMD LGY870-K2M1-1-Z (zelená) RoHS', 1.1200, 1.1200, 24580, 1, 1, NULL, 1.2824)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1899, N'LQ SMD LYY876-Q2S1-26-Z (žlutá) RoHS', N'LQ SMD LYY876-Q2S1-26-Z (žlutá) RoHS', 1.2000, 1.2000, 24737, 1, 1, NULL, 1.3740)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1900, N'KONEKTOR WURTH 658 853 500 340 RoHS', N'KONEKTOR WURTH 658 853 500 340 RoHS', 16.5700, 16.5700, 39970, 1, 1, NULL, 18.9727)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1901, N'MOLEX SIM SOCKET 91228-3006 (s aretačními kolíky) RoHS', N'MOLEX SIM SOCKET 91228-3006 (s aretačními kolíky) RoHS', 18.7600, 18.7600, 45888, 1, 1, NULL, 21.4802)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1902, N'LQ SMD LGY870-K2M1-1-Z (zelená) RoHS', N'LQ SMD LGY870-K2M1-1-Z (zelená) RoHS', 1.1200, 1.1200, 24580, 1, 1, NULL, 1.2824)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1903, N'LQ SMD LSY876-P2R1-1-Z (červená)  RoHS', N'LQ SMD LSY876-P2R1-1-Z (červená)  RoHS', 1.1400, 1.1400, 24575, 1, 1, NULL, 1.3053)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1904, N'LQ SMD LYY876-Q2S1-26-Z (žlutá) RoHS', N'LQ SMD LYY876-Q2S1-26-Z (žlutá) RoHS', 1.2000, 1.2000, 24737, 1, 1, NULL, 1.3740)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1905, N'TK SMD 0603 220N/50V 10% X7R RoHS', N'TK SMD 0603 220N/50V 10% X7R RoHS', 0.8800, 0.8800, 35675, 1, 1, NULL, 1.0076)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1906, N'TE SMD TPS 47M/6,3V 10% (B 3528)  LOW ESR RoHS', N'TE SMD TPS 47M/6,3V 10% (B 3528)  LOW ESR RoHS', 3.3800, 3.3800, 33548, 1, 1, NULL, 3.8701)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1907, N'TK SMD 1206 47M/25V 20% X5R (V PASU) RoHS', N'TK SMD 1206 47M/25V 20% X5R (V PASU) RoHS', 6.8900, 6.8900, 48360, 1, 1, NULL, 7.8891)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1908, N'TK SMD 0603 10N/50V 10%  X7R (V PASU) RoHS', N'TK SMD 0603 10N/50V 10%  X7R (V PASU) RoHS', 0.0300, 0.0300, 27068, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1909, N'TK SMD 1210 2M2/50V 10% X7R (V PASU) RoHS', N'TK SMD 1210 2M2/50V 10% X7R (V PASU) RoHS', 1.3500, 1.3500, 21697, 1, 1, NULL, 1.5458)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1910, N'TK SMD 2220 10M/50V 20% X7R (V PASU) RoHS', N'TK SMD 2220 10M/50V 20% X7R (V PASU) RoHS', 8.7000, 8.7000, 47711, 1, 1, NULL, 9.9615)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1911, N'TK SMD 0603 100N/50V 10% X7R (V PASU) RoHS', N'TK SMD 0603 100N/50V 10% X7R (V PASU) RoHS', 0.0300, 0.0300, 23145, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1912, N'TK SMD 0603 100P/50V 5% C0G/NPO (V PASU) RoHS', N'TK SMD 0603 100P/50V 5% C0G/NPO (V PASU) RoHS', 0.0300, 0.0300, 32749, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1913, N'TK SMD 0603 10P/50V 10%  C0G/NPO (V PASU) RoHS', N'TK SMD 0603 10P/50V 10%  C0G/NPO (V PASU) RoHS', 0.0300, 0.0300, 31012, 1, 1, NULL, 0.0344)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1914, N'MBRS340T3G (SMD DO214AB, SMC)  40V/3A RoHS', N'MBRS340T3G (SMD DO214AB, SMC)  40V/3A RoHS', 1.6500, 1.6500, 15232, 1, 1, NULL, 1.8893)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1915, N'TLUMIVKA SUMIDA CDRH125L125NP-330MC (33u/2,93A,  SMD) RoHS', N'TLUMIVKA SUMIDA CDRH125L125NP-330MC (33u/2,93A,  SMD) RoHS', 5.3000, 5.3000, 48275, 1, 1, NULL, 6.0685)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1916, N'ODPOR SMD 0603 4K7/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 4K7/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 20536, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1917, N'ODPOR SMD 0603 6K8/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 6K8/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 27151, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1918, N'ODPOR SMD 0603 4K3/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 4K3/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26759, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1919, N'ODPOR SMD 0603 10K/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 10K/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 26778, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1920, N'ODPOR SMD 0603 0R 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 0R 0,1W (V PASU) RoHS', 0.0100, 0.0100, 20531, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1921, N'ODPOR SMD 0603 2K2/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 2K2/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 21250, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1922, N'ODPOR SMD 0603 470R/F 0,1W (V PASU) RoHS', N'ODPOR SMD 0603 470R/F 0,1W (V PASU) RoHS', 0.0100, 0.0100, 35514, 1, 1, NULL, 0.0115)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1923, N'KONEKTOR MINI PCI EXPRESS CARD MM60-52B1-E1-R650 (JAE) RoHS', N'KONEKTOR MINI PCI EXPRESS CARD MM60-52B1-E1-R650 (JAE) RoHS', 10.6300, 10.6300, 40530, 1, 1, NULL, 12.1714)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1924, N'VF KONEKTOR U.FL(m)  20279-001E-01 (I-PEX) RoHS / VF KONEKTO', N'VF KONEKTOR U.FL(m)  20279-001E-01 (I-PEX) RoHS / VF KONEKTOR U.FL-R-SMT (Hirose) RoHS', 6.1300, 6.1300, 36033, 1, 1, NULL, 7.0189)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1925, N'MOLEX KONEKTOR mini PCI Express 48099-5701  RoHS', N'MOLEX KONEKTOR mini PCI Express 48099-5701  RoHS', 14.5700, 14.5700, 48353, 1, 1, NULL, 16.6827)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1926, N'NC7WZ126K8X (SMD US8) RoHS', N'NC7WZ126K8X (SMD US8) RoHS', 2.3200, 2.3200, 38292, 1, 1, NULL, 2.6564)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1927, N'LM22670MR-ADJ (SMD PSOP-8) RoHS', N'LM22670MR-ADJ (SMD PSOP-8) RoHS', 40.0400, 40.0400, 34809, 1, 1, NULL, 45.8458)
INSERT [dbo].[material] ([id], [zkratka], [nazev], [cena_kc], [cena_cm], [id_k2], [id_merne_jednotky], [id_meny], [id_kurzy], [cena_kc2]) VALUES (1928, N'MOLEX SIM HOLDER 91236-0001 RoHS', N'MOLEX SIM HOLDER 91236-0001 RoHS', 3.6600, 3.6600, 19236, 1, 1, NULL, 4.1907)
SET IDENTITY_INSERT [dbo].[material] OFF
/****** Object:  Table [dbo].[firmy]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[firmy]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[firmy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nazev] [nvarchar](255) NOT NULL,
	[zkratka] [nvarchar](60) NOT NULL,
	[ico] [nvarchar](20) NULL,
	[dic] [nvarchar](20) NULL,
	[cislo_uctu] [nvarchar](50) NULL,
	[banka] [nvarchar](100) NULL,
	[poznamka] [nvarchar](2000) NULL,
	[id_druhy_firem] [int] NULL,
	[id_adresy] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[zkratka] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[firmy] ON
INSERT [dbo].[firmy] ([id], [nazev], [zkratka], [ico], [dic], [cislo_uctu], [banka], [poznamka], [id_druhy_firem], [id_adresy]) VALUES (1, N'FEI Czech republic', N'FEI CZ', N'46971629', N'CZ46971629', N'', N'', N'', 2, 1)
INSERT [dbo].[firmy] ([id], [nazev], [zkratka], [ico], [dic], [cislo_uctu], [banka], [poznamka], [id_druhy_firem], [id_adresy]) VALUES (2, N'Rieter CZ', N'Rieter CZ', N'60112301', N'CZ60112301', N'', N'', N'', 2, 2)
INSERT [dbo].[firmy] ([id], [nazev], [zkratka], [ico], [dic], [cislo_uctu], [banka], [poznamka], [id_druhy_firem], [id_adresy]) VALUES (3, N'Intriple', N'Intriple', N'27448827', N'CZ27448827', N'', N'', N'neni', 1, 5)
INSERT [dbo].[firmy] ([id], [nazev], [zkratka], [ico], [dic], [cislo_uctu], [banka], [poznamka], [id_druhy_firem], [id_adresy]) VALUES (4, N'Conel', N'Conel', N'24148661', N'CZ24148661', N'', N'', N'', 2, 6)
SET IDENTITY_INSERT [dbo].[firmy] OFF
/****** Object:  Table [dbo].[atr_typy_oper]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[atr_typy_oper]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[atr_typy_oper](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_atr_casu] [int] NULL,
	[id_typy_operaci] [int] NULL,
 CONSTRAINT [PK_atr_typy_oper] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[atr_typy_oper] ON
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (1, 1, 11)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (2, 2, 11)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (3, 3, 11)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (4, 4, 11)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (5, 8, 12)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (6, 2, 12)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (7, 3, 12)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (8, 4, 12)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (9, 5, 11)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (10, 5, 12)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (13, 11, 11)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (14, 11, 12)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (15, 9, 9)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (16, 10, 10)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (17, 6, 11)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (18, 6, 12)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (21, 12, 11)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (22, 12, 12)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (23, 13, 11)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (24, 13, 12)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (25, 14, 11)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (26, 14, 12)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (27, 15, 9)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (28, 15, 10)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (29, 16, 2)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (30, 7, 11)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (31, 7, 12)
INSERT [dbo].[atr_typy_oper] ([id], [id_atr_casu], [id_typy_operaci]) VALUES (32, 7, 3)
SET IDENTITY_INSERT [dbo].[atr_typy_oper] OFF
/****** Object:  Table [dbo].[operace]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[operace]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[operace](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[popis] [ntext] NULL,
	[ta_cas] [decimal](12, 4) NULL,
	[tp_cas] [decimal](12, 4) NULL,
	[naklad] [decimal](12, 2) NULL,
	[id_typy_operaci] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[operace] ON
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (1, N'Pájení vlnou SEHO', CAST(1.0000 AS Decimal(12, 4)), CAST(10.0000 AS Decimal(12, 4)), CAST(0.00 AS Decimal(12, 2)), 8)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (2, N'Automatická optická inspekce MIRTEC', CAST(0.7000 AS Decimal(12, 4)), CAST(10.0000 AS Decimal(12, 4)), CAST(0.00 AS Decimal(12, 2)), 9)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (3, N'Osazování na SMT lince FUJI AIMEX', CAST(1.1100 AS Decimal(12, 4)), CAST(120.0000 AS Decimal(12, 4)), CAST(0.00 AS Decimal(12, 2)), 12)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (4, N'Ruční osazování', CAST(2.5000 AS Decimal(12, 4)), CAST(30.0000 AS Decimal(12, 4)), CAST(0.00 AS Decimal(12, 2)), 1)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (5, N'Vizuální/mezioperační kontrola', CAST(0.6000 AS Decimal(12, 4)), CAST(10.0000 AS Decimal(12, 4)), CAST(0.00 AS Decimal(12, 2)), 6)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (6, N'Sitotiskové šablony', CAST(0.0000 AS Decimal(12, 4)), CAST(0.0000 AS Decimal(12, 4)), CAST(2800.00 AS Decimal(12, 2)), 18)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (7, N'Opravy', CAST(0.1000 AS Decimal(12, 4)), CAST(0.0000 AS Decimal(12, 4)), CAST(0.00 AS Decimal(12, 2)), 20)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (8, N'Ruční montáž', CAST(22.2000 AS Decimal(12, 4)), CAST(10.0000 AS Decimal(12, 4)), CAST(0.00 AS Decimal(12, 2)), 3)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (9, N'Automatická optická inspekce MIRTEC', CAST(3.7600 AS Decimal(12, 4)), CAST(94.0000 AS Decimal(12, 4)), CAST(0.00 AS Decimal(12, 2)), 9)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (10, N'Osazování na SMT lince ASSEMBLEON', CAST(1.3100 AS Decimal(12, 4)), CAST(100.0000 AS Decimal(12, 4)), CAST(0.00 AS Decimal(12, 2)), 11)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (11, N'Selektivní pájení na lince ORISSA', CAST(15.0000 AS Decimal(12, 4)), CAST(15.0000 AS Decimal(12, 4)), CAST(0.00 AS Decimal(12, 2)), 7)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (12, N'Selektivní pájení na lince ORISSA', CAST(0.5000 AS Decimal(12, 4)), CAST(15.0000 AS Decimal(12, 4)), CAST(0.00 AS Decimal(12, 2)), 7)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (13, N'Automatická optická inspekce MIRTEC', CAST(0.3200 AS Decimal(12, 4)), CAST(8.5000 AS Decimal(12, 4)), CAST(0.00 AS Decimal(12, 2)), 9)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (14, N'Osazování na SMT lince ASSEMBLEON', CAST(0.2770 AS Decimal(12, 4)), CAST(53.0000 AS Decimal(12, 4)), CAST(0.00 AS Decimal(12, 2)), 11)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (15, N'Ruční osazování', CAST(1.9470 AS Decimal(12, 4)), CAST(104.5000 AS Decimal(12, 4)), CAST(0.00 AS Decimal(12, 2)), 1)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (16, N'Balení', CAST(0.0000 AS Decimal(12, 4)), CAST(0.0000 AS Decimal(12, 4)), CAST(2.50 AS Decimal(12, 2)), 16)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (17, N'Sitotiskové šablony', CAST(0.0000 AS Decimal(12, 4)), CAST(0.0000 AS Decimal(12, 4)), CAST(2800.00 AS Decimal(12, 2)), 18)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (18, N'Programování strojů', CAST(0.0000 AS Decimal(12, 4)), CAST(0.0000 AS Decimal(12, 4)), CAST(2400.00 AS Decimal(12, 2)), 19)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (19, N'Pájení vlnou SEHO', CAST(2.5000 AS Decimal(12, 4)), CAST(10.0000 AS Decimal(12, 4)), CAST(0.00 AS Decimal(12, 2)), 8)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (20, N'Ruční osazování', CAST(11.7500 AS Decimal(12, 4)), CAST(10.0000 AS Decimal(12, 4)), CAST(0.00 AS Decimal(12, 2)), 1)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (21, N'Ruční montáž', CAST(1.0000 AS Decimal(12, 4)), CAST(0.0000 AS Decimal(12, 4)), CAST(0.00 AS Decimal(12, 2)), 3)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (22, N'Balení', CAST(0.0000 AS Decimal(12, 4)), CAST(0.0000 AS Decimal(12, 4)), CAST(0.50 AS Decimal(12, 2)), 16)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (24, N'Ruční lakování', CAST(2.0000 AS Decimal(12, 4)), CAST(15.0000 AS Decimal(12, 4)), CAST(0.00 AS Decimal(12, 2)), 22)
INSERT [dbo].[operace] ([id], [popis], [ta_cas], [tp_cas], [naklad], [id_typy_operaci]) VALUES (25, N'', CAST(2.6667 AS Decimal(12, 4)), CAST(0.0000 AS Decimal(12, 4)), CAST(0.00 AS Decimal(12, 2)), 3)
SET IDENTITY_INSERT [dbo].[operace] OFF
/****** Object:  Table [dbo].[nabidky]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nabidky]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[nabidky](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[prij_datum] [date] NOT NULL,
	[pozad_datum] [date] NULL,
	[popis] [ntext] NOT NULL,
	[poznamka] [ntext] NULL,
	[id_set_sazeb] [int] NULL,
	[id_set_sazeb_o] [int] NULL,
	[id_firmy] [int] NOT NULL,
	[folder] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[nabidky] ON
INSERT [dbo].[nabidky] ([id], [prij_datum], [pozad_datum], [popis], [poznamka], [id_set_sazeb], [id_set_sazeb_o], [id_firmy], [folder]) VALUES (1, CAST(0xA1350B00 AS Date), CAST(0xC5350B00 AS Date), N'SUB10W v1.1', N'Sériová výroba pro stroj R35. Plánovaný začátek podzim 2013.', 1, 2, 2, N'H:\300\325 - SMT\KOOPERACE\ZAKAZKY\Rieter\SUB10W v1.1\')
INSERT [dbo].[nabidky] ([id], [prij_datum], [pozad_datum], [popis], [poznamka], [id_set_sazeb], [id_set_sazeb_o], [id_firmy], [folder]) VALUES (2, CAST(0xC5350B00 AS Date), CAST(0xDA350B00 AS Date), N'1022717 2 Channel SSA', N'20 ks/dávka, roční objem 60 ks.', 2, 2, 1, N'h:\300\325 - SMT\KOOPERACE\PODKLADY\FEI\1022717_A - 2 channel SSA\')
INSERT [dbo].[nabidky] ([id], [prij_datum], [pozad_datum], [popis], [poznamka], [id_set_sazeb], [id_set_sazeb_o], [id_firmy], [folder]) VALUES (3, CAST(0xB3350B00 AS Date), CAST(0xCC350B00 AS Date), N'1029490 - VGIB', N'Vývojové vzorky - 5 ks', 2, 2, 1, N'h:\300\325 - SMT\KOOPERACE\PODKLADY\FEI\1029490 - VGIB\')
INSERT [dbo].[nabidky] ([id], [prij_datum], [pozad_datum], [popis], [poznamka], [id_set_sazeb], [id_set_sazeb_o], [id_firmy], [folder]) VALUES (4, CAST(0xFC350B00 AS Date), NULL, N'1022370 - Trip motor switch TMS', N'', 2, 2, 1, N'h:\300\325 - SMT\KOOPERACE\PODKLADY\FEI\1022370 - Trip motor switch TMS\')
INSERT [dbo].[nabidky] ([id], [prij_datum], [pozad_datum], [popis], [poznamka], [id_set_sazeb], [id_set_sazeb_o], [id_firmy], [folder]) VALUES (5, CAST(0x09360B00 AS Date), CAST(0x17360B00 AS Date), N'Intriple IJ290_00', N'DPS', 2, 2, 3, N'h:\300\325 - SMT\KOOPERACE\PODKLADY\Intriple\IJ290_00\')
INSERT [dbo].[nabidky] ([id], [prij_datum], [pozad_datum], [popis], [poznamka], [id_set_sazeb], [id_set_sazeb_o], [id_firmy], [folder]) VALUES (6, CAST(0x11360B00 AS Date), CAST(0x19360B00 AS Date), N'FEI, 1028193, BOCU Assembly', N'', 2, 2, 1, N'h:\300\325 - SMT\KOOPERACE\PODKLADY\FEI\1028193 - BOCU Assembly\')
INSERT [dbo].[nabidky] ([id], [prij_datum], [pozad_datum], [popis], [poznamka], [id_set_sazeb], [id_set_sazeb_o], [id_firmy], [folder]) VALUES (7, CAST(0xAC360B00 AS Date), CAST(0xB2360B00 AS Date), N'48435', N'', 1, 2, 4, N'')
SET IDENTITY_INSERT [dbo].[nabidky] OFF
/****** Object:  Table [dbo].[produkty]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[produkty]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[produkty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[zkratka] [nvarchar](60) NOT NULL,
	[nazev] [nvarchar](255) NOT NULL,
	[popis] [ntext] NULL,
	[id_firmy] [int] NOT NULL,
	[id_k2] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[produkty] ON
INSERT [dbo].[produkty] ([id], [zkratka], [nazev], [popis], [id_firmy], [id_k2]) VALUES (1, N'SUB10W v1.1', N'SUB10W v1.1', N'', 2, NULL)
INSERT [dbo].[produkty] ([id], [zkratka], [nazev], [popis], [id_firmy], [id_k2]) VALUES (2, N'1022717', N'2 channel SSA', N'Sestava se skládá ze 4 DPS a mechaniky.', 1, NULL)
INSERT [dbo].[produkty] ([id], [zkratka], [nazev], [popis], [id_firmy], [id_k2]) VALUES (3, N'1029490', N'1029490 - VGIB', N'', 1, NULL)
INSERT [dbo].[produkty] ([id], [zkratka], [nazev], [popis], [id_firmy], [id_k2]) VALUES (4, N'1022370', N'Trip motor switch TMS', N'', 1, NULL)
INSERT [dbo].[produkty] ([id], [zkratka], [nazev], [popis], [id_firmy], [id_k2]) VALUES (5, N'IJ290_00', N'Intriple IJ290_00', N'', 3, NULL)
INSERT [dbo].[produkty] ([id], [zkratka], [nazev], [popis], [id_firmy], [id_k2]) VALUES (6, N'BOCU Assembly', N'1028193, BOCU', N'DPS+mechanika+kabel', 1, NULL)
INSERT [dbo].[produkty] ([id], [zkratka], [nazev], [popis], [id_firmy], [id_k2]) VALUES (9, N'CONEL B-UR-5I-V2-3 S', N'CONEL DESKA B-UR-5I-V2-3 STANDARD', N'Prodejní cena Kč 280,71/DPS

Osazení, pájení, cyklování', 4, 48435)
SET IDENTITY_INSERT [dbo].[produkty] OFF
/****** Object:  Table [dbo].[osoby]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[osoby]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[osoby](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_osloveni] [int] NULL,
	[jmeno] [nvarchar](50) NOT NULL,
	[jmeno2] [nvarchar](50) NULL,
	[prijmeni] [nvarchar](50) NOT NULL,
	[titul_pred] [nvarchar](50) NULL,
	[titul_za] [nvarchar](50) NULL,
	[poznamka] [nvarchar](2000) NULL,
	[id_firmy] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[osoby] ON
INSERT [dbo].[osoby] ([id], [id_osloveni], [jmeno], [jmeno2], [prijmeni], [titul_pred], [titul_za], [poznamka], [id_firmy]) VALUES (1, 1, N'Petr', N'', N'Švrčina', N'Ing.', N'', N'Nákup', 1)
INSERT [dbo].[osoby] ([id], [id_osloveni], [jmeno], [jmeno2], [prijmeni], [titul_pred], [titul_za], [poznamka], [id_firmy]) VALUES (2, 2, N'Dagmar', N'', N'Frišová', N'', N'', N'Strategický nákupčí', 2)
SET IDENTITY_INSERT [dbo].[osoby] OFF
/****** Object:  Table [dbo].[vazby]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vazby]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vazby](
	[id_nizsi] [int] NULL,
	[id_vyssi] [int] NULL,
	[id_material] [int] NULL,
	[id_operace] [int] NULL,
	[mnozstvi] [decimal](10, 4) NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, NULL, 1, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, NULL, 2, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, NULL, 3, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, NULL, 4, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, NULL, 5, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, NULL, 6, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, NULL, 7, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 82, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 83, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 84, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 85, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 86, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 87, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 88, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 89, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 90, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 91, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 92, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 93, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 94, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 95, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 96, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 97, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 98, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 99, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 100, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 101, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 102, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 103, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 104, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 105, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 106, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 107, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 108, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 109, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 110, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 111, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 112, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 113, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 114, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 115, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 116, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 117, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 118, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 119, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 120, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 121, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 122, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 123, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 124, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 125, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 126, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 127, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 128, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 129, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 130, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 131, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 132, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 133, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 134, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 135, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 136, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 137, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 138, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 139, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 140, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 141, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 142, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 143, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 144, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 145, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 146, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 147, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 148, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 149, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 150, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 151, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 152, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 153, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 154, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 155, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 156, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 157, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 158, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 159, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 160, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 161, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 162, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 163, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 164, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 165, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 166, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 167, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 168, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 169, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 170, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 171, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 172, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 173, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 174, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 175, NULL, CAST(1.0000 AS Decimal(10, 4)))
GO
print 'Processed 100 total records'
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 176, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 177, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 178, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 179, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 180, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 181, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 182, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 183, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 184, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 185, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 186, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 187, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 188, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 189, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 190, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 191, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 192, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 193, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 194, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 195, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 196, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 197, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 198, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 199, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 200, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 201, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 202, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 203, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 204, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 205, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 206, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 207, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 208, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 209, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 210, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 211, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 212, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 213, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 214, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 215, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 216, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 217, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 218, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 219, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 220, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 221, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 222, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 223, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 224, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 225, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 226, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 227, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 228, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 229, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 230, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 231, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 232, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 233, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 234, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 235, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 236, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 237, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 238, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 239, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 240, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 241, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 242, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 243, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 244, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 245, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 246, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 247, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 248, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 249, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 250, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 251, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 252, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 253, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 254, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 255, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 256, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 1, 257, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1065, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1066, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1067, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1068, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1069, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1070, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1071, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1072, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1073, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1074, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1075, NULL, CAST(6.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1076, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1077, NULL, CAST(18.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1078, NULL, CAST(24.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1079, NULL, CAST(5.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1080, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1081, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1082, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1083, NULL, CAST(1.0000 AS Decimal(10, 4)))
GO
print 'Processed 200 total records'
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1084, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1085, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1086, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1087, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1088, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1089, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1090, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1091, NULL, CAST(8.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1092, NULL, CAST(8.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1093, NULL, CAST(15.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1094, NULL, CAST(8.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1095, NULL, CAST(17.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1096, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1097, NULL, CAST(8.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1098, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1099, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1100, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1101, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1102, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1103, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1104, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1105, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1106, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1107, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1108, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1109, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1110, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1111, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1112, NULL, CAST(50.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1113, NULL, CAST(9.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1114, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1115, NULL, CAST(10.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1116, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1117, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1118, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1119, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1120, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1121, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1122, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1123, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1124, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1125, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1126, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1127, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1128, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1129, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1130, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1131, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1132, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1133, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1134, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1135, NULL, CAST(6.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1136, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1137, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1138, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1139, NULL, CAST(12.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1140, NULL, CAST(14.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1141, NULL, CAST(8.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1142, NULL, CAST(16.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1143, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1144, NULL, CAST(22.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1145, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1146, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1147, NULL, CAST(11.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1148, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1149, NULL, CAST(16.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1150, NULL, CAST(3.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1151, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1152, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1153, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1154, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1155, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1156, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1157, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1158, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1159, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1160, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1161, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1162, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1163, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1164, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1165, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1166, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1167, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1168, NULL, CAST(3.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1169, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1170, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1171, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1172, NULL, CAST(5.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1173, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1174, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1175, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1176, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1177, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1178, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1179, NULL, CAST(14.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1180, NULL, CAST(39.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1181, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1182, NULL, CAST(26.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1183, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1184, NULL, CAST(4.0000 AS Decimal(10, 4)))
GO
print 'Processed 300 total records'
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1185, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1186, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1187, NULL, CAST(8.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1188, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1189, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1190, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1191, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1192, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1193, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1194, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1195, NULL, CAST(14.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1196, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1197, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1198, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1199, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1200, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1201, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1202, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1203, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1204, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1205, NULL, CAST(21.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1206, NULL, CAST(8.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1207, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1208, NULL, CAST(8.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1209, NULL, CAST(20.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1210, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1211, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1212, NULL, CAST(8.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1213, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1214, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1215, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1216, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1217, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1218, NULL, CAST(3.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1219, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1220, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1221, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1222, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1223, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1224, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1225, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1226, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1227, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1228, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1229, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1230, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1231, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1232, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1233, NULL, CAST(5.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1234, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1235, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1236, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1237, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1238, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1239, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1240, NULL, CAST(6.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1241, NULL, CAST(6.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1242, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1243, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1244, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1245, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1246, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1247, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1248, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1249, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1250, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1251, NULL, CAST(3.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1252, NULL, CAST(6.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1253, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1254, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1255, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, 1256, NULL, CAST(0.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, NULL, 8, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, NULL, 9, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, NULL, 10, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, NULL, 11, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 3, NULL, 12, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 3, NULL, 13, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 3, NULL, 14, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 3, NULL, 15, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 3, NULL, 16, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 3, NULL, 17, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 3, NULL, 18, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 4, 1257, NULL, CAST(3.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 4, 1258, NULL, CAST(3.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 4, 1259, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 4, 1260, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 4, 1261, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 4, 1262, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 4, 1263, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 4, NULL, 19, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 4, NULL, 20, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 4, NULL, 21, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 4, NULL, 22, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1370, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1371, NULL, CAST(6.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1372, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1373, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1374, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1375, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1376, NULL, CAST(1.0000 AS Decimal(10, 4)))
GO
print 'Processed 400 total records'
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1377, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1378, NULL, CAST(3.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1379, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1380, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1381, NULL, CAST(14.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1382, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1383, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1384, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1385, NULL, CAST(5.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1386, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1387, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1388, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1389, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1390, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1391, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1392, NULL, CAST(9.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1393, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1394, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1395, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1396, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1397, NULL, CAST(3.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1398, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1399, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1400, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1401, NULL, CAST(3.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1402, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1403, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1404, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1405, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1406, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1407, NULL, CAST(3.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1408, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1409, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1410, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1411, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1412, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1413, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1414, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1415, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1416, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1417, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1418, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1419, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1420, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1421, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1422, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1423, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1424, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1425, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1426, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1317, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1318, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1319, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1320, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1321, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1322, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1323, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1324, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1325, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1326, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1327, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1328, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1329, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1330, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1331, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1332, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1333, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1334, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1335, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1336, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1337, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1338, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1339, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1340, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1341, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1342, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1343, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1344, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1345, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1346, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1347, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1348, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1349, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1350, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1351, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1352, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1353, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1354, NULL, CAST(60.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1355, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1356, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1357, NULL, CAST(11.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1358, NULL, CAST(23.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1359, NULL, CAST(14.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1360, NULL, CAST(3.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1361, NULL, CAST(6.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1362, NULL, CAST(3.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1363, NULL, CAST(3.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1364, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1365, NULL, CAST(11.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1366, NULL, CAST(6.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1367, NULL, CAST(10.0000 AS Decimal(10, 4)))
GO
print 'Processed 500 total records'
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1368, NULL, CAST(10.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 5, 1369, NULL, CAST(18.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1427, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 6, 1428, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, NULL, 24, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 2, NULL, 25, NULL)
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1897, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1898, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1899, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1900, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1901, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1902, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1903, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1904, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1905, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1906, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1907, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1908, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1909, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1910, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1911, NULL, CAST(7.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1912, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1913, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1914, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1915, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1916, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1917, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1918, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1919, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1920, NULL, CAST(3.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1921, NULL, CAST(4.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1922, NULL, CAST(3.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1923, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1924, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1925, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1926, NULL, CAST(2.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1927, NULL, CAST(1.0000 AS Decimal(10, 4)))
INSERT [dbo].[vazby] ([id_nizsi], [id_vyssi], [id_material], [id_operace], [mnozstvi]) VALUES (NULL, 9, 1928, NULL, CAST(1.0000 AS Decimal(10, 4)))
/****** Object:  Table [dbo].[pocty]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pocty]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pocty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_nabidky] [int] NOT NULL,
	[id_produkty] [int] NOT NULL,
	[vyrobni_davka] [numeric](18, 0) NULL,
	[mnozstvi] [numeric](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[pocty] ON
INSERT [dbo].[pocty] ([id], [id_nabidky], [id_produkty], [vyrobni_davka], [mnozstvi]) VALUES (1, 1, 1, CAST(2000 AS Numeric(18, 0)), CAST(25000 AS Numeric(18, 0)))
INSERT [dbo].[pocty] ([id], [id_nabidky], [id_produkty], [vyrobni_davka], [mnozstvi]) VALUES (2, 1, 1, CAST(4000 AS Numeric(18, 0)), CAST(50000 AS Numeric(18, 0)))
INSERT [dbo].[pocty] ([id], [id_nabidky], [id_produkty], [vyrobni_davka], [mnozstvi]) VALUES (19, 2, 2, CAST(50 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[pocty] ([id], [id_nabidky], [id_produkty], [vyrobni_davka], [mnozstvi]) VALUES (20, 2, 2, CAST(100 AS Numeric(18, 0)), CAST(1000 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[pocty] OFF
/****** Object:  Table [dbo].[stav_produkt]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stav_produkt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stav_produkt](
	[id_produkty] [int] NOT NULL,
	[id_stav] [int] NOT NULL,
	[datum_zmeny] [datetime] NULL,
	[id_user] [int] NOT NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[stav_produkt] ([id_produkty], [id_stav], [datum_zmeny], [id_user]) VALUES (1, 4, CAST(0x0000A06700FE4AD4 AS DateTime), 4)
INSERT [dbo].[stav_produkt] ([id_produkty], [id_stav], [datum_zmeny], [id_user]) VALUES (1, 7, CAST(0x0000A06701005324 AS DateTime), 3)
INSERT [dbo].[stav_produkt] ([id_produkty], [id_stav], [datum_zmeny], [id_user]) VALUES (1, 3, CAST(0x0000A06701043610 AS DateTime), 2)
INSERT [dbo].[stav_produkt] ([id_produkty], [id_stav], [datum_zmeny], [id_user]) VALUES (2, 4, CAST(0x0000A14F00EC859C AS DateTime), 1)
INSERT [dbo].[stav_produkt] ([id_produkty], [id_stav], [datum_zmeny], [id_user]) VALUES (3, 4, CAST(0x0000A07000F96294 AS DateTime), 2)
INSERT [dbo].[stav_produkt] ([id_produkty], [id_stav], [datum_zmeny], [id_user]) VALUES (4, 3, CAST(0x0000A0A100F4F560 AS DateTime), 2)
INSERT [dbo].[stav_produkt] ([id_produkty], [id_stav], [datum_zmeny], [id_user]) VALUES (4, 4, CAST(0x0000A0A100F96D20 AS DateTime), 2)
INSERT [dbo].[stav_produkt] ([id_produkty], [id_stav], [datum_zmeny], [id_user]) VALUES (5, 6, CAST(0x0000A0B6008A7DE8 AS DateTime), 2)
INSERT [dbo].[stav_produkt] ([id_produkty], [id_stav], [datum_zmeny], [id_user]) VALUES (5, 4, CAST(0x0000A0B6008B5588 AS DateTime), 4)
INSERT [dbo].[stav_produkt] ([id_produkty], [id_stav], [datum_zmeny], [id_user]) VALUES (6, 3, CAST(0x0000A0B600D0F110 AS DateTime), 2)
INSERT [dbo].[stav_produkt] ([id_produkty], [id_stav], [datum_zmeny], [id_user]) VALUES (6, 6, CAST(0x0000A0B600D13508 AS DateTime), 2)
INSERT [dbo].[stav_produkt] ([id_produkty], [id_stav], [datum_zmeny], [id_user]) VALUES (1, 22, CAST(0x0000A14F0115B9A8 AS DateTime), 1)
INSERT [dbo].[stav_produkt] ([id_produkty], [id_stav], [datum_zmeny], [id_user]) VALUES (5, 5, CAST(0x0000A0B500F35A0C AS DateTime), 2)
INSERT [dbo].[stav_produkt] ([id_produkty], [id_stav], [datum_zmeny], [id_user]) VALUES (9, 3, CAST(0x0000A15100FE6F28 AS DateTime), 1)
INSERT [dbo].[stav_produkt] ([id_produkty], [id_stav], [datum_zmeny], [id_user]) VALUES (2, 5, CAST(0x0000A14F00F2FB20 AS DateTime), 1)
/****** Object:  Table [dbo].[stav_nabidka]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stav_nabidka]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stav_nabidka](
	[id_nabidky] [int] NOT NULL,
	[id_stav] [int] NOT NULL,
	[datum_zmeny] [datetime] NULL,
	[id_user] [int] NOT NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[stav_nabidka] ([id_nabidky], [id_stav], [datum_zmeny], [id_user]) VALUES (1, 1, CAST(0x0000A06700F971D0 AS DateTime), 3)
INSERT [dbo].[stav_nabidka] ([id_nabidky], [id_stav], [datum_zmeny], [id_user]) VALUES (1, 3, CAST(0x0000A06701043610 AS DateTime), 2)
INSERT [dbo].[stav_nabidka] ([id_nabidky], [id_stav], [datum_zmeny], [id_user]) VALUES (1, 2, CAST(0x0000A14F00B6DBB8 AS DateTime), 1)
INSERT [dbo].[stav_nabidka] ([id_nabidky], [id_stav], [datum_zmeny], [id_user]) VALUES (2, 1, CAST(0x0000A06A00A348C8 AS DateTime), 2)
INSERT [dbo].[stav_nabidka] ([id_nabidky], [id_stav], [datum_zmeny], [id_user]) VALUES (2, 2, CAST(0x0000A15000DBDBFC AS DateTime), 1)
INSERT [dbo].[stav_nabidka] ([id_nabidky], [id_stav], [datum_zmeny], [id_user]) VALUES (3, 1, CAST(0x0000A07000C1D388 AS DateTime), 2)
INSERT [dbo].[stav_nabidka] ([id_nabidky], [id_stav], [datum_zmeny], [id_user]) VALUES (3, 2, CAST(0x0000A07000C25920 AS DateTime), 2)
INSERT [dbo].[stav_nabidka] ([id_nabidky], [id_stav], [datum_zmeny], [id_user]) VALUES (4, 1, CAST(0x0000A0A100F373D4 AS DateTime), 2)
INSERT [dbo].[stav_nabidka] ([id_nabidky], [id_stav], [datum_zmeny], [id_user]) VALUES (4, 2, CAST(0x0000A0A100F3D518 AS DateTime), 2)
INSERT [dbo].[stav_nabidka] ([id_nabidky], [id_stav], [datum_zmeny], [id_user]) VALUES (4, 3, CAST(0x0000A0A100F4F560 AS DateTime), 2)
INSERT [dbo].[stav_nabidka] ([id_nabidky], [id_stav], [datum_zmeny], [id_user]) VALUES (5, 2, CAST(0x0000A0B6008A2AB4 AS DateTime), 2)
INSERT [dbo].[stav_nabidka] ([id_nabidky], [id_stav], [datum_zmeny], [id_user]) VALUES (6, 1, CAST(0x0000A0B600CC89B8 AS DateTime), 2)
INSERT [dbo].[stav_nabidka] ([id_nabidky], [id_stav], [datum_zmeny], [id_user]) VALUES (1, 21, CAST(0x0000A14F00ADCC94 AS DateTime), 1)
INSERT [dbo].[stav_nabidka] ([id_nabidky], [id_stav], [datum_zmeny], [id_user]) VALUES (1, 22, CAST(0x0000A14800F682A4 AS DateTime), 1)
INSERT [dbo].[stav_nabidka] ([id_nabidky], [id_stav], [datum_zmeny], [id_user]) VALUES (7, 3, CAST(0x0000A15100FE6F28 AS DateTime), 1)
INSERT [dbo].[stav_nabidka] ([id_nabidky], [id_stav], [datum_zmeny], [id_user]) VALUES (6, 2, CAST(0x0000A0B600CD4538 AS DateTime), 2)
INSERT [dbo].[stav_nabidka] ([id_nabidky], [id_stav], [datum_zmeny], [id_user]) VALUES (6, 3, CAST(0x0000A0B600D0F110 AS DateTime), 2)
INSERT [dbo].[stav_nabidka] ([id_nabidky], [id_stav], [datum_zmeny], [id_user]) VALUES (7, 1, CAST(0x0000A15100937DD0 AS DateTime), 2)
INSERT [dbo].[stav_nabidka] ([id_nabidky], [id_stav], [datum_zmeny], [id_user]) VALUES (7, 2, CAST(0x0000A1510093A350 AS DateTime), 2)
/****** Object:  Table [dbo].[naklady]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[naklady]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[naklady](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hodnota] [money] NOT NULL,
	[id_produkty] [int] NOT NULL,
	[id_typy_nakladu] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[naklady] ON
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (8, 3.2450, 3, 2)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (9, 174.1667, 3, 4)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (10, 7.9727, 3, 3)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (11, 875.6750, 3, 5)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (12, 2.5000, 3, 6)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (13, 5200.0000, 3, 7)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (15, 892.2500, 4, 1)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (16, 21.2500, 4, 2)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (17, 16.6667, 4, 4)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (18, 21.0833, 4, 3)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (19, 84.3333, 4, 5)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (20, 0.5000, 4, 6)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (26, 1751.2300, 6, 1)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (48, 347.0934, 1, 1)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (49, 356.1048, 1, 8)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (50, 5.4833, 1, 2)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (51, 68.3333, 1, 4)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (52, 33.2630, 1, 3)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (53, 2570.5000, 1, 5)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (54, 2800.0000, 1, 7)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (105, 9865.4300, 2, 1)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (106, 44.7778, 2, 2)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (107, 41.6667, 2, 4)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (108, 121.3475, 2, 3)
INSERT [dbo].[naklady] ([id], [hodnota], [id_produkty], [id_typy_nakladu]) VALUES (109, 1806.4833, 2, 5)
SET IDENTITY_INSERT [dbo].[naklady] OFF
/****** Object:  Table [dbo].[kontakty]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kontakty]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kontakty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hodnota] [nvarchar](100) NOT NULL,
	[id_firmy] [int] NULL,
	[id_osoby] [int] NULL,
	[id_typy_kontaktu] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[atr_operaci]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[atr_operaci]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[atr_operaci](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_operace] [int] NULL,
	[id_produktu] [int] NULL,
	[id_atr_casu] [int] NULL,
	[mnozstvi] [decimal](10, 4) NULL,
	[cas_min] [decimal](10, 4) NULL,
 CONSTRAINT [PK_atr_operaci] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[atr_operaci] ON
INSERT [dbo].[atr_operaci] ([id], [id_operace], [id_produktu], [id_atr_casu], [mnozstvi], [cas_min]) VALUES (1, 10, 2, 1, CAST(100.0000 AS Decimal(10, 4)), CAST(1.1667 AS Decimal(10, 4)))
INSERT [dbo].[atr_operaci] ([id], [id_operace], [id_produktu], [id_atr_casu], [mnozstvi], [cas_min]) VALUES (2, 10, 2, 2, CAST(2.0000 AS Decimal(10, 4)), CAST(0.0433 AS Decimal(10, 4)))
INSERT [dbo].[atr_operaci] ([id], [id_operace], [id_produktu], [id_atr_casu], [mnozstvi], [cas_min]) VALUES (3, 10, 2, 3, CAST(3.0000 AS Decimal(10, 4)), CAST(0.1000 AS Decimal(10, 4)))
INSERT [dbo].[atr_operaci] ([id], [id_operace], [id_produktu], [id_atr_casu], [mnozstvi], [cas_min]) VALUES (4, 10, 2, 11, CAST(50.0000 AS Decimal(10, 4)), CAST(100.0000 AS Decimal(10, 4)))
INSERT [dbo].[atr_operaci] ([id], [id_operace], [id_produktu], [id_atr_casu], [mnozstvi], [cas_min]) VALUES (5, 25, 2, 7, CAST(20.0000 AS Decimal(10, 4)), CAST(2.6667 AS Decimal(10, 4)))
SET IDENTITY_INSERT [dbo].[atr_operaci] OFF
/****** Object:  Table [dbo].[ceny]    Script Date: 01/25/2013 16:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ceny]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ceny](
	[id_nabidky] [int] NOT NULL,
	[id_produkty] [int] NOT NULL,
	[id_typy_cen] [int] NOT NULL,
	[hodnota] [money] NULL,
	[hodnota_cm] [money] NULL,
	[id_meny] [int] NULL,
	[id_kurzy] [int] NULL,
	[id_pocty] [int] NULL,
	[id_vzorec] [int] NULL,
	[aktivni] [int] NULL,
	[id] [int] NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (1, 1, 1, 397.4219, 397.4219, 1, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (1, 1, 2, 7.2380, 7.2380, 1, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (1, 1, 3, 34.5483, 34.5483, 1, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (1, 1, 4, 0.0000, 0.0000, 1, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (1, 1, 11, 439.2082, 439.2082, 1, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (1, 1, 5, 10.4466, 10.4466, 1, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (1, 1, 6, 44.9655, 44.9655, 1, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (1, 1, 7, 494.6203, 494.6203, 1, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (1, 1, 10, 495.0000, 495.0000, 1, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (1, 1, 8, 3220.0000, 3220.0000, 1, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 1, 11295.9174, 470.6632, 2, 1, 19, 1, 1, 2)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 2, 59.1067, 2.4628, 2, 1, 19, 1, 1, 2)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 3, 157.4772, 6.5616, 2, 1, 19, 1, 1, 2)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 4, 0.0000, 0.0000, 2, 1, 19, 1, 1, 2)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 5, 1151.2501, 47.9688, 2, 1, 19, 1, 1, 2)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 6, 2532.7503, 105.5313, 2, 1, 19, 1, 1, 2)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 7, 15196.5017, 633.1876, 2, 1, 19, 1, 1, 2)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 8, 0.0000, 0.0000, 2, 1, 19, 1, 1, 2)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 10, 15197.0000, 633.2083, 2, 1, 19, 1, 1, 2)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (3, 3, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (4, 4, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (5, 5, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (6, 6, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 11, 11512.5013, 479.6876, 2, 1, 19, 1, 1, 2)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (1, 1, 1, 362.7126, 15.1130, 2, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (1, 1, 2, 7.2380, 0.3016, 2, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (1, 1, 3, 34.5483, 1.4395, 2, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (1, 1, 4, 0.0000, 0.0000, 2, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (1, 1, 11, 404.4989, 16.8541, 2, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (1, 1, 5, 101.1247, 4.2135, 2, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (1, 1, 6, 50.5624, 2.1068, 2, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (1, 1, 7, 556.1860, 23.1744, 2, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (1, 1, 10, 557.0000, 23.2083, 2, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (1, 1, 8, 3220.0000, 134.1667, 2, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 1, 11295.9174, 11295.9174, 1, NULL, 19, 1, 0, 1)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 2, 59.1067, 59.1067, 1, NULL, 19, 1, 0, 1)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 3, 157.4772, 157.4772, 1, NULL, 19, 1, 0, 1)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 4, 0.0000, 0.0000, 1, NULL, 19, 1, 0, 1)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 5, 1151.2501, 1151.2501, 1, NULL, 19, 1, 0, 1)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 6, 2532.7503, 2532.7503, 1, NULL, 19, 1, 0, 1)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 7, 15196.5017, 15196.5017, 1, NULL, 19, 1, 0, 1)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 8, 0.0000, 0.0000, 1, NULL, 19, 1, 0, 1)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 10, 15197.0000, 15197.0000, 1, NULL, 19, 1, 0, 1)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 11, 11512.5013, 11512.5013, 1, NULL, 19, 1, 0, 1)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 1, 11295.9174, 470.6632, 2, 1, 20, 1, 0, 3)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 2, 59.1067, 2.4628, 2, 1, 20, 1, 0, 3)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 3, 139.4123, 5.8088, 2, 1, 20, 1, 0, 3)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 4, 0.0000, 0.0000, 2, 1, 20, 1, 0, 3)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 5, 1149.4436, 47.8935, 2, 1, 20, 1, 0, 3)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 6, 2528.7760, 105.3657, 2, 1, 20, 1, 0, 3)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 7, 15172.6560, 632.1940, 2, 1, 20, 1, 0, 3)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 8, 0.0000, 0.0000, 2, 1, 20, 1, 0, 3)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 10, 15173.0000, 632.2083, 2, 1, 20, 1, 0, 3)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (2, 2, 11, 11494.4364, 478.9349, 2, 1, 20, 1, 0, 3)
INSERT [dbo].[ceny] ([id_nabidky], [id_produkty], [id_typy_cen], [hodnota], [hodnota_cm], [id_meny], [id_kurzy], [id_pocty], [id_vzorec], [aktivni], [id]) VALUES (7, 9, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL)
/****** Object:  StoredProcedure [dbo].[costsCalculate]    Script Date: 01/25/2013 16:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[costsCalculate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[costsCalculate]
	@product_id int,
	@id_set_sazeb int
AS

BEGIN
    SET NOCOUNT ON;

	DECLARE @IDT int,
			@IDT2 int,
			@CNT int,
			@NAKL_TA decimal(18,4),
			@NAKL_TP decimal(18,4),
			@NAKLAD  decimal(18,4),
			@CENMAT  decimal(18,4);


	BEGIN TRANSACTION sum_naklady;

		BEGIN TRY
			-- VÝPOCET MATERIÁLOVÝCH NÁKLADŮ
			-- nejprve si zjistíme ID typu materiálových nákladů (budeme ho potřebovat vícekrát)
			SELECT @IDT  = id FROM dbo.typy_nakladu WHERE zkratka Like ''%MaterialN%''
			SELECT @IDT2 = id FROM dbo.typy_nakladu WHERE zkratka Like ''%MaterialPC%''
			-- vymažeme všechny náklady týkající se materiálových nákladů produktu.
			DELETE FROM dbo.naklady WHERE (id_typy_nakladu = @IDT OR id_typy_nakladu = @IDT2)
						AND id_produkty = @product_id
			-- sečteme materiálové náklady pro aktuální produkt
			-- pokud je znám aktuální nákupní kurz zadané měny materiálové položky použije se pro výpočet ceny materiálu tento,
			--	jinak se použije cena v Kč zadaná při poslední aktualizaci položky
			SELECT	@NAKLAD = SUM(v.mnozstvi * COALESCE(m.cena_cm * k.kurz_nakupni, m.cena_kc)),
					@CENMAT = SUM(v.mnozstvi * m.cena_kc2)  
				FROM dbo.vazby v
					LEFT JOIN dbo.material m ON v.id_material=m.id
					LEFT JOIN (SELECT id_meny, kurz_nakupni FROM kurzy
									WHERE	platnost_do < ''19710101'' OR
											platnost_do > GETDATE() OR
											platnost_do IS NULL) k
								ON m.id_meny = k.id_meny
					WHERE v.id_vyssi = @product_id
			-- zapíšme výsledek do tabulky naklady
			if @NAKLAD>0
				BEGIN
					INSERT INTO dbo.naklady (hodnota, id_produkty, id_typy_nakladu)
						VALUES (@NAKLAD, @product_id, @IDT);
					SET @CNT = @CNT + 1;
				END
			if @CENMAT>0
				BEGIN
					INSERT INTO dbo.naklady (hodnota, id_produkty, id_typy_nakladu)
						VALUES (@CENMAT, @product_id, @IDT2);
					SET @CNT = @CNT + 1;
				END

			-- VÝPOCET RUČNÍCH PŘÍMÝCH A DÁVKOVÝCH NÁKLADŮ (RPN, RDN)
			-- nejprve si zjistíme ID typu operace Ruční
			SELECT @IDT = id FROM dbo.typy_nakladu WHERE zkratka Like ''%OperRucPN%''
			SELECT @IDT2 = id FROM dbo.typy_nakladu WHERE zkratka Like ''%OperRucDN%''
			-- vymažeme všechny náklady týkající se RPN, RDN produktu.
			DELETE FROM dbo.naklady WHERE (id_typy_nakladu = @IDT OR id_typy_nakladu = @IDT2)
						AND id_produkty = @product_id
			-- sečteme RPN a RDN pro aktuální produkt
			SELECT	@NAKL_TA = SUM(o.ta_cas * s.hodnota/60),
					@NAKL_TP = SUM(o.tp_cas * s.hodnota/60)
					FROM
						dbo.vazby v
						LEFT JOIN dbo.operace o ON v.id_operace=o.id
						LEFT JOIN dbo.typy_operaci t ON o.id_typy_operaci=t.id
						LEFT JOIN dbo.druhy_operaci d ON t.id_druhy_operaci=d.id
						LEFT JOIN dbo.sazby_o s ON o.id_typy_operaci = s.id_typy_operaci
									AND s.id_set_sazeb_o = @id_set_sazeb
					WHERE v.id_vyssi = @product_id AND d.zkratka Like ''%Ruční%''

			-- zapíšme výsledek do tabulky naklady
			if @NAKL_TA>0
				BEGIN
					INSERT INTO dbo.naklady (hodnota, id_produkty, id_typy_nakladu)
						VALUES (@NAKL_TA, @product_id, @IDT)
					SET @CNT = @CNT + 1;
				END
			if @NAKL_TP>0
				BEGIN
					INSERT INTO dbo.naklady (hodnota, id_produkty, id_typy_nakladu)
						VALUES (@NAKL_TP, @product_id, @IDT2)
					SET @CNT = @CNT + 1;
				END

			-- VÝPOCET STROJNÍCH PŘÍMÝCH A DÁVKOVÝCH NÁKLADŮ (SPN, SDN)
			-- nejprve si zjistíme ID typu operace Strojní
			SELECT @IDT = id FROM dbo.typy_nakladu WHERE zkratka Like ''%OperStrPN%''
			SELECT @IDT2 = id FROM dbo.typy_nakladu WHERE zkratka Like ''%OperStrDN%''
			-- vymažeme všechny náklady týkající se SPN, SDN produktu.
			DELETE FROM dbo.naklady WHERE (id_typy_nakladu = @IDT OR id_typy_nakladu = @IDT2)
						AND id_produkty = @product_id
			-- sečteme SPN a SDN pro aktuální produkt
			SELECT	@NAKL_TA = SUM(o.ta_cas * s.hodnota/60),
					@NAKL_TP = SUM(o.tp_cas * s.hodnota/60)
					FROM
						dbo.vazby v
						LEFT JOIN dbo.operace o ON v.id_operace=o.id
						LEFT JOIN dbo.typy_operaci t ON o.id_typy_operaci=t.id
						LEFT JOIN dbo.druhy_operaci d ON t.id_druhy_operaci=d.id
						LEFT JOIN dbo.sazby_o s ON o.id_typy_operaci = s.id_typy_operaci
									AND s.id_set_sazeb_o = @id_set_sazeb
					WHERE v.id_vyssi = @product_id AND d.zkratka Like ''%Strojní%''

			-- zapíšme výsledek do tabulky naklady
			if @NAKL_TA>0
				BEGIN
					INSERT INTO dbo.naklady (hodnota, id_produkty, id_typy_nakladu)
						VALUES (@NAKL_TA, @product_id, @IDT)
					SET @CNT = @CNT + 1;
				END
			if @NAKL_TP>0
				BEGIN
					INSERT INTO dbo.naklady (hodnota, id_produkty, id_typy_nakladu)
						VALUES (@NAKL_TP, @product_id, @IDT2)
					SET @CNT = @CNT + 1;
				END


			-- VÝPOCET OSTATNÍCH PŘÍMÝCH NÁKLADŮ (OPN)
			-- nejprve si zjistíme ID typu operace Strojní
			SELECT @IDT = id FROM dbo.typy_nakladu WHERE zkratka Like ''%OstatniPN%''
			-- vymažeme všechny náklady týkající se OPN produktu.
			DELETE FROM dbo.naklady WHERE id_typy_nakladu = @IDT
						AND id_produkty = @product_id
			-- sečteme OPN pro aktuální produkt
			SELECT	@NAKLAD = SUM(o.naklad)
					FROM
						dbo.vazby v
						LEFT JOIN dbo.operace o ON v.id_operace=o.id
						LEFT JOIN dbo.typy_operaci t ON o.id_typy_operaci=t.id
						LEFT JOIN dbo.druhy_operaci d ON t.id_druhy_operaci=d.id
					WHERE v.id_vyssi = @product_id AND d.zkratka Like ''%Ostatní%''

			-- zapíšme výsledek do tabulky naklady
			if @NAKLAD>0
				BEGIN
					INSERT INTO dbo.naklady (hodnota, id_produkty, id_typy_nakladu)
						VALUES (@NAKLAD, @product_id, @IDT)
					SET @CNT = @CNT + 1;
				END


			-- VÝPOCET OSTATNÍCH PŘÍMÝCH NÁKLADŮ (OPN)
			-- nejprve si zjistíme ID typu operace Strojní
			SELECT @IDT = id FROM dbo.typy_nakladu WHERE zkratka Like ''%JednorazN%''
			-- vymažeme všechny náklady týkající se OPN produktu.
			DELETE FROM dbo.naklady WHERE id_typy_nakladu = @IDT
						AND id_produkty = @product_id
			-- sečteme OPN pro aktuální produkt
			SELECT	@NAKLAD = SUM(o.naklad)
					FROM
						dbo.vazby v
						LEFT JOIN dbo.operace o ON v.id_operace=o.id
						LEFT JOIN dbo.typy_operaci t ON o.id_typy_operaci=t.id
						LEFT JOIN dbo.druhy_operaci d ON t.id_druhy_operaci=d.id
					WHERE v.id_vyssi = @product_id AND d.zkratka Like ''%Jednorázové%''

			-- zapíšme výsledek do tabulky naklady
			if @NAKLAD>0
				BEGIN
					INSERT INTO dbo.naklady (hodnota, id_produkty, id_typy_nakladu)
						VALUES (@NAKLAD, @product_id, @IDT)
					SET @CNT = @CNT + 1;
				END



		END TRY
		BEGIN CATCH
			SELECT
				ERROR_NUMBER() AS ErrorNumber
				,ERROR_SEVERITY() AS ErrorSeverity
				,ERROR_STATE() AS ErrorState
				,ERROR_PROCEDURE() AS ErrorProcedure
				,ERROR_LINE() AS ErrorLine
				,ERROR_MESSAGE() AS ErrorMessage;

			IF @@TRANCOUNT > 0
				ROLLBACK TRANSACTION sum_naklady;
				RETURN 0;
		END CATCH;
	IF @CNT = 0
		--- nic se neinserovalo -- zadny vypocet
		BEGIN
			RETURN 0;
		END

	IF @@TRANCOUNT > 0
		COMMIT TRANSACTION sum_naklady;
	RETURN 1;

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[copyProduct]    Script Date: 01/25/2013 16:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[copyProduct]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[copyProduct]
	-- Zkopíruje produkt pod jiným ID
	@produkt_id int,
	@user_id int,
	@ret_id int OUTPUT
AS

BEGIN

    SET NOCOUNT ON;

	DECLARE 
			@new_produkt int,
			@new_material int,
			@old_material int,
			@new_operace int,
			@old_operace int,
			@mnoz decimal(10,2),
			@C_stat int;



	BEGIN TRANSACTION copy_pr;

		BEGIN TRY
		

				--- Vkládání nových produktů

				BEGIN
					-- Vytvoření kopie produktu dle @old_produkt
					INSERT INTO produkty (zkratka, nazev, popis, id_firmy)
						SELECT zkratka, ''KOPIE p[''+RTRIM(CAST(id as nchar(10)))+'']: ''+nazev [nazev], 
								popis, id_firmy
							FROM produkty WHERE id = @produkt_id;
					SELECT @new_produkt = SCOPE_IDENTITY();

					IF @new_produkt>0 OR @new_produkt is not null
					BEGIN
						-- Deklarace cursoru pro načtení seznamu materiálů přivazbených k produktu
						SELECT @C_stat = CURSOR_STATUS(''global'',''c_mats'');	-- zjištění statusu kurzoru
						IF @C_stat > -2										-- existuje-li kurzor
							BEGIN
								IF @C_stat > -1 CLOSE c_mats;				-- je-li kurzor otevřen, zevřeme ho
								DEALLOCATE c_mats;							-- odstraníme kurzor
							END
						IF @C_stat = -3
							BEGIN
								DECLARE c_mats CURSOR FOR
									 SELECT DISTINCT id_material, mnozstvi
										FROM vazby
										WHERE id_vyssi=@produkt_id and id_material is not null
							END

						--- Vkládání nových materialu

						OPEN c_mats;

						FETCH NEXT FROM c_mats
							INTO @old_material, @mnoz;

						WHILE @@FETCH_STATUS = 0
						BEGIN
							-- Vytvoření kopie materiálu dle @old_material
							INSERT INTO material (zkratka, nazev, cena_kc, cena_cm, id_k2, id_merne_jednotky, id_meny, id_kurzy)
								SELECT zkratka, nazev, cena_kc, cena_cm, id_k2, id_merne_jednotky, id_meny, id_kurzy 
									FROM material WHERE id = @old_material;
							SELECT @new_material = SCOPE_IDENTITY();

							IF @new_material>0 OR @new_material is not null
							BEGIN
								-- Vloženi vazby s novým materiálem na novým produktem
								INSERT INTO vazby (id_vyssi, id_material, mnozstvi)
										VALUES (@new_produkt, @new_material, @mnoz);
							END
							
							-- další material
							FETCH NEXT FROM c_mats
								INTO @old_material, @mnoz;
						END
						CLOSE c_mats;
						DEALLOCATE c_mats;			
									

						-- Deklarace cursoru pro načtení seznamu operaci přivazbených k produktu
						SELECT @C_stat = CURSOR_STATUS(''global'',''c_opers'');	-- zjištění statusu kurzoru
						IF @C_stat > -2										-- existuje-li kurzor
							BEGIN
								IF @C_stat > -1 CLOSE c_opers;				-- je-li kurzor otevřen, zevřeme ho
								DEALLOCATE c_opers;							-- odstraníme kurzor
							END
						IF @C_stat = -3
							BEGIN
								DECLARE c_opers CURSOR FOR
									 SELECT DISTINCT id_operace, mnozstvi
										FROM vazby
										WHERE id_vyssi=@produkt_id and id_operace is not null
							END

						--- Vkládání nových operaci

						OPEN c_opers;

						FETCH NEXT FROM c_opers
							INTO @old_operace, @mnoz;

						WHILE @@FETCH_STATUS = 0
						BEGIN
							-- Vytvoření kopie operace dle @old_operace
							INSERT INTO operace (popis, ta_cas, tp_cas, naklad, id_typy_operaci)
								SELECT popis, ta_cas, tp_cas, naklad, id_typy_operaci 
									FROM operace WHERE id = @old_operace;
							SELECT @new_operace = SCOPE_IDENTITY();

							IF @new_operace>0 OR @new_operace is not null
							BEGIN
								-- Vložení vazby s novým materiálem na novým produktem
								INSERT INTO vazby (id_vyssi, id_operace, mnozstvi)
										VALUES (@new_produkt, @new_operace, @mnoz);
							END
							
							-- další operace
							FETCH NEXT FROM c_opers
								INTO @old_operace, @mnoz;
						END
						CLOSE c_opers;
						DEALLOCATE c_opers;			
			
					END
												

					-- end produkt
				END

				-- Vložíme status o produktu
				INSERT INTO stav_produkt (id_produkty, id_stav, id_user, datum_zmeny)
						VALUES (@new_produkt, 3, @user_id, GETDATE());
						-- čekání na ceny materiálu
				INSERT INTO stav_produkt (id_produkty, id_stav, id_user, datum_zmeny)
						VALUES (@new_produkt, 4, @user_id, GETDATE());
						-- TPV zahájeno
						
						
				SET @ret_id = @new_produkt;
				


		END TRY
		
		BEGIN CATCH
			SELECT
				ERROR_NUMBER() AS ErrorNumber
				,ERROR_SEVERITY() AS ErrorSeverity
				,ERROR_STATE() AS ErrorState
				,ERROR_PROCEDURE() AS ErrorProcedure
				,ERROR_LINE() AS ErrorLine
				,ERROR_MESSAGE() AS ErrorMessage;

			IF @@TRANCOUNT > 0
				ROLLBACK TRANSACTION copy_pr;
				-- nepovedlo se to - moc chyb
				RETURN 0;
		END CATCH;

	IF @@TRANCOUNT > 0
		COMMIT TRANSACTION copy_pr;
	RETURN @ret_id;
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[pricesCalculate2]    Script Date: 01/25/2013 16:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pricesCalculate2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[pricesCalculate2]
	-- Spocte ceny produktu v pozadovane mene (id_meny) dle pozadovanych sazeb rezii v nabidce
	-- Vzorec: Material * ZasobR
	@nabidka_id int,
	@product_id int,
	@id_set_sazeb int,
	@id_meny int,
	@id_pocty int,
	@id_vzorec int = 0,
	@is_mat_mar int = 0	--zda počítat materiálovou marži (a ne SpraR na materiál) či nikoliv
AS
BEGIN

    SET NOCOUNT ON;

	DECLARE @ID int,
			@MAX_ID int,
			@CNTC int,
			@NCENA varchar(20),
			@IDDAVKA int,
			@DAVKA decimal(18,4), --výrobní dávka
			@CNT int,
			@N_NAME varchar(20),
			@N_VALUE decimal(18,4),
			@N_MATER decimal(18,4) = 0,
			@N_MATPC decimal(18,4) = 0,
			@N_OPRUP decimal(18,4) = 0,
			@N_OPRUD decimal(18,4) = 0,
			@N_OPSTP decimal(18,4) = 0,
			@N_OPSTD decimal(18,4) = 0,
			@N_OSTPN decimal(18,4) = 0,
			@N_JEDNN decimal(18,4) = 0,
			@R_NAME varchar(20),
			@R_VALUE decimal(18,4) = 0.0,
			@R_MAT decimal(18,4) = 0.0,
			@R_VYR decimal(18,4) = 0.0,
			@R_SPR decimal(18,4) = 0.0,
			@R_ZAS decimal(18,4) = 0.0,
			@R_ZIS decimal(18,4) = 0.0,
			@R_PON decimal(18,4) = 0.0,
			@R_PJN decimal(18,4) = 0.0,
			@IDKURZ int,
			@KURZ decimal(18,4) = 0,
			@C_ID int,
			@C_NAME varchar(20),
			@C_MATER decimal(18,4),
			@C_RUCPR decimal(18,4),
			@C_STRPR decimal(18,4),
			@C_OSTSL decimal(18,4),
			@C_VYRNA decimal(18,4),
			@C_SPRRE decimal(18,4),
			@C_ZISK decimal(18,4),
			@C_PRODC decimal(18,4),
			@C_JEDNC decimal(18,4),
			@C_stat int;

	-- Deklarace cursoru pro načtení spočítaných nákladů
	SELECT @C_stat = CURSOR_STATUS(''global'',''c_nakl'');	-- zjištění statusu kurzoru
	IF @C_stat > -2										-- existuje-li kurzor
		BEGIN
			IF @C_stat > -1 CLOSE c_nakl;				-- je-li kurzor otevřen, zevřeme ho
			DEALLOCATE c_nakl;							-- odstraníme kurzor
		END
	IF @C_stat = -3
		BEGIN
			DECLARE c_nakl CURSOR FOR
				SELECT t.zkratka, n.hodnota
					FROM dbo.naklady n
					LEFT JOIN dbo.typy_nakladu t ON n.id_typy_nakladu=t.id
					WHERE n.id_produkty = @product_id ORDER BY poradi;
		END

	-- Deklarace cursoru pro načtení typů cen
	SELECT @C_stat = CURSOR_STATUS(''global'',''c_tcen'');
	IF @C_stat > -2
		BEGIN
			IF @C_stat > -1 CLOSE c_tcen;
			DEALLOCATE c_tcen;
		END
	IF @C_stat = -3
		BEGIN
			DECLARE c_tcen CURSOR FOR
				SELECT id, zkratka FROM dbo.typy_cen ORDER BY poradi;
		END

	-- Deklarace cursoru pro načtení sazeb režií
	SELECT @C_stat = CURSOR_STATUS(''global'',''c_sazr'');
	IF @C_stat > -2
		BEGIN
			IF @C_stat > -1 CLOSE c_sazr;
			DEALLOCATE c_sazr;
		END
	IF @C_stat = -3
		BEGIN
			DECLARE c_sazr CURSOR FOR
				SELECT zkratka, hodnota
					FROM dbo.sazby s
						LEFT JOIN dbo.typy_sazeb t ON s.id_typy_sazeb = t.id
						LEFT JOIN dbo.set_sazeb ss ON s.id_set_sazeb = ss.id
					WHERE s.id_set_sazeb = @id_set_sazeb;
		END


	BEGIN TRANSACTION sum_ceny;

		BEGIN TRY
			-- NEJPRVE SI NAČTEME NÁKLADY (zvážit, zda nespustit aktualizaci nákladů)
			-- ověříme si, zda jsou všechny nákladové položky spočítány a uloženy v DB
			--SELECT @CNT = COUNT(*)
			--	FROM dbo.typy_nakladu t
			--		LEFT JOIN dbo.naklady n ON t.id = n.id_typy_nakladu AND n.id_produkty=@product_id
			--	WHERE n.id_produkty is null
			--IF @CNT>0
			--	BEGIN
			--		-- Return 0, chybí vypočítané náklady - několik položek
			--		PRINT N''ERROR: Chyba - Nejsou spočteny všechny typy nákladů, ''
			--			+ RTRIM(CAST(@CNT AS NVARCHAR(2)))
			--			+ N'' jich chybí. Proveďte nejprve výpočet nákladů.'';
			--		DEALLOCATE c_nakl;
			--		DEALLOCATE c_sazr;
			--		DEALLOCATE c_tcen;
			--		RETURN 0;
			--	END

			-- Zjištení velikosti výrobní dávky
			SELECT @IDDAVKA = id, @DAVKA = vyrobni_davka
						FROM dbo.pocty WHERE id=@id_pocty;

			IF @DAVKA=0 OR @DAVKA is null
				BEGIN
					-- Return 0, není zadaná velikost výrobní dávky
					PRINT N''ERROR: Chyba - Není zadaná velikost výrobní dávky.'';
					DEALLOCATE c_nakl;
					DEALLOCATE c_sazr;
					DEALLOCATE c_tcen;
					RETURN 0;
				END

			-- Zjištění aktuálního kurzu měny, tedy pokud zadaná měna není Kč, pak kurz = 1
			IF @id_meny > 1
				BEGIN
					SELECT @IDKURZ = id, @KURZ = kurz_prodejni FROM kurzy
									WHERE	(platnost_do < ''19710101'' OR
											platnost_do > GETDATE() OR
											platnost_do IS NULL)
											AND id_meny=@id_meny;
					-- pokud neni zadny aktualni nalzen pouzije se kurz = 1
					IF @KURZ = 0 OR @KURZ is null
						BEGIN
							SET @IDKURZ = null;
							SET @KURZ = 1.0;
						END
				END
			ELSE
				SET @KURZ = 1.0;

			-- Je-li kurz=1 musi byt id_meny=1 (CZK)
			IF @KURZ = 1.0
				SET @id_meny = 1;


			--- A JDE SE NA TO ----
			--- načteme jednotlive naklady do proměnných

			--- PRINT N''Dávka   = ''+CAST(@DAVKA as varchar(12));
			--- PRINT N''Kurz    = ''+CAST(@KURZ as varchar(12));

			OPEN c_nakl;

			FETCH NEXT FROM c_nakl
				INTO @N_NAME, @N_VALUE;

			WHILE @@FETCH_STATUS = 0
			BEGIN
				--PRINT N''Náklady: ''+@N_NAME+'' = ''+CAST(@N_VALUE as varchar(12));
				IF @N_NAME Like ''%MaterialN%''
					SET @N_MATER = @N_VALUE;
				IF @N_NAME Like ''%MaterialPC%''
					SET @N_MATPC = @N_VALUE;
				IF @N_NAME Like ''%OperRucPN%''
					SET @N_OPRUP = @N_VALUE;
				IF @N_NAME Like ''%OperRucNN%''
					SET @N_OPRUD = @N_VALUE;
				IF @N_NAME Like ''%OperStrPN%''
					SET @N_OPSTP = @N_VALUE;
				IF @N_NAME Like ''%OperStrDN%''
					SET @N_OPSTD = @N_VALUE;
				IF @N_NAME Like ''%OstatniPN%''
					SET @N_OSTPN = @N_VALUE;
				IF @N_NAME Like ''%JednorazN%''
					SET @N_JEDNN = @N_VALUE;

				-- další naklad
				FETCH NEXT FROM c_nakl
					INTO @N_NAME, @N_VALUE;
			END

			CLOSE c_nakl;
			DEALLOCATE c_nakl;

			--- načteme jednotlive sazby režií a přirážek do proměnných

			OPEN c_sazr;

			FETCH NEXT FROM c_sazr
				INTO @R_NAME, @R_VALUE;

			WHILE @@FETCH_STATUS = 0
			BEGIN
				--PRINT N''Sazby: ''+@R_NAME+'' = ''+CAST(@R_VALUE as varchar(12));
				IF @R_NAME Like ''%MatM%''
					SET @R_MAT = @R_VALUE;
				IF @R_NAME Like ''%VyrR%''
					SET @R_VYR = @R_VALUE;
				IF @R_NAME Like ''%SpraR%''
					SET @R_SPR = @R_VALUE;
				IF @R_NAME Like ''%ZasR%''
					SET @R_ZAS = @R_VALUE;
				IF @R_NAME Like ''%MZisku%''
					SET @R_ZIS = @R_VALUE;
				IF @R_NAME Like ''%PrirJN%''
					SET @R_PJN = @R_VALUE;
				IF @R_NAME Like ''%PrirON%''
					SET @R_PON = @R_VALUE;

				-- další sazba
				FETCH NEXT FROM c_sazr
					INTO @R_NAME, @R_VALUE;
			END

			CLOSE c_sazr;
			DEALLOCATE c_sazr;

			--- smažeme dosud uložené ceny
			
			SET @C_VYRNA = 0.0;
			
			DELETE FROM dbo.ceny WHERE		id_nabidky	= @nabidka_id
										AND id_produkty = @product_id
										AND id_meny		= @id_meny
										AND (id_pocty	= @id_pocty OR id_pocty is null);

			-- zjistíme první volné ID skupiny cen
			SELECT @MAX_ID = MAX(COALESCE(id,0)) FROM dbo.ceny;
			SET @MAX_ID = @MAX_ID + 1;
			
			-- zjistíme počet cen, které jsou pro nabídku + produkt v systému
			SET @CNTC = 0;
			SELECT @CNTC = COUNT(idc) FROM 
						(SELECT DISTINCT id [idc] FROM dbo.ceny 
								WHERE	id_nabidky	= @nabidka_id
										AND id_produkty = @product_id) tmp;
			IF @CNTC < 1
				SET @CNTC = 1;
			ELSE
				SET @CNTC = 0;
														
			SET @C_VYRNA = 0.0;

			OPEN c_tcen;

			FETCH NEXT FROM c_tcen
				INTO @C_ID, @C_NAME;

			WHILE @@FETCH_STATUS = 0
			BEGIN
				IF @C_NAME Like ''%MaterialC%''
					BEGIN
						IF @is_mat_mar = 0
							SET @C_MATER = @N_MATER * (1 + @R_ZAS);
						ELSE
							SET @C_MATER = @N_MATER * (1 + @R_ZAS + @R_MAT);
						SET @C_VYRNA = @C_VYRNA + @C_MATER;
						INSERT INTO dbo.ceny(id_nabidky, id_produkty, id_typy_cen, hodnota, hodnota_cm, id_meny, id_kurzy, id_pocty, id_vzorec, id, aktivni)
									VALUES (@nabidka_id, @product_id, @C_ID, @C_MATER, @C_MATER/@KURZ, @id_meny, @IDKURZ, @IDDAVKA, @id_vzorec, @MAX_ID, @CNTC);
						--PRINT N''Ceny - uloženo: ''+@C_NAME+'' = ''+CAST(@C_MATER as varchar(12));
					END
				IF @C_NAME Like ''%RucPraceC%''
					BEGIN
						SET @C_RUCPR = (@N_OPRUP + @N_OPRUD/@DAVKA) * (1 + @R_VYR);
						INSERT INTO dbo.ceny(id_nabidky, id_produkty, id_typy_cen, hodnota, hodnota_cm, id_meny, id_kurzy, id_pocty, id_vzorec, id, aktivni)
									VALUES (@nabidka_id, @product_id, @C_ID, @C_RUCPR, @C_RUCPR/@KURZ, @id_meny, @IDKURZ, @IDDAVKA, @id_vzorec, @MAX_ID, @CNTC);
						SET @C_VYRNA = @C_VYRNA + @C_RUCPR;
						--PRINT N''Ceny - uloženo: ''+@C_NAME+'' = ''+CAST(@C_RUCPR as varchar(12));
					END
				IF @C_NAME Like ''%StrPraceC%''
					BEGIN
						SET @C_STRPR = (@N_OPSTP + @N_OPSTD/@DAVKA);
						INSERT INTO dbo.ceny(id_nabidky, id_produkty, id_typy_cen, hodnota, hodnota_cm, id_meny, id_kurzy, id_pocty, id_vzorec, id, aktivni)
									VALUES (@nabidka_id, @product_id, @C_ID, @C_STRPR, @C_STRPR/@KURZ, @id_meny, @IDKURZ, @IDDAVKA, @id_vzorec, @MAX_ID, @CNTC);
						SET @C_VYRNA = @C_VYRNA + @C_STRPR;
						--PRINT N''Ceny - uloženo: ''+@C_NAME+'' = ''+CAST(@C_STRPR as varchar(12));
					END
				IF @C_NAME Like ''%OstSluzbC%''
					BEGIN
						SET @C_OSTSL = @N_OSTPN * (1 + @R_PON);
						INSERT INTO dbo.ceny(id_nabidky, id_produkty, id_typy_cen, hodnota, hodnota_cm, id_meny, id_kurzy, id_pocty, id_vzorec, id, aktivni)
									VALUES (@nabidka_id, @product_id, @C_ID, @C_OSTSL, @C_OSTSL/@KURZ, @id_meny, @IDKURZ, @IDDAVKA, @id_vzorec, @MAX_ID, @CNTC);
						SET @C_VYRNA = @C_VYRNA + @C_OSTSL;
						--PRINT N''Ceny - uloženo: ''+@C_NAME+'' = ''+CAST(@C_OSTSL as varchar(12));
					END
				IF @C_NAME Like ''%VyrobniC%''
					BEGIN
						INSERT INTO dbo.ceny(id_nabidky, id_produkty, id_typy_cen, hodnota, hodnota_cm, id_meny, id_kurzy, id_pocty, id_vzorec, id, aktivni)
									VALUES (@nabidka_id, @product_id, @C_ID, @C_VYRNA, @C_VYRNA/@KURZ, @id_meny, @IDKURZ, @IDDAVKA, @id_vzorec, @MAX_ID, @CNTC);
						--PRINT N''Ceny - uloženo: ''+@C_NAME+'' = ''+CAST(@C_OSTSL as varchar(12));
					END
				IF @C_NAME Like ''%SprvRezie%''
					BEGIN
						IF @is_mat_mar = 0
							SET @C_SPRRE = @C_VYRNA * @R_SPR;
						ELSE
							SET @C_SPRRE = (@C_VYRNA - @C_MATER) * @R_SPR;
						INSERT INTO dbo.ceny(id_nabidky, id_produkty, id_typy_cen, hodnota, hodnota_cm, id_meny, id_kurzy, id_pocty, id_vzorec, id, aktivni)
									VALUES (@nabidka_id, @product_id, @C_ID, @C_SPRRE, @C_SPRRE/@KURZ, @id_meny, @IDKURZ, @IDDAVKA, @id_vzorec, @MAX_ID, @CNTC);
						--PRINT N''Ceny - uloženo: ''+@C_NAME+'' = ''+CAST(@C_SPRRE as varchar(12));
					END
				IF @C_NAME Like ''%Zisk%''
					BEGIN
						SET @C_ZISK = (@C_VYRNA + @C_SPRRE) * @R_ZIS;
						INSERT INTO dbo.ceny(id_nabidky, id_produkty, id_typy_cen, hodnota, hodnota_cm, id_meny, id_kurzy, id_pocty, id_vzorec, id, aktivni)
									VALUES (@nabidka_id, @product_id, @C_ID, @C_ZISK, @C_ZISK/@KURZ, @id_meny, @IDKURZ, @IDDAVKA, @id_vzorec, @MAX_ID, @CNTC);
						--PRINT N''Ceny - uloženo: ''+@C_NAME+'' = ''+CAST(@C_ZISK as varchar(12));
					END
				IF @C_NAME Like ''%ProdCenaP%''
					BEGIN
						SET @C_PRODC = @C_VYRNA + @C_SPRRE + @C_ZISK;
						INSERT INTO dbo.ceny(id_nabidky, id_produkty, id_typy_cen, hodnota, hodnota_cm, id_meny, id_kurzy, id_pocty, id_vzorec, id, aktivni)
									VALUES (@nabidka_id, @product_id, @C_ID, @C_PRODC, @C_PRODC/@KURZ, @id_meny, @IDKURZ, @IDDAVKA, @id_vzorec, @MAX_ID, @CNTC);
						--PRINT N''Ceny - uloženo: ''+@C_NAME+'' = ''+CAST(@C_PRODC as varchar(12));
					END
				IF @C_NAME Like ''%CenaNab%''
					BEGIN
						SET @C_PRODC = CEILING(@C_PRODC);
						INSERT INTO dbo.ceny(id_nabidky, id_produkty, id_typy_cen, hodnota, hodnota_cm, id_meny, id_kurzy, id_pocty, id_vzorec, id, aktivni)
									VALUES (@nabidka_id, @product_id, @C_ID, @C_PRODC, @C_PRODC/@KURZ, @id_meny, @IDKURZ, @IDDAVKA, @id_vzorec, @MAX_ID, @CNTC);
						--PRINT N''Ceny - uloženo: ''+@C_NAME+'' = ''+CAST(@C_PRODC as varchar(12));
					END
				IF @C_NAME Like ''%JednorazC%''
					BEGIN
						SET @C_JEDNC = CEILING(@N_JEDNN * (1 + @R_PJN));
						INSERT INTO dbo.ceny(id_nabidky, id_produkty, id_typy_cen, hodnota, hodnota_cm, id_meny, id_kurzy, id_pocty, id_vzorec, id, aktivni)
									VALUES (@nabidka_id, @product_id, @C_ID, @C_JEDNC, @C_JEDNC/@KURZ, @id_meny, @IDKURZ, @IDDAVKA, @id_vzorec, @MAX_ID, @CNTC);
						--PRINT N''Ceny - uloženo: ''+@C_NAME+'' = ''+CAST(@C_JEDNC as varchar(12));
					END


				-- další typ ceny
			   FETCH NEXT FROM c_tcen
					INTO @C_ID, @C_NAME;
			END

			CLOSE c_tcen;
			DEALLOCATE c_tcen;

		END TRY
		BEGIN CATCH
			SELECT
				ERROR_NUMBER() AS ErrorNumber
				,ERROR_SEVERITY() AS ErrorSeverity
				,ERROR_STATE() AS ErrorState
				,ERROR_PROCEDURE() AS ErrorProcedure
				,ERROR_LINE() AS ErrorLine
				,ERROR_MESSAGE() AS ErrorMessage;

			IF @@TRANCOUNT > 0
				ROLLBACK TRANSACTION sum_ceny;
				-- nepovedlo se to - moc chyb
				RETURN 0;
		END CATCH;

	IF @@TRANCOUNT > 0
		COMMIT TRANSACTION sum_ceny;
	RETURN 1;
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[pricesCalculate]    Script Date: 01/25/2013 16:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pricesCalculate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[pricesCalculate]
	-- Spocte ceny produktu v pozadovane mene (id_meny) dle pozadovanych sazeb rezii v nabidce
	-- Vzorec: Material * ZasobR
	@nabidka_id int,
	@product_id int,
	@id_set_sazeb int,
	@id_meny int,
	@id_pocty int,
	@id_vzorec int = 0
	
AS
BEGIN

    SET NOCOUNT ON;

	DECLARE @ID int,
			@MAX_ID int,
			@CNTC int,
			@IDVZOREC int,
			@NCENA varchar(20),
			@IDDAVKA int,
			@DAVKA decimal(18,4), --výrobní dávka
			@CNT int,
			@N_NAME varchar(20),
			@N_VALUE decimal(18,4),
			@N_MATER decimal(18,4) = 0,
			@N_OPRUP decimal(18,4) = 0,
			@N_OPRUD decimal(18,4) = 0,
			@N_OPSTP decimal(18,4) = 0,
			@N_OPSTD decimal(18,4) = 0,
			@N_OSTPN decimal(18,4) = 0,
			@N_JEDNN decimal(18,4) = 0,
			@R_NAME varchar(20),
			@R_VALUE decimal(18,4) = 0.0,
			@R_MAT decimal(18,4) = 0.0,
			@R_VYR decimal(18,4) = 0.0,
			@R_VYM decimal(18,4) = 0.0,
			@R_SPR decimal(18,4) = 0.0,
			@R_ZAS decimal(18,4) = 0.0,
			@R_ZIS decimal(18,4) = 0.0,
			@R_PON decimal(18,4) = 0.0,
			@R_PJN decimal(18,4) = 0.0,
			@IDKURZ int,
			@KURZ decimal(18,4) = 0,
			@C_ID int,
			@C_NAME varchar(20),
			@C_MATER decimal(18,4),
			@C_RUCPR decimal(18,4),
			@C_STRPR decimal(18,4),
			@C_OSTSL decimal(18,4),
			@C_VYRNA decimal(18,4),
			@C_SPRRE decimal(18,4),
			@C_ZISK decimal(18,4),
			@C_PRODC decimal(18,4),
			@C_NABC decimal(18,4),
			@C_JEDNC decimal(18,4),
			@C_stat int;

	-- Deklarace cursoru pro načtení spočítaných nákladů
	SELECT @C_stat = CURSOR_STATUS(''global'',''c_nakl'');	-- zjištění statusu kurzoru
	IF @C_stat > -2										-- existuje-li kurzor
		BEGIN
			IF @C_stat > -1 CLOSE c_nakl;				-- je-li kurzor otevřen, zevřeme ho
			DEALLOCATE c_nakl;							-- odstraníme kurzor
		END
	IF @C_stat = -3
		BEGIN
			DECLARE c_nakl CURSOR FOR
				SELECT t.zkratka, n.hodnota
					FROM dbo.naklady n
					LEFT JOIN dbo.typy_nakladu t ON n.id_typy_nakladu=t.id
					WHERE n.id_produkty = @product_id;
		END

	-- Deklarace cursoru pro načtení typů cen
	SELECT @C_stat = CURSOR_STATUS(''global'',''c_tcen'');
	IF @C_stat > -2
		BEGIN
			IF @C_stat > -1 CLOSE c_tcen;
			DEALLOCATE c_tcen;
		END
	IF @C_stat = -3
		BEGIN
			DECLARE c_tcen CURSOR FOR
				SELECT id, zkratka FROM dbo.typy_cen;
		END

	-- Deklarace cursoru pro načtení sazeb režií
	SELECT @C_stat = CURSOR_STATUS(''global'',''c_sazr'');
	IF @C_stat > -2
		BEGIN
			IF @C_stat > -1 CLOSE c_sazr;
			DEALLOCATE c_sazr;
		END
	IF @C_stat = -3
		BEGIN
			DECLARE c_sazr CURSOR FOR
				SELECT zkratka, hodnota
					FROM dbo.sazby s
						LEFT JOIN dbo.typy_sazeb t ON s.id_typy_sazeb = t.id
						LEFT JOIN dbo.set_sazeb ss ON s.id_set_sazeb = ss.id
					WHERE s.id_set_sazeb = @id_set_sazeb;
		END


	BEGIN TRANSACTION sum_ceny;

		BEGIN TRY
			-- NEJPRVE SI NAČTEME NÁKLADY (zvážit, zda nespustit aktualizaci nákladů)
			-- ověříme si, zda jsou všechny nákladové položky spočítány a uloženz v DB
			--SELECT @CNT = COUNT(*)
			--	FROM dbo.typy_nakladu t
			--		LEFT JOIN dbo.naklady n ON t.id = n.id_typy_nakladu AND n.id_produkty=@product_id
			--	WHERE n.id_produkty is null
			--IF @CNT>0
			--	BEGIN
			--		-- Return 0, chybí vypočítané náklady - několik položek
			--		PRINT N''ERROR: Chyba - Nejsou spočteny všechny typy nákladů, ''
			--			+ RTRIM(CAST(@CNT AS NVARCHAR(2)))
			--			+ N'' jich chybí. Proveďte nejprve výpočet nákladů.'';
			--		DEALLOCATE c_nakl;
			--		DEALLOCATE c_sazr;
			--		DEALLOCATE c_tcen;
			--		RETURN 0;
			--	END

			-- Zjištení velikosti výrobní dávky
			SELECT @IDDAVKA = id, @DAVKA = vyrobni_davka
						FROM dbo.pocty WHERE id=@id_pocty;

			IF @DAVKA=0 OR @DAVKA is null
				BEGIN
					-- Return 0, není zadaná velikost výrobní dávky
					PRINT N''ERROR: Chyba - Není zadaná velikost výrobní dávky.'';
					DEALLOCATE c_nakl;
					DEALLOCATE c_sazr;
					DEALLOCATE c_tcen;
					RETURN 0;
				END

			-- Zjištění aktuálního kurzu měny, tedy pokud zadaná měna není Kč, pak kurz = 1
			IF @id_meny > 1
				BEGIN
					SELECT @IDKURZ = id, @KURZ = kurz_prodejni FROM kurzy
									WHERE	(platnost_do < ''19710101'' OR
											platnost_do > GETDATE() OR
											platnost_do IS NULL)
											AND id_meny=@id_meny;
					-- pokud neni zadny aktualni nalzen pouzije se kurz = 1
					IF @KURZ = 0 OR @KURZ is null
						BEGIN
							SET @IDKURZ = null;
							SET @KURZ = 1.0;
						END
				END
			ELSE
				SET @KURZ = 1.0;

			-- Je-li kurz=1 musi byt id_meny=1 (CZK)
			IF @KURZ = 1.0
				SET @id_meny = 1;

			SET @IDVZOREC = @id_vzorec;

			--- A JDE SE NA TO ----
			--- načteme jednotlive naklady do proměnných

			--- PRINT N''Dávka   = ''+CAST(@DAVKA as varchar(12));
			--- PRINT N''Kurz    = ''+CAST(@KURZ as varchar(12));

			OPEN c_nakl;

			FETCH NEXT FROM c_nakl
				INTO @N_NAME, @N_VALUE;

			WHILE @@FETCH_STATUS = 0
			BEGIN
				--PRINT N''Náklady: ''+@N_NAME+'' = ''+CAST(@N_VALUE as varchar(12));
				IF @N_NAME Like ''%MaterialN%''
					SET @N_MATER = @N_VALUE;
				IF @N_NAME Like ''%OperRucPN%''
					SET @N_OPRUP = @N_VALUE;
				IF @N_NAME Like ''%OperRucNN%''
					SET @N_OPRUD = @N_VALUE;
				IF @N_NAME Like ''%OperStrPN%''
					SET @N_OPSTP = @N_VALUE;
				IF @N_NAME Like ''%OperStrDN%''
					SET @N_OPSTD = @N_VALUE;
				IF @N_NAME Like ''%OstatniPN%''
					SET @N_OSTPN = @N_VALUE;
				IF @N_NAME Like ''%JednorazN%''
					SET @N_JEDNN = @N_VALUE;

				-- další naklad
				FETCH NEXT FROM c_nakl
					INTO @N_NAME, @N_VALUE;
			END

			CLOSE c_nakl;
			DEALLOCATE c_nakl;

			--- načteme jednotlive sazby režií a přirážek do proměnných

			OPEN c_sazr;

			FETCH NEXT FROM c_sazr
				INTO @R_NAME, @R_VALUE;

			WHILE @@FETCH_STATUS = 0
			BEGIN
				--PRINT N''Sazby: ''+@R_NAME+'' = ''+CAST(@R_VALUE as varchar(12));
				IF @R_NAME Like ''%VyrR%''
					SET @R_VYR = @R_VALUE;
				IF @R_NAME Like ''%VyrMR%''
					SET @R_VYM = @R_VALUE;
				IF @R_NAME Like ''%MatM%''
					SET @R_MAT = @R_VALUE;
				IF @R_NAME Like ''%SpraR%''
					SET @R_SPR = @R_VALUE;
				IF @R_NAME Like ''%ZasR%''
					SET @R_ZAS = @R_VALUE;
				IF @R_NAME Like ''%MZisku%''
					SET @R_ZIS = @R_VALUE;
				IF @R_NAME Like ''%PrirJN%''
					SET @R_PJN = @R_VALUE;
				IF @R_NAME Like ''%PrirON%''
					SET @R_PON = @R_VALUE;

				-- další sazba
				FETCH NEXT FROM c_sazr
					INTO @R_NAME, @R_VALUE;
			END

			CLOSE c_sazr;
			DEALLOCATE c_sazr;

			--- smažeme dosud uložené ceny
			DELETE FROM dbo.ceny WHERE		id_nabidky	= @nabidka_id
										AND id_produkty = @product_id
										AND id_meny		= @id_meny
										AND (id_pocty	= @id_pocty OR id_pocty is null);

			-- zjistíme první volné ID skupiny cen
			SELECT @MAX_ID = MAX(COALESCE(id,0)) FROM dbo.ceny;
			SET @MAX_ID = @MAX_ID + 1;
			OPEN c_tcen;

			-- zjistíme počet cen, které jsou pro nabídku + produkt v systému
			SET @CNTC = 0;
			SELECT @CNTC = COUNT(idc) FROM 
						(SELECT DISTINCT id [idc] FROM dbo.ceny 
								WHERE	id_nabidky	= @nabidka_id
										AND id_produkty = @product_id) tmp;
			IF @CNTC < 1
				SET @CNTC = 1;
			ELSE
				SET @CNTC = 0;
														
			SET @C_VYRNA = 0.0;

			FETCH NEXT FROM c_tcen
				INTO @C_ID, @C_NAME;

			WHILE @@FETCH_STATUS = 0
			BEGIN
				IF @C_NAME Like ''%MaterialC%''
					BEGIN
						SET @C_MATER = @N_MATER * (1 + @R_ZAS + @R_MAT);
						INSERT INTO dbo.ceny(id_nabidky, id_produkty, id_typy_cen, hodnota, hodnota_cm, id_meny, id_kurzy, id_pocty, id_vzorec, id, aktivni)
									VALUES (@nabidka_id, @product_id, @C_ID, @C_MATER, @C_MATER/@KURZ, @id_meny, @IDKURZ, @IDDAVKA, @IDVZOREC, @MAX_ID, @CNTC);
						SET @C_VYRNA = @C_VYRNA + @C_MATER;
						--PRINT N''Ceny - uloženo: ''+@C_NAME+'' = ''+CAST(@C_MATER as varchar(12));
					END
				IF @C_NAME Like ''%RucPraceC%''
					BEGIN
						SET @C_RUCPR = (@N_OPRUP + @N_OPRUD/@DAVKA) * (1 + @R_VYR);
						INSERT INTO dbo.ceny(id_nabidky, id_produkty, id_typy_cen, hodnota, hodnota_cm, id_meny, id_kurzy, id_pocty, id_vzorec, id, aktivni)
									VALUES (@nabidka_id, @product_id, @C_ID, @C_RUCPR, @C_RUCPR/@KURZ, @id_meny, @IDKURZ, @IDDAVKA, @IDVZOREC, @MAX_ID, @CNTC);
						SET @C_VYRNA = @C_VYRNA + @C_RUCPR;
						--PRINT N''Ceny - uloženo: ''+@C_NAME+'' = ''+CAST(@C_RUCPR as varchar(12));
					END
				IF @C_NAME Like ''%StrPraceC%''
					BEGIN
						SET @C_STRPR = (@N_OPSTP + @N_OPSTD/@DAVKA);
						INSERT INTO dbo.ceny(id_nabidky, id_produkty, id_typy_cen, hodnota, hodnota_cm, id_meny, id_kurzy, id_pocty, id_vzorec, id, aktivni)
									VALUES (@nabidka_id, @product_id, @C_ID, @C_STRPR, @C_STRPR/@KURZ, @id_meny, @IDKURZ, @IDDAVKA, @IDVZOREC, @MAX_ID, @CNTC);
						SET @C_VYRNA = @C_VYRNA + @C_STRPR;
						--PRINT N''Ceny - uloženo: ''+@C_NAME+'' = ''+CAST(@C_STRPR as varchar(12));
					END
				IF @C_NAME Like ''%OstSluzbC%''
					BEGIN
						SET @C_OSTSL = @N_OSTPN * (1 + @R_PON);
						INSERT INTO dbo.ceny(id_nabidky, id_produkty, id_typy_cen, hodnota, hodnota_cm, id_meny, id_kurzy, id_pocty, id_vzorec, id, aktivni)
									VALUES (@nabidka_id, @product_id, @C_ID, @C_OSTSL, @C_OSTSL/@KURZ, @id_meny, @IDKURZ, @IDDAVKA, @IDVZOREC, @MAX_ID, @CNTC);
						SET @C_VYRNA = @C_VYRNA + @C_OSTSL;
						--PRINT N''Ceny - uloženo: ''+@C_NAME+'' = ''+CAST(@C_OSTSL as varchar(12));
					END
				IF @C_NAME Like ''%VyrobniC%''
					BEGIN
						INSERT INTO dbo.ceny(id_nabidky, id_produkty, id_typy_cen, hodnota, hodnota_cm, id_meny, id_kurzy, id_pocty, id_vzorec, id, aktivni)
									VALUES (@nabidka_id, @product_id, @C_ID, @C_VYRNA, @C_VYRNA/@KURZ, @id_meny, @IDKURZ, @IDDAVKA, @IDVZOREC, @MAX_ID, @CNTC);
						--PRINT N''Ceny - uloženo: ''+@C_NAME+'' = ''+CAST(@C_OSTSL as varchar(12));
					END
				IF @C_NAME Like ''%SprvRezie%''
					BEGIN
						SET @C_SPRRE = @C_VYRNA * @R_SPR;
						INSERT INTO dbo.ceny(id_nabidky, id_produkty, id_typy_cen, hodnota, hodnota_cm, id_meny, id_kurzy, id_pocty, id_vzorec, id, aktivni)
									VALUES (@nabidka_id, @product_id, @C_ID, @C_SPRRE, @C_SPRRE/@KURZ, @id_meny, @IDKURZ, @IDDAVKA, @IDVZOREC, @MAX_ID, @CNTC);
						--PRINT N''Ceny - uloženo: ''+@C_NAME+'' = ''+CAST(@C_SPRRE as varchar(12));
					END
				IF @C_NAME Like ''%Zisk%''
					BEGIN
						SET @C_ZISK = (@C_VYRNA + @C_SPRRE) * @R_ZIS;
						INSERT INTO dbo.ceny(id_nabidky, id_produkty, id_typy_cen, hodnota, hodnota_cm, id_meny, id_kurzy, id_pocty, id_vzorec, id, aktivni)
									VALUES (@nabidka_id, @product_id, @C_ID, @C_ZISK, @C_ZISK/@KURZ, @id_meny, @IDKURZ, @IDDAVKA, @IDVZOREC, @MAX_ID, @CNTC);
						--PRINT N''Ceny - uloženo: ''+@C_NAME+'' = ''+CAST(@C_ZISK as varchar(12));
					END
				IF @C_NAME Like ''%ProdCenaP%''
					BEGIN
						SET @C_PRODC = @C_VYRNA + @C_SPRRE + @C_ZISK;
						INSERT INTO dbo.ceny(id_nabidky, id_produkty, id_typy_cen, hodnota, hodnota_cm, id_meny, id_kurzy, id_pocty, id_vzorec, id, aktivni)
									VALUES (@nabidka_id, @product_id, @C_ID, @C_PRODC, @C_PRODC/@KURZ, @id_meny, @IDKURZ, @IDDAVKA, @IDVZOREC, @MAX_ID, @CNTC);
						--PRINT N''Ceny - uloženo: ''+@C_NAME+'' = ''+CAST(@C_PRODC as varchar(12));
					END
				IF @C_NAME Like ''%CenaNab%''
					BEGIN
						SET @C_NABC = CEILING(@C_PRODC);
						INSERT INTO dbo.ceny(id_nabidky, id_produkty, id_typy_cen, hodnota, hodnota_cm, id_meny, id_kurzy, id_pocty, id_vzorec, id, aktivni)
									VALUES (@nabidka_id, @product_id, @C_ID, @C_NABC, @C_NABC/@KURZ, @id_meny, @IDKURZ, @IDDAVKA, @IDVZOREC, @MAX_ID, @CNTC);
						--PRINT N''Ceny - uloženo: ''+@C_NAME+'' = ''+CAST(@C_PRODC as varchar(12));
					END
				IF @C_NAME Like ''%JednorazC%''
					BEGIN
						SET @C_JEDNC = @N_JEDNN * (1 + @R_PJN);
						INSERT INTO dbo.ceny(id_nabidky, id_produkty, id_typy_cen, hodnota, hodnota_cm, id_meny, id_kurzy, id_pocty, id_vzorec, id, aktivni)
									VALUES (@nabidka_id, @product_id, @C_ID, @C_JEDNC, @C_JEDNC/@KURZ, @id_meny, @IDKURZ, @IDDAVKA, @IDVZOREC, @MAX_ID, @CNTC);
						--PRINT N''Ceny - uloženo: ''+@C_NAME+'' = ''+CAST(@C_JEDNC as varchar(12));
					END


				-- další typ ceny
			   FETCH NEXT FROM c_tcen
					INTO @C_ID, @C_NAME;
			END

			CLOSE c_tcen;
			DEALLOCATE c_tcen;

		END TRY
		BEGIN CATCH
			SELECT
				ERROR_NUMBER() AS ErrorNumber
				,ERROR_SEVERITY() AS ErrorSeverity
				,ERROR_STATE() AS ErrorState
				,ERROR_PROCEDURE() AS ErrorProcedure
				,ERROR_LINE() AS ErrorLine
				,ERROR_MESSAGE() AS ErrorMessage;

			IF @@TRANCOUNT > 0
				ROLLBACK TRANSACTION sum_ceny;
				-- nepovedlo se to - moc chyb
				RETURN 0;
		END CATCH;

	IF @@TRANCOUNT > 0
		COMMIT TRANSACTION sum_ceny;
	RETURN 1;
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[copyOffer]    Script Date: 01/25/2013 16:12:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[copyOffer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[copyOffer]
	-- Zkopíruje nabidku pod jiným ID
	@nabidka_id int,
	@user_id int,
	@ret_id int OUTPUT
AS

BEGIN

    SET NOCOUNT ON;

	DECLARE 
			@new_nabidka int,
			@new_produkt int,
			@old_produkt int,
			@new_material int,
			@old_material int,
			@new_operace int,
			@old_operace int,
			@mnoz decimal(10,2),
			@C_stat int;



	BEGIN TRANSACTION copy_nab;

		BEGIN TRY
		
			-- Vytvoření kopie nabídky dle @nabidka_id
			INSERT INTO nabidky (prij_datum, pozad_datum, popis, poznamka, id_set_sazeb, id_set_sazeb_o, id_firmy, folder)
				SELECT GETDATE() [prij_datum], null [pozad_datum], ''KOPIE [''+RTRIM(CAST(id as nchar(10)))+'']: ''+CAST(popis as nvarchar(255)) [popis], 
						poznamka, id_set_sazeb, id_set_sazeb_o, id_firmy, folder
					FROM nabidky WHERE id = @nabidka_id;
			SELECT @new_nabidka = SCOPE_IDENTITY();
			
			IF @new_nabidka>0 OR @new_nabidka is not null
			BEGIN
				-- Vložíme status o nabídce
				INSERT INTO stav_nabidka (id_nabidky, id_stav, id_user, datum_zmeny)
						VALUES (@new_nabidka, 1, @user_id, GETDATE());
						-- nabidka založena

				-- Deklarace cursoru pro načtení seznamu produktů přiřazených k nabídce
				SELECT @C_stat = CURSOR_STATUS(''global'',''c_prods'');	-- zjištění statusu kurzoru
				IF @C_stat > -2										-- existuje-li kurzor
					BEGIN
						IF @C_stat > -1 CLOSE c_prods;				-- je-li kurzor otevřen, zevřeme ho
						DEALLOCATE c_prods;							-- odstraníme kurzor
					END
				IF @C_stat = -3
					BEGIN
						DECLARE c_prods CURSOR FOR
							 SELECT DISTINCT id_produkty FROM ceny WHERE id_nabidky = @nabidka_id;
					END



				--- Vkládání nových produktů

				OPEN c_prods;

				FETCH NEXT FROM c_prods
					INTO @old_produkt;

				WHILE @@FETCH_STATUS = 0
				BEGIN
					-- Vytvoření kopie produktu dle @old_produkt
					INSERT INTO produkty (zkratka, nazev, popis, id_firmy)
						SELECT zkratka, ''KOPIE [''+RTRIM(CAST(id as nchar(10)))+'']: ''+nazev [nazev], 
								popis, id_firmy
							FROM produkty WHERE id = @old_produkt;
					SELECT @new_produkt = SCOPE_IDENTITY();

					IF @new_produkt>0 OR @new_produkt is not null
					BEGIN
						-- Deklarace cursoru pro načtení seznamu materiálů přivazbených k produktu
						SELECT @C_stat = CURSOR_STATUS(''global'',''c_mats'');	-- zjištění statusu kurzoru
						IF @C_stat > -2										-- existuje-li kurzor
							BEGIN
								IF @C_stat > -1 CLOSE c_mats;				-- je-li kurzor otevřen, zevřeme ho
								DEALLOCATE c_mats;							-- odstraníme kurzor
							END
						IF @C_stat = -3
							BEGIN
								DECLARE c_mats CURSOR FOR
									 SELECT DISTINCT id_material, mnozstvi
										FROM vazby
										WHERE id_vyssi=@old_produkt and id_material is not null
							END

						--- Vkládání nových materialu

						OPEN c_mats;

						FETCH NEXT FROM c_mats
							INTO @old_material, @mnoz;

						WHILE @@FETCH_STATUS = 0
						BEGIN
							-- Vytvoření kopie materiálu dle @old_material
							INSERT INTO material (zkratka, nazev, cena_kc, cena_cm, id_k2, id_merne_jednotky, id_meny, id_kurzy)
								SELECT zkratka, nazev, cena_kc, cena_cm, id_k2, id_merne_jednotky, id_meny, id_kurzy 
									FROM material WHERE id = @old_material;
							SELECT @new_material = SCOPE_IDENTITY();

							IF @new_material>0 OR @new_material is not null
							BEGIN
								-- Vloženi vazby s novým materiálem na novým produktem
								INSERT INTO vazby (id_vyssi, id_material, mnozstvi)
										VALUES (@new_produkt, @new_material, @mnoz);
							END
							
							-- další material
							FETCH NEXT FROM c_mats
								INTO @old_material, @mnoz;
						END
						CLOSE c_mats;
						DEALLOCATE c_mats;			
									

						-- Deklarace cursoru pro načtení seznamu operaci přivazbených k produktu
						SELECT @C_stat = CURSOR_STATUS(''global'',''c_opers'');	-- zjištění statusu kurzoru
						IF @C_stat > -2										-- existuje-li kurzor
							BEGIN
								IF @C_stat > -1 CLOSE c_opers;				-- je-li kurzor otevřen, zevřeme ho
								DEALLOCATE c_opers;							-- odstraníme kurzor
							END
						IF @C_stat = -3
							BEGIN
								DECLARE c_opers CURSOR FOR
									 SELECT DISTINCT id_operace, mnozstvi
										FROM vazby
										WHERE id_vyssi=@old_produkt and id_operace is not null
							END

						--- Vkládání nových operaci

						OPEN c_opers;

						FETCH NEXT FROM c_opers
							INTO @old_operace, @mnoz;

						WHILE @@FETCH_STATUS = 0
						BEGIN
							-- Vytvoření kopie operace dle @old_operace
							INSERT INTO operace (popis, ta_cas, tp_cas, naklad, id_typy_operaci)
								SELECT popis, ta_cas, tp_cas, naklad, id_typy_operaci 
									FROM operace WHERE id = @old_operace;
							SELECT @new_operace = SCOPE_IDENTITY();

							IF @new_operace>0 OR @new_operace is not null
							BEGIN
								-- Vložení vazby s novým materiálem na novým produktem
								INSERT INTO vazby (id_vyssi, id_operace, mnozstvi)
										VALUES (@new_produkt, @new_operace, @mnoz);
							END
							
							-- další operace
							FETCH NEXT FROM c_opers
								INTO @old_operace, @mnoz;
						END
						CLOSE c_opers;
						DEALLOCATE c_opers;			
			
					END
					
					-- Vložíme status o produktu
					INSERT INTO stav_produkt (id_produkty, id_stav, id_user, datum_zmeny)
							VALUES (@new_produkt, 3, @user_id, GETDATE());
							-- čekání na ceny materiálu
					INSERT INTO stav_produkt (id_produkty, id_stav, id_user, datum_zmeny)
							VALUES (@new_produkt, 4, @user_id, GETDATE());
							-- TPV zahájeno
							
					-- Nakonec vložíme vazbu mezi produktem a nabídkou do tabulky ceny
					INSERT INTO ceny (id_nabidky, id_produkty, id_typy_cen, id_meny)
							VALUES (@new_nabidka, @new_produkt, 1, 1);

					-- další produkt
					FETCH NEXT FROM c_prods
						INTO @old_produkt;
				END
				CLOSE c_prods;
				DEALLOCATE c_prods;	
						
				-- Vložíme status o nabídce
				INSERT INTO stav_nabidka (id_nabidky, id_stav, id_user, datum_zmeny)
						VALUES (@new_nabidka, 2, @user_id, GETDATE());
						-- nabidka rozpracována
						
				SET @ret_id = @new_nabidka;
				
			END			

		END TRY
		
		BEGIN CATCH
			SELECT
				ERROR_NUMBER() AS ErrorNumber
				,ERROR_SEVERITY() AS ErrorSeverity
				,ERROR_STATE() AS ErrorState
				,ERROR_PROCEDURE() AS ErrorProcedure
				,ERROR_LINE() AS ErrorLine
				,ERROR_MESSAGE() AS ErrorMessage;

			IF @@TRANCOUNT > 0
				ROLLBACK TRANSACTION copy_nab;
				-- nepovedlo se to - moc chyb
				RETURN 0;
		END CATCH;

	IF @@TRANCOUNT > 0
		COMMIT TRANSACTION copy_nab;
	RETURN @ret_id;
END' 
END
GO
/****** Object:  ForeignKey [fk_kraje]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_kraje]') AND parent_object_id = OBJECT_ID(N'[dbo].[adresy]'))
ALTER TABLE [dbo].[adresy]  WITH CHECK ADD  CONSTRAINT [fk_kraje] FOREIGN KEY([id_kraje])
REFERENCES [dbo].[kraje] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_kraje]') AND parent_object_id = OBJECT_ID(N'[dbo].[adresy]'))
ALTER TABLE [dbo].[adresy] CHECK CONSTRAINT [fk_kraje]
GO
/****** Object:  ForeignKey [fk_obce]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_obce]') AND parent_object_id = OBJECT_ID(N'[dbo].[adresy]'))
ALTER TABLE [dbo].[adresy]  WITH CHECK ADD  CONSTRAINT [fk_obce] FOREIGN KEY([id_obce])
REFERENCES [dbo].[obce] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_obce]') AND parent_object_id = OBJECT_ID(N'[dbo].[adresy]'))
ALTER TABLE [dbo].[adresy] CHECK CONSTRAINT [fk_obce]
GO
/****** Object:  ForeignKey [fk_staty]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_staty]') AND parent_object_id = OBJECT_ID(N'[dbo].[adresy]'))
ALTER TABLE [dbo].[adresy]  WITH CHECK ADD  CONSTRAINT [fk_staty] FOREIGN KEY([id_staty])
REFERENCES [dbo].[staty] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_staty]') AND parent_object_id = OBJECT_ID(N'[dbo].[adresy]'))
ALTER TABLE [dbo].[adresy] CHECK CONSTRAINT [fk_staty]
GO
/****** Object:  ForeignKey [FK_atr_casu_oper]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_atr_casu_oper]') AND parent_object_id = OBJECT_ID(N'[dbo].[atr_operaci]'))
ALTER TABLE [dbo].[atr_operaci]  WITH CHECK ADD  CONSTRAINT [FK_atr_casu_oper] FOREIGN KEY([id_atr_casu])
REFERENCES [dbo].[atr_casu] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_atr_casu_oper]') AND parent_object_id = OBJECT_ID(N'[dbo].[atr_operaci]'))
ALTER TABLE [dbo].[atr_operaci] CHECK CONSTRAINT [FK_atr_casu_oper]
GO
/****** Object:  ForeignKey [FK_operace]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_operace]') AND parent_object_id = OBJECT_ID(N'[dbo].[atr_operaci]'))
ALTER TABLE [dbo].[atr_operaci]  WITH CHECK ADD  CONSTRAINT [FK_operace] FOREIGN KEY([id_operace])
REFERENCES [dbo].[operace] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_operace]') AND parent_object_id = OBJECT_ID(N'[dbo].[atr_operaci]'))
ALTER TABLE [dbo].[atr_operaci] CHECK CONSTRAINT [FK_operace]
GO
/****** Object:  ForeignKey [FK_produkty]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_produkty]') AND parent_object_id = OBJECT_ID(N'[dbo].[atr_operaci]'))
ALTER TABLE [dbo].[atr_operaci]  WITH CHECK ADD  CONSTRAINT [FK_produkty] FOREIGN KEY([id_produktu])
REFERENCES [dbo].[produkty] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_produkty]') AND parent_object_id = OBJECT_ID(N'[dbo].[atr_operaci]'))
ALTER TABLE [dbo].[atr_operaci] CHECK CONSTRAINT [FK_produkty]
GO
/****** Object:  ForeignKey [FK_atr_casu]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_atr_casu]') AND parent_object_id = OBJECT_ID(N'[dbo].[atr_typy_oper]'))
ALTER TABLE [dbo].[atr_typy_oper]  WITH CHECK ADD  CONSTRAINT [FK_atr_casu] FOREIGN KEY([id_atr_casu])
REFERENCES [dbo].[atr_casu] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_atr_casu]') AND parent_object_id = OBJECT_ID(N'[dbo].[atr_typy_oper]'))
ALTER TABLE [dbo].[atr_typy_oper] CHECK CONSTRAINT [FK_atr_casu]
GO
/****** Object:  ForeignKey [FK_typy_operaci]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_typy_operaci]') AND parent_object_id = OBJECT_ID(N'[dbo].[atr_typy_oper]'))
ALTER TABLE [dbo].[atr_typy_oper]  WITH CHECK ADD  CONSTRAINT [FK_typy_operaci] FOREIGN KEY([id_typy_operaci])
REFERENCES [dbo].[typy_operaci] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_typy_operaci]') AND parent_object_id = OBJECT_ID(N'[dbo].[atr_typy_oper]'))
ALTER TABLE [dbo].[atr_typy_oper] CHECK CONSTRAINT [FK_typy_operaci]
GO
/****** Object:  ForeignKey [fk_kurzy1]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_kurzy1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ceny]'))
ALTER TABLE [dbo].[ceny]  WITH CHECK ADD  CONSTRAINT [fk_kurzy1] FOREIGN KEY([id_kurzy])
REFERENCES [dbo].[kurzy] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_kurzy1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ceny]'))
ALTER TABLE [dbo].[ceny] CHECK CONSTRAINT [fk_kurzy1]
GO
/****** Object:  ForeignKey [fk_meny2]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_meny2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ceny]'))
ALTER TABLE [dbo].[ceny]  WITH CHECK ADD  CONSTRAINT [fk_meny2] FOREIGN KEY([id_meny])
REFERENCES [dbo].[meny] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_meny2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ceny]'))
ALTER TABLE [dbo].[ceny] CHECK CONSTRAINT [fk_meny2]
GO
/****** Object:  ForeignKey [fk_pocty]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_pocty]') AND parent_object_id = OBJECT_ID(N'[dbo].[ceny]'))
ALTER TABLE [dbo].[ceny]  WITH CHECK ADD  CONSTRAINT [fk_pocty] FOREIGN KEY([id_pocty])
REFERENCES [dbo].[pocty] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_pocty]') AND parent_object_id = OBJECT_ID(N'[dbo].[ceny]'))
ALTER TABLE [dbo].[ceny] CHECK CONSTRAINT [fk_pocty]
GO
/****** Object:  ForeignKey [fk_typy_cen1]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_typy_cen1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ceny]'))
ALTER TABLE [dbo].[ceny]  WITH CHECK ADD  CONSTRAINT [fk_typy_cen1] FOREIGN KEY([id_typy_cen])
REFERENCES [dbo].[typy_cen] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_typy_cen1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ceny]'))
ALTER TABLE [dbo].[ceny] CHECK CONSTRAINT [fk_typy_cen1]
GO
/****** Object:  ForeignKey [fk_adresy]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_adresy]') AND parent_object_id = OBJECT_ID(N'[dbo].[firmy]'))
ALTER TABLE [dbo].[firmy]  WITH CHECK ADD  CONSTRAINT [fk_adresy] FOREIGN KEY([id_adresy])
REFERENCES [dbo].[adresy] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_adresy]') AND parent_object_id = OBJECT_ID(N'[dbo].[firmy]'))
ALTER TABLE [dbo].[firmy] CHECK CONSTRAINT [fk_adresy]
GO
/****** Object:  ForeignKey [fk_druhy_firem]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_druhy_firem]') AND parent_object_id = OBJECT_ID(N'[dbo].[firmy]'))
ALTER TABLE [dbo].[firmy]  WITH CHECK ADD  CONSTRAINT [fk_druhy_firem] FOREIGN KEY([id_druhy_firem])
REFERENCES [dbo].[druhy_firem] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_druhy_firem]') AND parent_object_id = OBJECT_ID(N'[dbo].[firmy]'))
ALTER TABLE [dbo].[firmy] CHECK CONSTRAINT [fk_druhy_firem]
GO
/****** Object:  ForeignKey [fk_firmy2]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_firmy2]') AND parent_object_id = OBJECT_ID(N'[dbo].[kontakty]'))
ALTER TABLE [dbo].[kontakty]  WITH CHECK ADD  CONSTRAINT [fk_firmy2] FOREIGN KEY([id_firmy])
REFERENCES [dbo].[firmy] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_firmy2]') AND parent_object_id = OBJECT_ID(N'[dbo].[kontakty]'))
ALTER TABLE [dbo].[kontakty] CHECK CONSTRAINT [fk_firmy2]
GO
/****** Object:  ForeignKey [fk_osoby4]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_osoby4]') AND parent_object_id = OBJECT_ID(N'[dbo].[kontakty]'))
ALTER TABLE [dbo].[kontakty]  WITH CHECK ADD  CONSTRAINT [fk_osoby4] FOREIGN KEY([id_osoby])
REFERENCES [dbo].[osoby] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_osoby4]') AND parent_object_id = OBJECT_ID(N'[dbo].[kontakty]'))
ALTER TABLE [dbo].[kontakty] CHECK CONSTRAINT [fk_osoby4]
GO
/****** Object:  ForeignKey [fk_typy_kontaktu]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_typy_kontaktu]') AND parent_object_id = OBJECT_ID(N'[dbo].[kontakty]'))
ALTER TABLE [dbo].[kontakty]  WITH CHECK ADD  CONSTRAINT [fk_typy_kontaktu] FOREIGN KEY([id_typy_kontaktu])
REFERENCES [dbo].[typy_kontaktu] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_typy_kontaktu]') AND parent_object_id = OBJECT_ID(N'[dbo].[kontakty]'))
ALTER TABLE [dbo].[kontakty] CHECK CONSTRAINT [fk_typy_kontaktu]
GO
/****** Object:  ForeignKey [fk_meny1]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_meny1]') AND parent_object_id = OBJECT_ID(N'[dbo].[kurzy]'))
ALTER TABLE [dbo].[kurzy]  WITH CHECK ADD  CONSTRAINT [fk_meny1] FOREIGN KEY([id_meny])
REFERENCES [dbo].[meny] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_meny1]') AND parent_object_id = OBJECT_ID(N'[dbo].[kurzy]'))
ALTER TABLE [dbo].[kurzy] CHECK CONSTRAINT [fk_meny1]
GO
/****** Object:  ForeignKey [fk_kurzy2]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_kurzy2]') AND parent_object_id = OBJECT_ID(N'[dbo].[material]'))
ALTER TABLE [dbo].[material]  WITH CHECK ADD  CONSTRAINT [fk_kurzy2] FOREIGN KEY([id_kurzy])
REFERENCES [dbo].[kurzy] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_kurzy2]') AND parent_object_id = OBJECT_ID(N'[dbo].[material]'))
ALTER TABLE [dbo].[material] CHECK CONSTRAINT [fk_kurzy2]
GO
/****** Object:  ForeignKey [fk_meny3]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_meny3]') AND parent_object_id = OBJECT_ID(N'[dbo].[material]'))
ALTER TABLE [dbo].[material]  WITH CHECK ADD  CONSTRAINT [fk_meny3] FOREIGN KEY([id_meny])
REFERENCES [dbo].[meny] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_meny3]') AND parent_object_id = OBJECT_ID(N'[dbo].[material]'))
ALTER TABLE [dbo].[material] CHECK CONSTRAINT [fk_meny3]
GO
/****** Object:  ForeignKey [fk_merne_jednotky]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_merne_jednotky]') AND parent_object_id = OBJECT_ID(N'[dbo].[material]'))
ALTER TABLE [dbo].[material]  WITH CHECK ADD  CONSTRAINT [fk_merne_jednotky] FOREIGN KEY([id_merne_jednotky])
REFERENCES [dbo].[merne_jednotky] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_merne_jednotky]') AND parent_object_id = OBJECT_ID(N'[dbo].[material]'))
ALTER TABLE [dbo].[material] CHECK CONSTRAINT [fk_merne_jednotky]
GO
/****** Object:  ForeignKey [fk_firmy3]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_firmy3]') AND parent_object_id = OBJECT_ID(N'[dbo].[nabidky]'))
ALTER TABLE [dbo].[nabidky]  WITH CHECK ADD  CONSTRAINT [fk_firmy3] FOREIGN KEY([id_firmy])
REFERENCES [dbo].[firmy] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_firmy3]') AND parent_object_id = OBJECT_ID(N'[dbo].[nabidky]'))
ALTER TABLE [dbo].[nabidky] CHECK CONSTRAINT [fk_firmy3]
GO
/****** Object:  ForeignKey [fk_set_o2]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_set_o2]') AND parent_object_id = OBJECT_ID(N'[dbo].[nabidky]'))
ALTER TABLE [dbo].[nabidky]  WITH CHECK ADD  CONSTRAINT [fk_set_o2] FOREIGN KEY([id_set_sazeb_o])
REFERENCES [dbo].[set_sazeb_o] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_set_o2]') AND parent_object_id = OBJECT_ID(N'[dbo].[nabidky]'))
ALTER TABLE [dbo].[nabidky] CHECK CONSTRAINT [fk_set_o2]
GO
/****** Object:  ForeignKey [fk_set_sazeb2]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_set_sazeb2]') AND parent_object_id = OBJECT_ID(N'[dbo].[nabidky]'))
ALTER TABLE [dbo].[nabidky]  WITH CHECK ADD  CONSTRAINT [fk_set_sazeb2] FOREIGN KEY([id_set_sazeb])
REFERENCES [dbo].[set_sazeb] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_set_sazeb2]') AND parent_object_id = OBJECT_ID(N'[dbo].[nabidky]'))
ALTER TABLE [dbo].[nabidky] CHECK CONSTRAINT [fk_set_sazeb2]
GO
/****** Object:  ForeignKey [fk_produkty1]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_produkty1]') AND parent_object_id = OBJECT_ID(N'[dbo].[naklady]'))
ALTER TABLE [dbo].[naklady]  WITH CHECK ADD  CONSTRAINT [fk_produkty1] FOREIGN KEY([id_produkty])
REFERENCES [dbo].[produkty] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_produkty1]') AND parent_object_id = OBJECT_ID(N'[dbo].[naklady]'))
ALTER TABLE [dbo].[naklady] CHECK CONSTRAINT [fk_produkty1]
GO
/****** Object:  ForeignKey [fk_typy_nakladu]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_typy_nakladu]') AND parent_object_id = OBJECT_ID(N'[dbo].[naklady]'))
ALTER TABLE [dbo].[naklady]  WITH CHECK ADD  CONSTRAINT [fk_typy_nakladu] FOREIGN KEY([id_typy_nakladu])
REFERENCES [dbo].[typy_nakladu] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_typy_nakladu]') AND parent_object_id = OBJECT_ID(N'[dbo].[naklady]'))
ALTER TABLE [dbo].[naklady] CHECK CONSTRAINT [fk_typy_nakladu]
GO
/****** Object:  ForeignKey [fk_typy_operaci2]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_typy_operaci2]') AND parent_object_id = OBJECT_ID(N'[dbo].[operace]'))
ALTER TABLE [dbo].[operace]  WITH CHECK ADD  CONSTRAINT [fk_typy_operaci2] FOREIGN KEY([id_typy_operaci])
REFERENCES [dbo].[typy_operaci] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_typy_operaci2]') AND parent_object_id = OBJECT_ID(N'[dbo].[operace]'))
ALTER TABLE [dbo].[operace] CHECK CONSTRAINT [fk_typy_operaci2]
GO
/****** Object:  ForeignKey [fk_firmy1]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_firmy1]') AND parent_object_id = OBJECT_ID(N'[dbo].[osoby]'))
ALTER TABLE [dbo].[osoby]  WITH CHECK ADD  CONSTRAINT [fk_firmy1] FOREIGN KEY([id_firmy])
REFERENCES [dbo].[firmy] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_firmy1]') AND parent_object_id = OBJECT_ID(N'[dbo].[osoby]'))
ALTER TABLE [dbo].[osoby] CHECK CONSTRAINT [fk_firmy1]
GO
/****** Object:  ForeignKey [fk_osloveni]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_osloveni]') AND parent_object_id = OBJECT_ID(N'[dbo].[osoby]'))
ALTER TABLE [dbo].[osoby]  WITH CHECK ADD  CONSTRAINT [fk_osloveni] FOREIGN KEY([id_osloveni])
REFERENCES [dbo].[osloveni] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_osloveni]') AND parent_object_id = OBJECT_ID(N'[dbo].[osoby]'))
ALTER TABLE [dbo].[osoby] CHECK CONSTRAINT [fk_osloveni]
GO
/****** Object:  ForeignKey [fk_nabidky3]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_nabidky3]') AND parent_object_id = OBJECT_ID(N'[dbo].[pocty]'))
ALTER TABLE [dbo].[pocty]  WITH CHECK ADD  CONSTRAINT [fk_nabidky3] FOREIGN KEY([id_nabidky])
REFERENCES [dbo].[nabidky] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_nabidky3]') AND parent_object_id = OBJECT_ID(N'[dbo].[pocty]'))
ALTER TABLE [dbo].[pocty] CHECK CONSTRAINT [fk_nabidky3]
GO
/****** Object:  ForeignKey [fk_produkty6]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_produkty6]') AND parent_object_id = OBJECT_ID(N'[dbo].[pocty]'))
ALTER TABLE [dbo].[pocty]  WITH CHECK ADD  CONSTRAINT [fk_produkty6] FOREIGN KEY([id_produkty])
REFERENCES [dbo].[produkty] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_produkty6]') AND parent_object_id = OBJECT_ID(N'[dbo].[pocty]'))
ALTER TABLE [dbo].[pocty] CHECK CONSTRAINT [fk_produkty6]
GO
/****** Object:  ForeignKey [FK_prava_permission]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_prava_permission]') AND parent_object_id = OBJECT_ID(N'[dbo].[prava]'))
ALTER TABLE [dbo].[prava]  WITH CHECK ADD  CONSTRAINT [FK_prava_permission] FOREIGN KEY([id_permission])
REFERENCES [dbo].[permission] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_prava_permission]') AND parent_object_id = OBJECT_ID(N'[dbo].[prava]'))
ALTER TABLE [dbo].[prava] CHECK CONSTRAINT [FK_prava_permission]
GO
/****** Object:  ForeignKey [FK_prava_role]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_prava_role]') AND parent_object_id = OBJECT_ID(N'[dbo].[prava]'))
ALTER TABLE [dbo].[prava]  WITH CHECK ADD  CONSTRAINT [FK_prava_role] FOREIGN KEY([id_role])
REFERENCES [dbo].[role] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_prava_role]') AND parent_object_id = OBJECT_ID(N'[dbo].[prava]'))
ALTER TABLE [dbo].[prava] CHECK CONSTRAINT [FK_prava_role]
GO
/****** Object:  ForeignKey [fk_firmy4]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_firmy4]') AND parent_object_id = OBJECT_ID(N'[dbo].[produkty]'))
ALTER TABLE [dbo].[produkty]  WITH CHECK ADD  CONSTRAINT [fk_firmy4] FOREIGN KEY([id_firmy])
REFERENCES [dbo].[firmy] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_firmy4]') AND parent_object_id = OBJECT_ID(N'[dbo].[produkty]'))
ALTER TABLE [dbo].[produkty] CHECK CONSTRAINT [fk_firmy4]
GO
/****** Object:  ForeignKey [fk_set1]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_set1]') AND parent_object_id = OBJECT_ID(N'[dbo].[sazby]'))
ALTER TABLE [dbo].[sazby]  WITH CHECK ADD  CONSTRAINT [fk_set1] FOREIGN KEY([id_set_sazeb])
REFERENCES [dbo].[set_sazeb] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_set1]') AND parent_object_id = OBJECT_ID(N'[dbo].[sazby]'))
ALTER TABLE [dbo].[sazby] CHECK CONSTRAINT [fk_set1]
GO
/****** Object:  ForeignKey [fk_typy_sazeb]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_typy_sazeb]') AND parent_object_id = OBJECT_ID(N'[dbo].[sazby]'))
ALTER TABLE [dbo].[sazby]  WITH CHECK ADD  CONSTRAINT [fk_typy_sazeb] FOREIGN KEY([id_typy_sazeb])
REFERENCES [dbo].[typy_sazeb] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_typy_sazeb]') AND parent_object_id = OBJECT_ID(N'[dbo].[sazby]'))
ALTER TABLE [dbo].[sazby] CHECK CONSTRAINT [fk_typy_sazeb]
GO
/****** Object:  ForeignKey [fk_set_o1]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_set_o1]') AND parent_object_id = OBJECT_ID(N'[dbo].[sazby_o]'))
ALTER TABLE [dbo].[sazby_o]  WITH CHECK ADD  CONSTRAINT [fk_set_o1] FOREIGN KEY([id_set_sazeb_o])
REFERENCES [dbo].[set_sazeb_o] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_set_o1]') AND parent_object_id = OBJECT_ID(N'[dbo].[sazby_o]'))
ALTER TABLE [dbo].[sazby_o] CHECK CONSTRAINT [fk_set_o1]
GO
/****** Object:  ForeignKey [fk_typy_operaci1]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_typy_operaci1]') AND parent_object_id = OBJECT_ID(N'[dbo].[sazby_o]'))
ALTER TABLE [dbo].[sazby_o]  WITH CHECK ADD  CONSTRAINT [fk_typy_operaci1] FOREIGN KEY([id_typy_operaci])
REFERENCES [dbo].[typy_operaci] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_typy_operaci1]') AND parent_object_id = OBJECT_ID(N'[dbo].[sazby_o]'))
ALTER TABLE [dbo].[sazby_o] CHECK CONSTRAINT [fk_typy_operaci1]
GO
/****** Object:  ForeignKey [FK_set_sazeb_kalkulace]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_set_sazeb_kalkulace]') AND parent_object_id = OBJECT_ID(N'[dbo].[set_sazeb]'))
ALTER TABLE [dbo].[set_sazeb]  WITH CHECK ADD  CONSTRAINT [FK_set_sazeb_kalkulace] FOREIGN KEY([kalkulace])
REFERENCES [dbo].[kalkulace] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_set_sazeb_kalkulace]') AND parent_object_id = OBJECT_ID(N'[dbo].[set_sazeb]'))
ALTER TABLE [dbo].[set_sazeb] CHECK CONSTRAINT [FK_set_sazeb_kalkulace]
GO
/****** Object:  ForeignKey [fk_nabidky1]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_nabidky1]') AND parent_object_id = OBJECT_ID(N'[dbo].[stav_nabidka]'))
ALTER TABLE [dbo].[stav_nabidka]  WITH CHECK ADD  CONSTRAINT [fk_nabidky1] FOREIGN KEY([id_nabidky])
REFERENCES [dbo].[nabidky] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_nabidky1]') AND parent_object_id = OBJECT_ID(N'[dbo].[stav_nabidka]'))
ALTER TABLE [dbo].[stav_nabidka] CHECK CONSTRAINT [fk_nabidky1]
GO
/****** Object:  ForeignKey [fk_stav2]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_stav2]') AND parent_object_id = OBJECT_ID(N'[dbo].[stav_nabidka]'))
ALTER TABLE [dbo].[stav_nabidka]  WITH CHECK ADD  CONSTRAINT [fk_stav2] FOREIGN KEY([id_stav])
REFERENCES [dbo].[stav] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_stav2]') AND parent_object_id = OBJECT_ID(N'[dbo].[stav_nabidka]'))
ALTER TABLE [dbo].[stav_nabidka] CHECK CONSTRAINT [fk_stav2]
GO
/****** Object:  ForeignKey [fk_user2]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_user2]') AND parent_object_id = OBJECT_ID(N'[dbo].[stav_nabidka]'))
ALTER TABLE [dbo].[stav_nabidka]  WITH CHECK ADD  CONSTRAINT [fk_user2] FOREIGN KEY([id_user])
REFERENCES [dbo].[users] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_user2]') AND parent_object_id = OBJECT_ID(N'[dbo].[stav_nabidka]'))
ALTER TABLE [dbo].[stav_nabidka] CHECK CONSTRAINT [fk_user2]
GO
/****** Object:  ForeignKey [fk_produkty4]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_produkty4]') AND parent_object_id = OBJECT_ID(N'[dbo].[stav_produkt]'))
ALTER TABLE [dbo].[stav_produkt]  WITH CHECK ADD  CONSTRAINT [fk_produkty4] FOREIGN KEY([id_produkty])
REFERENCES [dbo].[produkty] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_produkty4]') AND parent_object_id = OBJECT_ID(N'[dbo].[stav_produkt]'))
ALTER TABLE [dbo].[stav_produkt] CHECK CONSTRAINT [fk_produkty4]
GO
/****** Object:  ForeignKey [fk_stav1]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_stav1]') AND parent_object_id = OBJECT_ID(N'[dbo].[stav_produkt]'))
ALTER TABLE [dbo].[stav_produkt]  WITH CHECK ADD  CONSTRAINT [fk_stav1] FOREIGN KEY([id_stav])
REFERENCES [dbo].[stav] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_stav1]') AND parent_object_id = OBJECT_ID(N'[dbo].[stav_produkt]'))
ALTER TABLE [dbo].[stav_produkt] CHECK CONSTRAINT [fk_stav1]
GO
/****** Object:  ForeignKey [fk_user1]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_user1]') AND parent_object_id = OBJECT_ID(N'[dbo].[stav_produkt]'))
ALTER TABLE [dbo].[stav_produkt]  WITH CHECK ADD  CONSTRAINT [fk_user1] FOREIGN KEY([id_user])
REFERENCES [dbo].[users] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_user1]') AND parent_object_id = OBJECT_ID(N'[dbo].[stav_produkt]'))
ALTER TABLE [dbo].[stav_produkt] CHECK CONSTRAINT [fk_user1]
GO
/****** Object:  ForeignKey [fk_role1]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_role1]') AND parent_object_id = OBJECT_ID(N'[dbo].[stav_role]'))
ALTER TABLE [dbo].[stav_role]  WITH CHECK ADD  CONSTRAINT [fk_role1] FOREIGN KEY([id_role])
REFERENCES [dbo].[role] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_role1]') AND parent_object_id = OBJECT_ID(N'[dbo].[stav_role]'))
ALTER TABLE [dbo].[stav_role] CHECK CONSTRAINT [fk_role1]
GO
/****** Object:  ForeignKey [fk_stav3]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_stav3]') AND parent_object_id = OBJECT_ID(N'[dbo].[stav_role]'))
ALTER TABLE [dbo].[stav_role]  WITH CHECK ADD  CONSTRAINT [fk_stav3] FOREIGN KEY([id_stav])
REFERENCES [dbo].[stav] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_stav3]') AND parent_object_id = OBJECT_ID(N'[dbo].[stav_role]'))
ALTER TABLE [dbo].[stav_role] CHECK CONSTRAINT [fk_stav3]
GO
/****** Object:  ForeignKey [fk_druhy_operaci]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_druhy_operaci]') AND parent_object_id = OBJECT_ID(N'[dbo].[typy_operaci]'))
ALTER TABLE [dbo].[typy_operaci]  WITH CHECK ADD  CONSTRAINT [fk_druhy_operaci] FOREIGN KEY([id_druhy_operaci])
REFERENCES [dbo].[druhy_operaci] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_druhy_operaci]') AND parent_object_id = OBJECT_ID(N'[dbo].[typy_operaci]'))
ALTER TABLE [dbo].[typy_operaci] CHECK CONSTRAINT [fk_druhy_operaci]
GO
/****** Object:  ForeignKey [fk_role]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_role]') AND parent_object_id = OBJECT_ID(N'[dbo].[users]'))
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [fk_role] FOREIGN KEY([role])
REFERENCES [dbo].[role] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_role]') AND parent_object_id = OBJECT_ID(N'[dbo].[users]'))
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [fk_role]
GO
/****** Object:  ForeignKey [fk_material1]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_material1]') AND parent_object_id = OBJECT_ID(N'[dbo].[vazby]'))
ALTER TABLE [dbo].[vazby]  WITH CHECK ADD  CONSTRAINT [fk_material1] FOREIGN KEY([id_material])
REFERENCES [dbo].[material] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_material1]') AND parent_object_id = OBJECT_ID(N'[dbo].[vazby]'))
ALTER TABLE [dbo].[vazby] CHECK CONSTRAINT [fk_material1]
GO
/****** Object:  ForeignKey [fk_operace1]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_operace1]') AND parent_object_id = OBJECT_ID(N'[dbo].[vazby]'))
ALTER TABLE [dbo].[vazby]  WITH CHECK ADD  CONSTRAINT [fk_operace1] FOREIGN KEY([id_operace])
REFERENCES [dbo].[operace] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_operace1]') AND parent_object_id = OBJECT_ID(N'[dbo].[vazby]'))
ALTER TABLE [dbo].[vazby] CHECK CONSTRAINT [fk_operace1]
GO
/****** Object:  ForeignKey [fk_produkty2]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_produkty2]') AND parent_object_id = OBJECT_ID(N'[dbo].[vazby]'))
ALTER TABLE [dbo].[vazby]  WITH CHECK ADD  CONSTRAINT [fk_produkty2] FOREIGN KEY([id_nizsi])
REFERENCES [dbo].[produkty] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_produkty2]') AND parent_object_id = OBJECT_ID(N'[dbo].[vazby]'))
ALTER TABLE [dbo].[vazby] CHECK CONSTRAINT [fk_produkty2]
GO
/****** Object:  ForeignKey [fk_produkty3]    Script Date: 01/25/2013 16:12:49 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_produkty3]') AND parent_object_id = OBJECT_ID(N'[dbo].[vazby]'))
ALTER TABLE [dbo].[vazby]  WITH CHECK ADD  CONSTRAINT [fk_produkty3] FOREIGN KEY([id_vyssi])
REFERENCES [dbo].[produkty] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_produkty3]') AND parent_object_id = OBJECT_ID(N'[dbo].[vazby]'))
ALTER TABLE [dbo].[vazby] CHECK CONSTRAINT [fk_produkty3]
GO
