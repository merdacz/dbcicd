CREATE TABLE [dbo].[Lecture]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[EventId] [int] NOT NULL,
[Subject] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Lecturer] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Lecture] ADD CONSTRAINT [PK_Lecture] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20170517-174011] ON [dbo].[Lecture] ([EventId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Lecture] ADD CONSTRAINT [FK_Lecture_Event] FOREIGN KEY ([EventId]) REFERENCES [dbo].[Event] ([Id])
GO
