CREATE TABLE [dbo].[Addresses]
(
	[Id] INT NOT NULL  IDENTITY(1,1), 
    [ContactId] INT NOT NULL, 
    [AddressType] VARCHAR(10) NOT NULL, 
    [StreetAddress] VARCHAR(50) NOT NULL, 
    [City] VARCHAR(50) NOT NULL, 
    [StateId] INT NOT NULL, 
    [PostalCode] VARCHAR(20) NOT NULL,
	CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_Addresses_Contacts] FOREIGN KEY ([ContactId]) REFERENCES [dbo].[Contacts] (Id),
	CONSTRAINT [FK_Addresses_States] FOREIGN KEY ([StateId]) REFERENCES [dbo].[States] (Id)
)
