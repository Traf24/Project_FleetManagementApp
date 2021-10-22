USE[Project_Flapp_DB];
CREATE TABLE[dbo].[Tankkaart](
   [id][int] IDENTITY(1, 1) PRIMARY KEY,
   [geldigheidsdatum] [date] NOT NULL,
   [pincode] [varchar](50) NOT NULL,
   [brandstof_id] [int] FOREIGN KEY REFERENCES dbo.Brandstof(id),
   [bestuurder_id] [int] NULL,
    --FOREIGN KEY REFERENCES dbo.Bestuurder(id)
   [voertuig_type] [varchar](50) NOT NULL,
   [geblokkeerd] [bit] NOT NULL);