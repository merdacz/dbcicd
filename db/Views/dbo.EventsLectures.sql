SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE VIEW [dbo].[EventsLectures]
AS
	SELECT 
		e.Id AS EventId, 
		l.Subject
	FROM 
		dbo.Event AS e
		JOIN dbo.Lecture AS l ON l.EventId = e.Id

GO
