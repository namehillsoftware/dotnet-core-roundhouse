USE [MyDb]
GO

CREATE TABLE [StoredItems] (
    [id] INTEGER IDENTITY(1, 1),
    [itemType] VARCHAR(100),
    [libraryId] INTEGER,
    [serviceId] INTEGER,
    UNIQUE ([itemType],[libraryId],[serviceId])
)

GO
