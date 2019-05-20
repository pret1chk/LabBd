USE [Practica5]
GO
/****** Object:  StoredProcedure [dbo].[ubicacionDeAlfonsoReyes]    Script Date: 15/04/2019 01:37:22 p. m. ******/
DROP PROCEDURE [dbo].[ubicacionDeAlfonsoReyes]
GO
/****** Object:  StoredProcedure [dbo].[TodosLosAlumnos]    Script Date: 15/04/2019 01:37:22 p. m. ******/
DROP PROCEDURE [dbo].[TodosLosAlumnos]
GO
/****** Object:  StoredProcedure [dbo].[tallaUniforme2]    Script Date: 15/04/2019 01:37:22 p. m. ******/
DROP PROCEDURE [dbo].[tallaUniforme2]
GO
/****** Object:  StoredProcedure [dbo].[PrecioMenorAdiez]    Script Date: 15/04/2019 01:37:22 p. m. ******/
DROP PROCEDURE [dbo].[PrecioMenorAdiez]
GO
/****** Object:  StoredProcedure [dbo].[pagoesmenora10]    Script Date: 15/04/2019 01:37:22 p. m. ******/
DROP PROCEDURE [dbo].[pagoesmenora10]
GO
/****** Object:  StoredProcedure [dbo].[materiasmayora15]    Script Date: 15/04/2019 01:37:22 p. m. ******/
DROP PROCEDURE [dbo].[materiasmayora15]
GO
/****** Object:  StoredProcedure [dbo].[MaestrosLLamadosWillian]    Script Date: 15/04/2019 01:37:22 p. m. ******/
DROP PROCEDURE [dbo].[MaestrosLLamadosWillian]
GO
/****** Object:  StoredProcedure [dbo].[edicionMayorA30]    Script Date: 15/04/2019 01:37:22 p. m. ******/
DROP PROCEDURE [dbo].[edicionMayorA30]
GO
/****** Object:  StoredProcedure [dbo].[cantidaddeasientos]    Script Date: 15/04/2019 01:37:22 p. m. ******/
DROP PROCEDURE [dbo].[cantidaddeasientos]
GO
/****** Object:  Table [dbo].[TallaUniforme]    Script Date: 15/04/2019 01:37:22 p. m. ******/
DROP TABLE [dbo].[TallaUniforme]
GO
/****** Object:  Table [dbo].[Salones]    Script Date: 15/04/2019 01:37:22 p. m. ******/
DROP TABLE [dbo].[Salones]
GO
/****** Object:  Table [dbo].[Prueba]    Script Date: 15/04/2019 01:37:22 p. m. ******/
DROP TABLE [dbo].[Prueba]
GO
/****** Object:  Table [dbo].[PagosFinalBackup]    Script Date: 15/04/2019 01:37:22 p. m. ******/
DROP TABLE [dbo].[PagosFinalBackup]
GO
/****** Object:  Table [dbo].[PagosDeColegiatura]    Script Date: 15/04/2019 01:37:22 p. m. ******/
DROP TABLE [dbo].[PagosDeColegiatura]
GO
/****** Object:  Table [dbo].[Nomina]    Script Date: 15/04/2019 01:37:22 p. m. ******/
DROP TABLE [dbo].[Nomina]
GO
/****** Object:  Table [dbo].[Materias]    Script Date: 15/04/2019 01:37:22 p. m. ******/
DROP TABLE [dbo].[Materias]
GO
/****** Object:  Table [dbo].[Maestros]    Script Date: 15/04/2019 01:37:22 p. m. ******/
DROP TABLE [dbo].[Maestros]
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 15/04/2019 01:37:22 p. m. ******/
DROP TABLE [dbo].[Libros]
GO
/****** Object:  Table [dbo].[Excursion]    Script Date: 15/04/2019 01:37:22 p. m. ******/
DROP TABLE [dbo].[Excursion]
GO
/****** Object:  Table [dbo].[Edificios]    Script Date: 15/04/2019 01:37:22 p. m. ******/
DROP TABLE [dbo].[Edificios]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 15/04/2019 01:37:22 p. m. ******/
DROP TABLE [dbo].[Alumnos]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 15/04/2019 01:37:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumnos](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[ApellidoPaterno] [varchar](15) NOT NULL,
	[ApellidoMaterno] [varchar](15) NOT NULL,
	[Matricula] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Edificios]    Script Date: 15/04/2019 01:37:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Edificios](
	[Id] [uniqueidentifier] NOT NULL,
	[UbicacionDelEdificio] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Excursion]    Script Date: 15/04/2019 01:37:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Excursion](
	[Nombre] [uniqueidentifier] NOT NULL,
	[fecha] [date] NOT NULL,
	[PrecioPorAlumno] [int] NOT NULL,
	[Hora] [time](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 15/04/2019 01:37:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libros](
	[Codigo] [uniqueidentifier] NOT NULL,
	[Edicion] [int] NOT NULL,
	[FechaDePublicacion] [date] NOT NULL,
	[AñosQueTieneElLibro]  AS (datediff(year,[FechaDePublicacion],getdate())),
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maestros]    Script Date: 15/04/2019 01:37:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maestros](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[ApellidoPaterno] [varchar](15) NOT NULL,
	[ApellidoMaterno] [varchar](15) NOT NULL,
	[FechaDeNacimiento] [date] NOT NULL,
	[Edad]  AS (datediff(year,[FechaDeNacimiento],getdate())),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materias]    Script Date: 15/04/2019 01:37:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materias](
	[Id] [uniqueidentifier] NOT NULL,
	[NombreDeLaMateria] [varchar](50) NOT NULL,
	[GradoDeLaMateria] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nomina]    Script Date: 15/04/2019 01:37:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nomina](
	[NumeroDeEmpleado] [uniqueidentifier] NOT NULL,
	[Horas] [int] NOT NULL,
	[Pago] [money] NOT NULL,
	[Recibo]  AS ([Horas]*[pago]),
PRIMARY KEY CLUSTERED 
(
	[NumeroDeEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PagosDeColegiatura]    Script Date: 15/04/2019 01:37:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagosDeColegiatura](
	[Matricula] [uniqueidentifier] NOT NULL,
	[Inscripcion] [int] NOT NULL,
	[Materias] [int] NOT NULL,
	[Beca] [decimal](18, 0) NOT NULL,
	[PagoFinal]  AS ([Beca]*([Inscripcion]+[Materias])),
PRIMARY KEY CLUSTERED 
(
	[Matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PagosFinalBackup]    Script Date: 15/04/2019 01:37:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagosFinalBackup](
	[Matricula] [uniqueidentifier] NOT NULL,
	[Inscripcion] [int] NOT NULL,
	[Materias] [int] NOT NULL,
	[Beca] [decimal](18, 0) NOT NULL,
	[PagoFinal] [decimal](29, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prueba]    Script Date: 15/04/2019 01:37:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prueba](
	[numero] [nchar](10) NULL,
	[numerodos] [nchar](10) NULL,
	[numerotres] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salones]    Script Date: 15/04/2019 01:37:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salones](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](5) NOT NULL,
	[CantidadDeAsientos] [int] NOT NULL,
	[Ubicacion] [varchar](20) NOT NULL,
	[Descripcion]  AS (([Ubicacion]+'')+[Nombre]),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TallaUniforme]    Script Date: 15/04/2019 01:37:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TallaUniforme](
	[Id] [uniqueidentifier] NOT NULL,
	[UniformeDeportivo] [varchar](5) NOT NULL,
	[UniformeGala] [varchar](5) NOT NULL,
	[PedidosDeUniformes]  AS ([UniformeDeportivo]+[UniformeGala]),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Alumnos] ([Id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Matricula]) VALUES (N'db67aa8f-82ae-4f6d-be18-07b9087439c7', N'Juan', N'Reyna', N'Garza', 1937862)
INSERT [dbo].[Alumnos] ([Id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Matricula]) VALUES (N'1ccdc317-9094-4010-a3f2-10d60efcf279', N'Beto', N'Tamayo', N'cortez', 787458)
INSERT [dbo].[Alumnos] ([Id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Matricula]) VALUES (N'9ea18a1f-d6d9-4530-b87d-1d03cd729d89', N'christian', N'bob', N'trump', 1665486)
INSERT [dbo].[Alumnos] ([Id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Matricula]) VALUES (N'8c1c4a14-a00b-44ad-be2b-2d12f1ce550c', N'santacruz', N'castillo', N'piedra', 5548877)
INSERT [dbo].[Alumnos] ([Id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Matricula]) VALUES (N'f3dddc8f-5af2-491a-9e73-7ec565fd7d78', N'Sarah', N'urbina', N'montalvo', 1488554)
INSERT [dbo].[Alumnos] ([Id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Matricula]) VALUES (N'1dd95e7a-cf8f-497f-b944-8d3ee6c86fa1', N'amy', N'sad', N'garza', 323265)
INSERT [dbo].[Alumnos] ([Id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Matricula]) VALUES (N'f9fae2b5-cd35-4b7b-970e-b350db170ab3', N'Alex', N'montemayor', N'perez', 1548545)
INSERT [dbo].[Alumnos] ([Id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Matricula]) VALUES (N'edfce1e2-d466-4824-86bc-bef61ebafc61', N'Pepe', N'Pica', N'Papas', 151515)
INSERT [dbo].[Alumnos] ([Id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Matricula]) VALUES (N'9090a0bd-7a6d-47cc-b8f8-ddc1b43d528d', N'Roberto', N'Antonio', N'lala', 1616584)
INSERT [dbo].[Alumnos] ([Id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Matricula]) VALUES (N'dfb74d06-0d89-48ca-a6f9-f5878dc79bf8', N'Johnathan', N'zertuche', N'garza', 166554)
INSERT [dbo].[Edificios] ([Id], [UbicacionDelEdificio]) VALUES (N'55facc58-c4b6-492d-aa98-06c7755a0c75', N'PinoZuares')
INSERT [dbo].[Edificios] ([Id], [UbicacionDelEdificio]) VALUES (N'bd12ace1-4973-42fa-b5b7-0fe87d744309', N'LazaroCardenas')
INSERT [dbo].[Edificios] ([Id], [UbicacionDelEdificio]) VALUES (N'6061f1f7-8cee-4a46-8856-268f9ffdfb16', N'PedroDeAlba')
INSERT [dbo].[Edificios] ([Id], [UbicacionDelEdificio]) VALUES (N'88d303e7-5e22-4f22-b62d-368922accc84', N'MoronesPrieto')
INSERT [dbo].[Edificios] ([Id], [UbicacionDelEdificio]) VALUES (N'fabfd061-bdd5-4615-be59-38fc8c7f372d', N'Consitucion')
INSERT [dbo].[Edificios] ([Id], [UbicacionDelEdificio]) VALUES (N'71829273-fd8b-4496-99d1-46eeef02d59f', N'Universidad')
INSERT [dbo].[Edificios] ([Id], [UbicacionDelEdificio]) VALUES (N'91c628b5-28d6-473a-8816-6e89ecea93b6', N'cuahtemoc')
INSERT [dbo].[Edificios] ([Id], [UbicacionDelEdificio]) VALUES (N'0d4c163b-cf94-46c3-bae6-a945c23f868d', N'AlfonsoReyes')
INSERT [dbo].[Edificios] ([Id], [UbicacionDelEdificio]) VALUES (N'f67f8dea-e1c4-41fb-9626-b04ba83d29dd', N'GarzaSada')
INSERT [dbo].[Edificios] ([Id], [UbicacionDelEdificio]) VALUES (N'de14c0cc-362f-4dd5-89ec-c459bc25263e', N'GarzaSada')
INSERT [dbo].[Edificios] ([Id], [UbicacionDelEdificio]) VALUES (N'9cdb922d-0d88-4cdc-8f38-fa3c92157505', N'Barragan')
INSERT [dbo].[Excursion] ([Nombre], [fecha], [PrecioPorAlumno], [Hora]) VALUES (N'97fdc400-138e-4bb8-87ea-08c4e857ace3', CAST(N'2019-03-22' AS Date), 10, CAST(N'14:41:33.5566667' AS Time))
INSERT [dbo].[Excursion] ([Nombre], [fecha], [PrecioPorAlumno], [Hora]) VALUES (N'407173c8-d5d2-4cca-b350-2a1941e13f55', CAST(N'2019-03-22' AS Date), 5, CAST(N'14:41:33.5600000' AS Time))
INSERT [dbo].[Excursion] ([Nombre], [fecha], [PrecioPorAlumno], [Hora]) VALUES (N'345f7819-d613-4348-bf31-8145e803b32a', CAST(N'2019-03-22' AS Date), 5, CAST(N'14:41:33.5566667' AS Time))
INSERT [dbo].[Excursion] ([Nombre], [fecha], [PrecioPorAlumno], [Hora]) VALUES (N'ed3b56e5-9069-4c5d-832f-81757f3d6c63', CAST(N'2019-03-22' AS Date), 87, CAST(N'14:41:33.5600000' AS Time))
INSERT [dbo].[Excursion] ([Nombre], [fecha], [PrecioPorAlumno], [Hora]) VALUES (N'393ac0fc-c49b-4844-ab82-8968637c1017', CAST(N'2019-03-22' AS Date), 23, CAST(N'14:41:33.5566667' AS Time))
INSERT [dbo].[Excursion] ([Nombre], [fecha], [PrecioPorAlumno], [Hora]) VALUES (N'9fd34730-41c6-4a2a-a055-988463373106', CAST(N'2019-03-22' AS Date), 32, CAST(N'14:41:33.5600000' AS Time))
INSERT [dbo].[Excursion] ([Nombre], [fecha], [PrecioPorAlumno], [Hora]) VALUES (N'9d53f510-a4be-44ee-b4ed-abed0f6d7969', CAST(N'2019-03-22' AS Date), 3, CAST(N'14:41:33.5566667' AS Time))
INSERT [dbo].[Excursion] ([Nombre], [fecha], [PrecioPorAlumno], [Hora]) VALUES (N'dac86ccd-cf5c-4555-a511-c61b6800296e', CAST(N'2019-03-22' AS Date), 14, CAST(N'14:41:33.5600000' AS Time))
INSERT [dbo].[Excursion] ([Nombre], [fecha], [PrecioPorAlumno], [Hora]) VALUES (N'f31307be-720b-4262-8eb2-e45884ddbbe5', CAST(N'2019-03-22' AS Date), 2, CAST(N'14:41:33.5566667' AS Time))
INSERT [dbo].[Excursion] ([Nombre], [fecha], [PrecioPorAlumno], [Hora]) VALUES (N'a2be283b-e146-490f-a60f-e7b9e4c318e8', CAST(N'2019-03-22' AS Date), 5, CAST(N'14:39:32.8533333' AS Time))
INSERT [dbo].[Excursion] ([Nombre], [fecha], [PrecioPorAlumno], [Hora]) VALUES (N'84931547-0042-4ab9-bc43-f6e184191624', CAST(N'2019-03-22' AS Date), 45, CAST(N'14:41:33.5600000' AS Time))
INSERT [dbo].[Libros] ([Codigo], [Edicion], [FechaDePublicacion]) VALUES (N'5f04e9c6-d83c-48b8-be6e-2263fc607f6c', 30, CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Libros] ([Codigo], [Edicion], [FechaDePublicacion]) VALUES (N'0e55e23c-7643-4851-93c1-287703961c12', 78, CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Libros] ([Codigo], [Edicion], [FechaDePublicacion]) VALUES (N'51463375-9314-4270-8bc9-56298124d47e', 1, CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Libros] ([Codigo], [Edicion], [FechaDePublicacion]) VALUES (N'594b0941-d974-4a3e-be50-59e88ec7be75', 3, CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Libros] ([Codigo], [Edicion], [FechaDePublicacion]) VALUES (N'211a6f68-bdb1-4142-bbd5-8d4e6bd13634', 7, CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Libros] ([Codigo], [Edicion], [FechaDePublicacion]) VALUES (N'cdaf9045-7968-4c42-8ec2-a370bcf241ee', 6, CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Libros] ([Codigo], [Edicion], [FechaDePublicacion]) VALUES (N'ab8f1f64-e7e7-4837-84f0-b3c249def5c3', 25, CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Libros] ([Codigo], [Edicion], [FechaDePublicacion]) VALUES (N'd1cd9c0d-8028-4c91-8533-caac74edd65d', 17, CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Libros] ([Codigo], [Edicion], [FechaDePublicacion]) VALUES (N'5a6b877f-9b1d-4547-b416-d1a883065d4e', 19, CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Libros] ([Codigo], [Edicion], [FechaDePublicacion]) VALUES (N'3434f846-2dc5-4438-bad7-db22750f43f4', 15, CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Libros] ([Codigo], [Edicion], [FechaDePublicacion]) VALUES (N'0a173616-0065-45e6-aa51-f6a2ab674de4', 1, CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Maestros] ([Id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento]) VALUES (N'3644fb03-e1ec-40c6-b197-0918cd894dcb', N'jamesD', N'ackerman', N'ames', CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Maestros] ([Id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento]) VALUES (N'70bcf3e8-db7a-4062-b3e7-1aa44123f6e3', N'jao ', N'albeson', N'ackerman', CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Maestros] ([Id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento]) VALUES (N'ee8a0c5b-b06d-40fe-acc3-1b076e22fd47', N'alfred', N'jay', N'chester', CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Maestros] ([Id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento]) VALUES (N'98486dd6-81e1-4fb2-ab71-1c5f056f9e95', N'Francisco', N'perez', N'Santiago', CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Maestros] ([Id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento]) VALUES (N'679ab220-c692-4f8f-85e5-29192decec39', N'willian', N'hardy', N'ettinger', CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Maestros] ([Id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento]) VALUES (N'd58fb601-264f-4779-99a3-38dd764d673c', N'frederick', N'case', N'lee', CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Maestros] ([Id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento]) VALUES (N'100ca078-0184-40ce-8240-735533c0c488', N'Francisco', N'perez', N'Santiago', CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Maestros] ([Id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento]) VALUES (N'01fdace9-ba87-4367-8cfe-815d4d4aa7d4', N'zonia', N'barber', N'baiey', CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Maestros] ([Id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento]) VALUES (N'8ab39960-6918-45c9-805c-d256d42e3d6c', N'julia', N'marquez', N'marquez', CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Maestros] ([Id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento]) VALUES (N'c425147d-ff27-4e61-bf94-e9a714f5660c', N'isabella', N'aiona', N'abbott', CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Maestros] ([Id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento]) VALUES (N'58a00bec-78f9-47d2-9f81-f937d8bb2d26', N'liliana', N'gonzales', N'futterkiste', CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Materias] ([Id], [NombreDeLaMateria], [GradoDeLaMateria]) VALUES (N'78ae47b8-6eef-4cae-83a7-0b80d8b60873', N'EducacionFisica', N'9')
INSERT [dbo].[Materias] ([Id], [NombreDeLaMateria], [GradoDeLaMateria]) VALUES (N'515dfee5-c737-4e5c-bbe3-2ba75862e5b7', N'Hisotoria', N'2')
INSERT [dbo].[Materias] ([Id], [NombreDeLaMateria], [GradoDeLaMateria]) VALUES (N'97182c45-e5d9-4bf6-906d-2f642757ef65', N'LabDeProgramacion', N'7')
INSERT [dbo].[Materias] ([Id], [NombreDeLaMateria], [GradoDeLaMateria]) VALUES (N'9f8a407b-5400-40fe-8a08-469adb53a36e', N'Fisica', N'5')
INSERT [dbo].[Materias] ([Id], [NombreDeLaMateria], [GradoDeLaMateria]) VALUES (N'e3596440-81d8-49b7-8929-4a70ba00c6cd', N'Ciencias Naturales', N'1')
INSERT [dbo].[Materias] ([Id], [NombreDeLaMateria], [GradoDeLaMateria]) VALUES (N'94361cf1-5813-4303-9323-5bc7f2682d20', N'programacion', N'8')
INSERT [dbo].[Materias] ([Id], [NombreDeLaMateria], [GradoDeLaMateria]) VALUES (N'599754aa-57e5-402c-b059-68edfc71b8e6', N'Analysis y administracion de riesgo', N'9')
INSERT [dbo].[Materias] ([Id], [NombreDeLaMateria], [GradoDeLaMateria]) VALUES (N'd97bebd5-0a33-4354-b814-b6942cee35be', N'Sistemas Operativos', N'3')
INSERT [dbo].[Materias] ([Id], [NombreDeLaMateria], [GradoDeLaMateria]) VALUES (N'6fbc6f8e-7247-4a42-becf-c44a10103099', N'estadistica', N'7')
INSERT [dbo].[Materias] ([Id], [NombreDeLaMateria], [GradoDeLaMateria]) VALUES (N'934715ce-c519-4101-b49c-ebef33afd996', N'Matematicas', N'4')
INSERT [dbo].[Nomina] ([NumeroDeEmpleado], [Horas], [Pago]) VALUES (N'a1b15339-c1b8-42bf-8973-10fb64f0b910', 15, 11.0000)
INSERT [dbo].[Nomina] ([NumeroDeEmpleado], [Horas], [Pago]) VALUES (N'ecdbfb55-bda4-4500-8b32-1692530ff3ff', 32, 2.0000)
INSERT [dbo].[Nomina] ([NumeroDeEmpleado], [Horas], [Pago]) VALUES (N'4bfbd0d9-2c15-488d-b661-1a0ee359a43f', 16, 6.0000)
INSERT [dbo].[Nomina] ([NumeroDeEmpleado], [Horas], [Pago]) VALUES (N'cd5d52a4-5abb-4c69-b5be-1ba2a9cfc278', 4, 3.0000)
INSERT [dbo].[Nomina] ([NumeroDeEmpleado], [Horas], [Pago]) VALUES (N'0ce10732-5e1a-4d03-82d3-3300bff53023', 66, 2.0000)
INSERT [dbo].[Nomina] ([NumeroDeEmpleado], [Horas], [Pago]) VALUES (N'd8192925-297c-4f55-ad52-3b631090076d', 7, 9.0000)
INSERT [dbo].[Nomina] ([NumeroDeEmpleado], [Horas], [Pago]) VALUES (N'fb4ee807-ed2d-415e-b638-66ed836253b5', 15, 7.0000)
INSERT [dbo].[Nomina] ([NumeroDeEmpleado], [Horas], [Pago]) VALUES (N'42e98014-3afa-4c46-aa73-6a3ef9a0ed6e', 15, 12.0000)
INSERT [dbo].[Nomina] ([NumeroDeEmpleado], [Horas], [Pago]) VALUES (N'131fbbde-d6e6-4547-8edf-b70bd31aa6f0', 65, 78.0000)
INSERT [dbo].[Nomina] ([NumeroDeEmpleado], [Horas], [Pago]) VALUES (N'82b08803-c592-4e21-8894-e662d0ad9741', 15, 12.0000)
INSERT [dbo].[Nomina] ([NumeroDeEmpleado], [Horas], [Pago]) VALUES (N'9e1d77f7-9eaf-48a4-9c81-f5461bd37317', 6, 8.0000)
INSERT [dbo].[PagosDeColegiatura] ([Matricula], [Inscripcion], [Materias], [Beca]) VALUES (N'e58ec726-476b-423e-a399-0533d87db470', 1, 2, CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[PagosDeColegiatura] ([Matricula], [Inscripcion], [Materias], [Beca]) VALUES (N'f7e7bb2c-420c-48df-b9cd-4f2d648e2e29', 4, 66, CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[PagosDeColegiatura] ([Matricula], [Inscripcion], [Materias], [Beca]) VALUES (N'3f90b7c9-81c6-4ec0-bd69-5876af4f7633', 5, 4, CAST(8 AS Decimal(18, 0)))
INSERT [dbo].[PagosDeColegiatura] ([Matricula], [Inscripcion], [Materias], [Beca]) VALUES (N'f3b530f2-cd47-4f81-8c4c-6c59d8416198', 1, 2, CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[PagosDeColegiatura] ([Matricula], [Inscripcion], [Materias], [Beca]) VALUES (N'aacf4e4c-4092-4f3c-8ae6-751413d7c885', 2, 45, CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[PagosDeColegiatura] ([Matricula], [Inscripcion], [Materias], [Beca]) VALUES (N'ee275dd8-6ca5-4e00-aeae-771b67e24cba', 5, 44, CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[PagosDeColegiatura] ([Matricula], [Inscripcion], [Materias], [Beca]) VALUES (N'72d4304f-eb6d-4544-b764-947159346e04', 5, 66, CAST(23 AS Decimal(18, 0)))
INSERT [dbo].[PagosDeColegiatura] ([Matricula], [Inscripcion], [Materias], [Beca]) VALUES (N'2bf891aa-e84b-4a8d-a9c3-b051cc870ff7', 9, 7, CAST(12 AS Decimal(18, 0)))
INSERT [dbo].[PagosDeColegiatura] ([Matricula], [Inscripcion], [Materias], [Beca]) VALUES (N'1558296b-61a3-4a08-995e-c931e2c2df69', 55, 4, CAST(7 AS Decimal(18, 0)))
INSERT [dbo].[PagosDeColegiatura] ([Matricula], [Inscripcion], [Materias], [Beca]) VALUES (N'3fb8f1c9-5555-4d52-b0ec-d108f00deea2', 3, 2, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[PagosDeColegiatura] ([Matricula], [Inscripcion], [Materias], [Beca]) VALUES (N'20b19593-8488-4395-977a-d581a24acdc0', 25, 45, CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[PagosFinalBackup] ([Matricula], [Inscripcion], [Materias], [Beca], [PagoFinal]) VALUES (N'e58ec726-476b-423e-a399-0533d87db470', 1, 2, CAST(3 AS Decimal(18, 0)), CAST(9 AS Decimal(29, 0)))
INSERT [dbo].[PagosFinalBackup] ([Matricula], [Inscripcion], [Materias], [Beca], [PagoFinal]) VALUES (N'f7e7bb2c-420c-48df-b9cd-4f2d648e2e29', 4, 66, CAST(4 AS Decimal(18, 0)), CAST(280 AS Decimal(29, 0)))
INSERT [dbo].[PagosFinalBackup] ([Matricula], [Inscripcion], [Materias], [Beca], [PagoFinal]) VALUES (N'3f90b7c9-81c6-4ec0-bd69-5876af4f7633', 5, 4, CAST(8 AS Decimal(18, 0)), CAST(72 AS Decimal(29, 0)))
INSERT [dbo].[PagosFinalBackup] ([Matricula], [Inscripcion], [Materias], [Beca], [PagoFinal]) VALUES (N'f3b530f2-cd47-4f81-8c4c-6c59d8416198', 1, 2, CAST(3 AS Decimal(18, 0)), CAST(9 AS Decimal(29, 0)))
INSERT [dbo].[PagosFinalBackup] ([Matricula], [Inscripcion], [Materias], [Beca], [PagoFinal]) VALUES (N'aacf4e4c-4092-4f3c-8ae6-751413d7c885', 2, 45, CAST(7 AS Decimal(18, 0)), CAST(329 AS Decimal(29, 0)))
INSERT [dbo].[PagosFinalBackup] ([Matricula], [Inscripcion], [Materias], [Beca], [PagoFinal]) VALUES (N'ee275dd8-6ca5-4e00-aeae-771b67e24cba', 5, 44, CAST(4 AS Decimal(18, 0)), CAST(196 AS Decimal(29, 0)))
INSERT [dbo].[PagosFinalBackup] ([Matricula], [Inscripcion], [Materias], [Beca], [PagoFinal]) VALUES (N'72d4304f-eb6d-4544-b764-947159346e04', 5, 66, CAST(23 AS Decimal(18, 0)), CAST(1633 AS Decimal(29, 0)))
INSERT [dbo].[PagosFinalBackup] ([Matricula], [Inscripcion], [Materias], [Beca], [PagoFinal]) VALUES (N'2bf891aa-e84b-4a8d-a9c3-b051cc870ff7', 9, 7, CAST(12 AS Decimal(18, 0)), CAST(192 AS Decimal(29, 0)))
INSERT [dbo].[PagosFinalBackup] ([Matricula], [Inscripcion], [Materias], [Beca], [PagoFinal]) VALUES (N'1558296b-61a3-4a08-995e-c931e2c2df69', 55, 4, CAST(7 AS Decimal(18, 0)), CAST(413 AS Decimal(29, 0)))
INSERT [dbo].[PagosFinalBackup] ([Matricula], [Inscripcion], [Materias], [Beca], [PagoFinal]) VALUES (N'3fb8f1c9-5555-4d52-b0ec-d108f00deea2', 3, 2, CAST(5 AS Decimal(18, 0)), CAST(25 AS Decimal(29, 0)))
INSERT [dbo].[PagosFinalBackup] ([Matricula], [Inscripcion], [Materias], [Beca], [PagoFinal]) VALUES (N'20b19593-8488-4395-977a-d581a24acdc0', 25, 45, CAST(6 AS Decimal(18, 0)), CAST(420 AS Decimal(29, 0)))
INSERT [dbo].[Salones] ([Id], [Nombre], [CantidadDeAsientos], [Ubicacion]) VALUES (N'660324a8-9937-4889-86b8-07392140214c', N'sexto', 12, N'piso3')
INSERT [dbo].[Salones] ([Id], [Nombre], [CantidadDeAsientos], [Ubicacion]) VALUES (N'f3fb706c-7c2e-4446-934b-5219f7c8b2c6', N'terce', 6, N'piso2')
INSERT [dbo].[Salones] ([Id], [Nombre], [CantidadDeAsientos], [Ubicacion]) VALUES (N'fb307d95-22bf-406c-94c8-5e73f752f07f', N'pri', 2, N'piso1')
INSERT [dbo].[Salones] ([Id], [Nombre], [CantidadDeAsientos], [Ubicacion]) VALUES (N'a0e95362-fd96-43f8-922a-6606f8c1dd57', N'segun', 6, N'piso1')
INSERT [dbo].[Salones] ([Id], [Nombre], [CantidadDeAsientos], [Ubicacion]) VALUES (N'1eaf9564-4cc7-4bd5-b82d-7b55a8332978', N'deci', 44, N'piso6')
INSERT [dbo].[Salones] ([Id], [Nombre], [CantidadDeAsientos], [Ubicacion]) VALUES (N'dc85298e-6597-4ce0-8ef0-8e87f682c8c2', N'septi', 133, N'piso4')
INSERT [dbo].[Salones] ([Id], [Nombre], [CantidadDeAsientos], [Ubicacion]) VALUES (N'6acc07e3-b28b-475b-ac2b-b6633d718fb2', N'nove', 66, N'piso5')
INSERT [dbo].[Salones] ([Id], [Nombre], [CantidadDeAsientos], [Ubicacion]) VALUES (N'19c487a0-7940-4a7d-b85b-fc9d8e5f579d', N'octo', 45, N'piso4')
INSERT [dbo].[Salones] ([Id], [Nombre], [CantidadDeAsientos], [Ubicacion]) VALUES (N'be195d98-9fa1-4fa8-87dc-fd8a734a0b03', N'quint', 45, N'piso2')
INSERT [dbo].[TallaUniforme] ([Id], [UniformeDeportivo], [UniformeGala]) VALUES (N'423be08b-6b38-413d-8110-0e49a6eec5b3', N'333', N'20')
INSERT [dbo].[TallaUniforme] ([Id], [UniformeDeportivo], [UniformeGala]) VALUES (N'd0f4bcf3-50be-44d8-b5df-1c7887a2f98e', N'333', N'20')
INSERT [dbo].[TallaUniforme] ([Id], [UniformeDeportivo], [UniformeGala]) VALUES (N'302c009d-7441-40c3-96c0-233724ceb03b', N'333', N'20')
INSERT [dbo].[TallaUniforme] ([Id], [UniformeDeportivo], [UniformeGala]) VALUES (N'0eef6752-11b4-4c11-beb0-4d8e3364e015', N'333', N'20')
INSERT [dbo].[TallaUniforme] ([Id], [UniformeDeportivo], [UniformeGala]) VALUES (N'9d4763ca-f878-4899-a1f2-517b5dda5cb2', N'333', N'20')
INSERT [dbo].[TallaUniforme] ([Id], [UniformeDeportivo], [UniformeGala]) VALUES (N'fc336686-a670-432f-b255-623644e0a4b7', N'333', N'20')
INSERT [dbo].[TallaUniforme] ([Id], [UniformeDeportivo], [UniformeGala]) VALUES (N'e8e8dcd2-5be5-41b4-988c-74109d824c7a', N'333', N'20')
INSERT [dbo].[TallaUniforme] ([Id], [UniformeDeportivo], [UniformeGala]) VALUES (N'0cd5ad4e-429c-4284-bd52-87a28b1a5a98', N'333', N'20')
INSERT [dbo].[TallaUniforme] ([Id], [UniformeDeportivo], [UniformeGala]) VALUES (N'7f561401-a02c-4fb4-9cd9-df289d5f864c', N'333', N'20')
INSERT [dbo].[TallaUniforme] ([Id], [UniformeDeportivo], [UniformeGala]) VALUES (N'dd3f5045-5844-467e-b706-e8e35ce1c52c', N'333', N'20')
/****** Object:  StoredProcedure [dbo].[cantidaddeasientos]    Script Date: 15/04/2019 01:37:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[cantidaddeasientos]
as
select*from Salones where CantidadDeAsientos >=15
GO
/****** Object:  StoredProcedure [dbo].[edicionMayorA30]    Script Date: 15/04/2019 01:37:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[edicionMayorA30]
as
select*from Libros where Edicion > 30
GO
/****** Object:  StoredProcedure [dbo].[MaestrosLLamadosWillian]    Script Date: 15/04/2019 01:37:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure  [dbo].[MaestrosLLamadosWillian]
as
select*from Maestros where Nombre ='willian'
GO
/****** Object:  StoredProcedure [dbo].[materiasmayora15]    Script Date: 15/04/2019 01:37:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure  [dbo].[materiasmayora15]
as
select*from PagosDeColegiatura where Materias >15
GO
/****** Object:  StoredProcedure [dbo].[pagoesmenora10]    Script Date: 15/04/2019 01:37:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pagoesmenora10] 
as
select *from Nomina where Pago < 10
GO
/****** Object:  StoredProcedure [dbo].[PrecioMenorAdiez]    Script Date: 15/04/2019 01:37:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[PrecioMenorAdiez]
as
select*from Excursion where PrecioPorAlumno < 10
GO
/****** Object:  StoredProcedure [dbo].[tallaUniforme2]    Script Date: 15/04/2019 01:37:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[tallaUniforme2] 
as
select *from TallaUniforme where UniformeDeportivo = 333
GO
/****** Object:  StoredProcedure [dbo].[TodosLosAlumnos]    Script Date: 15/04/2019 01:37:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[TodosLosAlumnos]
as
SELECT *from Alumnos

go;
GO
/****** Object:  StoredProcedure [dbo].[ubicacionDeAlfonsoReyes]    Script Date: 15/04/2019 01:37:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[ubicacionDeAlfonsoReyes]
as
select*from Edificios where UbicacionDelEdificio ='AlfonsoReyes'
GO