INSERT INTO [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd3a5e87e-7bda-4bee-8c25-0ceb30be62d6', N'admin@apartments.com', N'ADMIN@APARTMENTS.COM', N'admin@apartments.com', N'ADMIN@APARTMENTS.COM', 1, N'AQAAAAEAACcQAAAAEAA0Vozu8/CoICyZSXOHQWkJra2OF4ijK4anS+91X+s8T0F6437gWjeb896ukUXRww==', N'OIW37FK4UJMQOSJXWFJ6CBQPJJIIJRPE', N'4ee189aa-0835-4636-8408-8f7d40ae7e51', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Apartment] ON
INSERT INTO [dbo].[Apartment] ([Id], [ApartmentDescription], [Address], [ChargePerWeek]) VALUES (1, N'Luxury - Apartment -One Bedroom', N'230A, Queen Street ,Auckland', CAST(350.00 AS Decimal(18, 2)))
INSERT INTO [dbo].[Apartment] ([Id], [ApartmentDescription], [Address], [ChargePerWeek]) VALUES (2, N'Semi Luxury - Apartment -Two Bedroom', N'350B, Beach Road , Auckland', CAST(300.00 AS Decimal(18, 2)))
INSERT INTO [dbo].[Apartment] ([Id], [ApartmentDescription], [Address], [ChargePerWeek]) VALUES (3, N'Economical Apartment - Two Bedroom', N'250B, Northern Motorway,Albany Auckland', CAST(290.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Apartment] OFF
SET IDENTITY_INSERT [dbo].[Renter] ON
INSERT INTO [dbo].[Renter] ([Id], [Name], [PhoneNumber]) VALUES (1, N'Ken Davis', N'0219004567')
INSERT INTO [dbo].[Renter] ([Id], [Name], [PhoneNumber]) VALUES (2, N'James Warner', N'0219883456')
INSERT INTO [dbo].[Renter] ([Id], [Name], [PhoneNumber]) VALUES (3, N'John Walker', N'0217773456')
SET IDENTITY_INSERT [dbo].[Renter] OFF
SET IDENTITY_INSERT [dbo].[Booking] ON
INSERT INTO [dbo].[Booking] ([Id], [ApartmentId], [RenterId], [NumberOfWeeks]) VALUES (1, 1, 1, 5)
INSERT INTO [dbo].[Booking] ([Id], [ApartmentId], [RenterId], [NumberOfWeeks]) VALUES (2, 2, 2, 10)
INSERT INTO [dbo].[Booking] ([Id], [ApartmentId], [RenterId], [NumberOfWeeks]) VALUES (3, 3, 3, 30)
SET IDENTITY_INSERT [dbo].[Booking] OFF
