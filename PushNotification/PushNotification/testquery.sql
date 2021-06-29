select * from notifications;
select * from categories;


SELECT
  *
FROM
  INFORMATION_SCHEMA.TABLES;
GO

select * from Contacts
insert into Contacts (ContactName, ContactNo, AddedOn) values('Swathi', '9898989898', GETDATE());

insert into notifications (title,body,category,AddedOn) values('Deilveries will be delayed', 'COVID 19 lockdowns are slowing down deliveries. Usual deadlines not applicable',4,GETDATE());