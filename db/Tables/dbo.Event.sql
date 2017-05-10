CREATE TABLE [dbo].[Event]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[StartsOn] [datetime] NULL,
[EndsOn] [datetime] NULL,
[Location] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Event] ADD CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
