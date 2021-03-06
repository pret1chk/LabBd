USE [Rentas_V2]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[activo](
	[id_activos] [int] IDENTITY(1,1) NOT NULL,
	[id_code] [int] NOT NULL,
	[statusEQ] [varchar](50) NOT NULL,
	[add_desktop] [int] NULL,
	[add_laptop] [int] NULL,
	[add_monitor] [int] NULL,
	[add_impresora] [int] NULL,
	[add_servidor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_activos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 13/05/2018 06:51:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[razonSocial] [varchar](50) NOT NULL,
	[rfc] [varchar](50) NOT NULL,
	[direccion] [int] NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[movil] [varchar](50) NULL,
	[correo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contrato]    Script Date: 13/05/2018 06:51:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contrato](
	[id_contrato] [int] IDENTITY(1,1) NOT NULL,
	[date_inicio] [date] NOT NULL,
	[date_fin] [date] NOT NULL,
	[add_activos] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_contrato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[desktop]    Script Date: 13/05/2018 06:51:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[desktop](
	[id_activo] [int] IDENTITY(1,1) NOT NULL,
	[model] [varchar](50) NULL,
	[marca] [varchar](50) NULL,
	[es_cpu] [varchar](50) NOT NULL,
	[es_ram] [varchar](50) NOT NULL,
	[es_TM] [varchar](50) NULL,
	[es_DD] [varchar](50) NOT NULL,
	[es_TV] [varchar](50) NULL,
	[es_gab] [varchar](50) NULL,
	[serie] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_activo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[direccion]    Script Date: 13/05/2018 06:51:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direccion](
	[id_dir] [int] IDENTITY(1,1) NOT NULL,
	[calle] [varchar](50) NOT NULL,
	[numero] [int] NOT NULL,
	[colonia] [varchar](50) NOT NULL,
	[cp] [int] NOT NULL,
	[ciudad] [varchar](50) NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[pais] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_dir] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[impresora](
	[id_activo] [int] IDENTITY(1,1) NOT NULL,
	[marca] [varchar](50) NOT NULL,
	[model] [varchar](50) NOT NULL,
	[serie] [varchar](50) NOT NULL,
	[especificacion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_activo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laptop](
	[id_activo] [int] IDENTITY(1,1) NOT NULL,
	[marca] [varchar](50) NOT NULL,
	[model] [varchar](50) NOT NULL,
	[serie] [varchar](50) NOT NULL,
	[es_cpu] [varchar](50) NOT NULL,
	[es_ram] [varchar](50) NOT NULL,
	[es_DD] [varchar](50) NOT NULL,
	[es_TV] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_activo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monitor](
	[id_activo] [int] IDENTITY(1,1) NOT NULL,
	[marca] [varchar](50) NOT NULL,
	[model] [varchar](50) NOT NULL,
	[serie] [varchar](50) NOT NULL,
	[pulgadas] [varchar](50) NOT NULL,
	[especificaciones] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_activo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renter](
	[id_user] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[correo] [varchar](50) NOT NULL,
	[date_ingreso] [datetime] NULL,
	[ubicacion] [geography] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[servidor](
	[id_activo] [int] IDENTITY(1,1) NOT NULL,
	[model] [varchar](50) NULL,
	[marca] [varchar](50) NOT NULL,
	[es_cpu] [varchar](50) NOT NULL,
	[es_ram] [varchar](50) NOT NULL,
	[es_TM] [varchar](50) NULL,
	[es_DD] [varchar](50) NOT NULL,
	[es_TV] [varchar](50) NULL,
	[es_gab] [varchar](50) NULL,
	[serie] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_activo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[id_venta] [int] IDENTITY(1,1) NOT NULL,
	[date_inicio] [datetime] NOT NULL,
	[date_fin] [datetime] NOT NULL,
	[add_cliente] [int] NULL,
	[add_renter] [int] NULL,
	[add_contrato] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[activo]  WITH CHECK ADD  CONSTRAINT [FK_activo_desktop] FOREIGN KEY([add_desktop])
REFERENCES [dbo].[desktop] ([id_activo])
GO
ALTER TABLE [dbo].[activo] CHECK CONSTRAINT [FK_activo_desktop]
GO
ALTER TABLE [dbo].[activo]  WITH CHECK ADD  CONSTRAINT [FK_activo_impresora] FOREIGN KEY([add_impresora])
REFERENCES [dbo].[impresora] ([id_activo])
GO
ALTER TABLE [dbo].[activo] CHECK CONSTRAINT [FK_activo_impresora]
GO
ALTER TABLE [dbo].[activo]  WITH CHECK ADD  CONSTRAINT [FK_activo_laptop] FOREIGN KEY([add_laptop])
REFERENCES [dbo].[laptop] ([id_activo])
GO
ALTER TABLE [dbo].[activo] CHECK CONSTRAINT [FK_activo_laptop]
GO
ALTER TABLE [dbo].[activo]  WITH CHECK ADD  CONSTRAINT [FK_activo_monitor] FOREIGN KEY([add_monitor])
REFERENCES [dbo].[monitor] ([id_activo])
GO
ALTER TABLE [dbo].[activo] CHECK CONSTRAINT [FK_activo_monitor]
GO
ALTER TABLE [dbo].[activo]  WITH CHECK ADD  CONSTRAINT [FK_activo_servidor] FOREIGN KEY([add_servidor])
REFERENCES [dbo].[servidor] ([id_activo])
GO
ALTER TABLE [dbo].[activo] CHECK CONSTRAINT [FK_activo_servidor]
GO
ALTER TABLE [dbo].[clientes]  WITH CHECK ADD  CONSTRAINT [FK_clientes_direccion] FOREIGN KEY([direccion])
REFERENCES [dbo].[direccion] ([id_dir])
GO
ALTER TABLE [dbo].[clientes] CHECK CONSTRAINT [FK_clientes_direccion]
GO
ALTER TABLE [dbo].[contrato]  WITH CHECK ADD  CONSTRAINT [FK_contrato_activo] FOREIGN KEY([add_activos])
REFERENCES [dbo].[activo] ([id_activos])
GO
ALTER TABLE [dbo].[contrato] CHECK CONSTRAINT [FK_contrato_activo]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_clientes] FOREIGN KEY([add_cliente])
REFERENCES [dbo].[clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_clientes]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_contrato] FOREIGN KEY([add_contrato])
REFERENCES [dbo].[contrato] ([id_contrato])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_contrato]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_renter] FOREIGN KEY([add_renter])
REFERENCES [dbo].[renter] ([id_user])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_renter]
GO
