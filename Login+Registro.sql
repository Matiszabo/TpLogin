﻿USE [Login+Registro]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 28/9/2023 15:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Contraseña] [varchar](100) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Telefono] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([ID], [Usuario], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (1, N'usuarioA', N'passwordA', N'Juan Pérez', N'juan@gmail.com', N'123-456-7890')
INSERT [dbo].[Usuario] ([ID], [Usuario], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (2, N'usuarioB', N'passwordB', N'María García', N'maria@gmail.com', N'987-654-3210')
INSERT [dbo].[Usuario] ([ID], [Usuario], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (3, N'usuarioC', N'passwordC', N'Carlos Rodríguez', N'carlos@gmail.com', N'555-555-5555')
INSERT [dbo].[Usuario] ([ID], [Usuario], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (4, N'usuarioD', N'passwordD', N'Laura Martínez', N'laura@gmail.com', N'666-666-6666')
INSERT [dbo].[Usuario] ([ID], [Usuario], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (5, N'usuarioE', N'passwordE', N'Ana Sánchez', N'ana@gmail.com', N'777-777-7777')
INSERT [dbo].[Usuario] ([ID], [Usuario], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (6, N'usuarioF', N'passwordF', N'Pedro López', N'pedro@gmail.com', N'555-123-4567')
INSERT [dbo].[Usuario] ([ID], [Usuario], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (7, N'usuarioG', N'passwordG', N'Elena González', N'elena@gmail.com', N'987-987-9876')
INSERT [dbo].[Usuario] ([ID], [Usuario], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (8, N'usuarioH', N'passwordH', N'Luisa Ramírez', N'luisa@gmail.com', N'444-333-2222')
INSERT [dbo].[Usuario] ([ID], [Usuario], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (9, N'usuarioI', N'passwordI', N'Carlos Silva', N'carlos@gmail.com', N'111-222-3333')
INSERT [dbo].[Usuario] ([ID], [Usuario], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (10, N'usuarioJ', N'passwordJ', N'Miguel Torres', N'miguel@gmail.com', N'999-888-7777')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarUsuario]    Script Date: 28/9/2023 15:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarUsuario]
    @Usuario VARCHAR(50),
    @Contraseña VARCHAR(100),
    @Nombre VARCHAR(100),
    @Email VARCHAR(100),
    @Telefono VARCHAR(20)
AS
BEGIN
    INSERT INTO Usuario (Usuario, Contraseña, Nombre, Email, Telefono)
    VALUES (@Usuario, @Contraseña, @Nombre, @Email, @Telefono);
END;

EXEC InsertarUsuario 'Juancito123', 'passwordA', 'Juan Pérez', 'juan@gmail.com', '123-456-7890';
EXEC InsertarUsuario 'Marielita456', 'passwordB', 'María García', 'maria@gmail.com', '987-654-3210';
EXEC InsertarUsuario 'Carlitosgamer', 'passwordC', 'Carlos Rodríguez', 'carlos@gmail.com', '555-555-5555';
EXEC InsertarUsuario 'Lauritamagica', 'passwordD', 'Laura Martínez', 'laura@gmail.com', '666-666-6666';
EXEC InsertarUsuario 'anita123', 'passwordE', 'Ana Sánchez', 'ana@gmail.com', '777-777-7777';
EXEC InsertarUsuario 'pedrito456', 'passwordF', 'Pedro López', 'pedro@gmail.com', '555-123-4567';
EXEC InsertarUsuario 'elenano', 'passwordG', 'Elena González', 'elena@gmail.com', '987-987-9876';
EXEC InsertarUsuario 'luisito comunica', 'passwordH', 'Luisa Ramírez', 'luisa@gmail.com', '444-333-2222';
EXEC InsertarUsuario 'carlitos bala', 'passwordI', 'Carlos Silva', 'carlos@gmail.com', '111-222-3333';
EXEC InsertarUsuario 'migue granados', 'passwordJ', 'Miguel Torres', 'miguel@gmail.com', '999-888-7777';
GO