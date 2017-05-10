CREATE TABLE [dbo].[EventTypes]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Type] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EventTypes] ADD CONSTRAINT [PK_EventTypes] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
