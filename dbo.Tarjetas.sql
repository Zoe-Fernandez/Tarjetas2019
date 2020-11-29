CREATE TABLE [dbo].[Tarjetas] (
    [IdTarjeta]   INT           IDENTITY (1, 1) NOT NULL,
    [IdCliente]   INT           NOT NULL,
    [NroTarjeta]  NVARCHAR (50) NOT NULL,
    [IdCartera]   INT           NOT NULL,
    [ValidaDesde] NVARCHAR (10) NOT NULL,
    [ValidaHasta] NVARCHAR (10) NOT NULL,
    [Vigente]     BIT           NOT NULL,
    [Extensiones] BIT           NOT NULL,
    CONSTRAINT [PK_Tarjetas] PRIMARY KEY CLUSTERED ([IdTarjeta] ASC),
    CONSTRAINT [FK_Tarjetas_Clientes] FOREIGN KEY ([IdCliente]) REFERENCES [dbo].[Clientes] ([IdCliente]),
    CONSTRAINT [FK_Tarjetas_CarteraConsumos] FOREIGN KEY ([IdCartera]) REFERENCES [dbo].[CarteraConsumos] ([IdCartera])
);

