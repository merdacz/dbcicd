SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [custom].[test Verify that there are event types]
AS
BEGIN
  DECLARE @cnt INT
  SELECT @Cnt = COUNT(*) FROM dbo.EventTypes
  EXEC tSQLt.AssertNotEquals @Expected = 0,
      @Actual = @cnt,
	  @Message = 'blah'
  
END;


GO
