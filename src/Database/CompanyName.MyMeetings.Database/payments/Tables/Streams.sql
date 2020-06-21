﻿CREATE TABLE payments.Streams
(
    Id                  CHAR(42)                                NOT NULL,
    IdOriginal          NVARCHAR(1000)                          NOT NULL,
    IdInternal          INT                 IDENTITY(1,1)       NOT NULL,
    [Version]           INT                 DEFAULT(-1)         NOT NULL,
    Position            BIGINT              DEFAULT(-1)         NOT NULL,
    CONSTRAINT PK_Streams PRIMARY KEY CLUSTERED (IdInternal)
);
GO

CREATE UNIQUE NONCLUSTERED INDEX IX_Streams_Id ON payments.Streams (Id);
GO
