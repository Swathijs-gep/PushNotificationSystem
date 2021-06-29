use MyPushNotification

create table [dbo].Contacts(
	ContactID int identity not null primary key,
	ContactName varchar(100) not null,
	Contact varchar(50) not null,
	AddedOn Datetime not null
);

CREATE TABLE [dbo].[categories] (
    [category_id]   INT           NOT NULL,
    [category_name] VARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([category_id] ASC)
);

CREATE TABLE [dbo].[notifications] (
    [notification_id] INT            IDENTITY (1, 1) NOT NULL,
    [title]           VARCHAR (100)  NOT NULL,
    [body]            VARCHAR (2000) NOT NULL,
    [category]        INT            NOT NULL,
    [AddedOn]         DATETIME       NOT NULL,
    PRIMARY KEY CLUSTERED ([notification_id] ASC)
);



Alter Database MyPushNotification set Enable_Broker