/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

--USE [Gouganga]
--GO
DELETE FROM [dbo].[UserRole]
GO
DELETE FROM [dbo].[User]
GO
DELETE FROM [dbo].[Role]
GO
DELETE FROM [dbo].[ProductUnit]
GO
DELETE FROM [dbo].[Product]
GO
DELETE FROM [dbo].[ProductTranslation]
GO
DELETE FROM [dbo].[ProductType]
GO
DELETE FROM [dbo].[Language]
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (1, N'RICE', N'RICE')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (2, N'DAL & PULSES', N'DAL & PULSES')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (3, N'ATTA, FLOUR. POHA & SOJI', N'ATTA, FLOUR. POHA & SOJI')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (4, N'Sugar & Salt', N'Sugar & Salt')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (5, N'Masala & Spices', N'Masala & Spices')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (6, N'PICKLE, PAPAD & MASALA POWDER', N'PICKLE, PAPAD & MASALA POWDER')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (7, N'POWDERED MASALA &  SPICES', N'POWDERED MASALA &  SPICES')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (8, N'BEVERAGES', N'BEVERAGES')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (9, N'ORGANIC/Naturals', N'ORGANIC/Naturals')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (10, N'Millets', N'Millets')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (11, N'Cooking and Pooja Oils', N'Cooking and Pooja Oils')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (12, N'Pooja Items', N'Pooja Items')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (13, N'Dry Fruits, Juice & Honey', N'Dry Fruits, Juice & Honey')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (14, N'GOU Ganga /Gavya Products', N'GOU Ganga /Gavya Products')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (15, N'PERSONAL CARE ITEMS', N'PERSONAL CARE ITEMS')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (16, N'GARDEN CARE', N'GARDEN CARE')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (17, N'CLEANING & HOUSE HOLD', N'CLEANING & HOUSE HOLD')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (18, N'Ayurveda Herbs & Churna', N'Ayurveda Herbs & Churna')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (19, N'OTHERS', N'OTHERS')
GO
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 1,1, N'Rice - Basumati', NULL, N'Rice - Basumati', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 2,1, N'Rice - Dosa ', NULL, N'Rice - Dosa ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 3,1, N'Rice - Dosa -Siddapura', NULL, N'Rice - Dosa -Siddapura', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 4,1, N'Rice - Jeera Rice', NULL, N'Rice - Jeera Rice', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 5,1, N'Rice - Raw (Alur Sanna)', NULL, N'Rice - Raw (Alur Sanna)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 6,1, N'Rice - Red Boiled ', NULL, N'Rice - Red Boiled ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 7,1, N'Rice - Sona Sagara', NULL, N'Rice - Sona Sagara', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 8,1, N'Rice - Sona Masuri Fine Raw (1 Year Old)', NULL, N'Rice - Sona Masuri Fine Raw (1 Year Old)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 9,1, N'Rice - Sona Masuri Old Premium (2 Years)', NULL, N'Rice - Sona Masuri Old Premium (2 Years)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 10,1, N'Rice - HMT (Old Rice)', NULL, N'Rice - HMT (Old Rice)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 11,2, N'Bengal Gram Dal/Kadle bele', NULL, N'Bengal Gram Dal/Kadle bele', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 12,2, N'Bengal Gram/Kadle Kalu', NULL, N'Bengal Gram/Kadle Kalu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 13,2, N'Cowpea seeds -Brown/Alasande Kalu', NULL, N'Cowpea seeds -Brown/Alasande Kalu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 14,2, N'Fried Gram Dal/Putani/Hurigadale', NULL, N'Fried Gram Dal/Putani/Hurigadale', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 15,2, N'Green Peas/Batani', NULL, N'Green Peas/Batani', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 16,2, N'Groundnut/Peanut/Shenga', NULL, N'Groundnut/Peanut/Shenga', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 17,2, N'Horse Gram/Huruli Kalu', NULL, N'Horse Gram/Huruli Kalu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 18,2, N'Kabuli Chenna/Bili Kadle Kalu', NULL, N'Kabuli Chenna/Bili Kadle Kalu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 19,2, N'Moong Dal/Hesaru Bele ', NULL, N'Moong Dal/Hesaru Bele ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 20,2, N'Moong Gram/Hesaru Kalu', NULL, N'Moong Gram/Hesaru Kalu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 21,2, N'Toor Dal Premium/Togari Bele', NULL, N'Toor Dal Premium/Togari Bele', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 22,2, N'Urad Gram/Uddina Kalu', NULL, N'Urad Gram/Uddina Kalu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 23,2, N'Urad Dal - Split/Uddina bele', NULL, N'Urad Dal - Split/Uddina bele', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 24,3, N'Aralu - Cleaned', NULL, N'Aralu - Cleaned', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 25,3, N'Avalakki/Poha Medium (White)', NULL, N'Avalakki/Poha Medium (White)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 26,3, N'Avalakki/Poha Thick (White)', NULL, N'Avalakki/Poha Thick (White)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 27,3, N'Avalakki/Poha Thin (White)', NULL, N'Avalakki/Poha Thin (White)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 28,3, N'Flour - Atta/Wheat - Gramarajya', NULL, N'Flour - Atta/Wheat - Gramarajya', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 29,3, N'Flour - Gram/Besan/kadle hittu', NULL, N'Flour - Gram/Besan/kadle hittu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 30,3, N'Flour -Jawar - Gramarajya', NULL, N'Flour -Jawar - Gramarajya', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 31,3, N'Flour - Ragi - Gramarajya', NULL, N'Flour - Ragi - Gramarajya', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 32,3, N'Flour - Rice - Gramarajya', NULL, N'Flour - Rice - Gramarajya', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 33,3, N'Jola Aralittu', NULL, N'Jola Aralittu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 34,3, N'Mandakki/Puffed Rice Salted/Uppu puri ', NULL, N'Mandakki/Puffed Rice Salted/Uppu puri ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 35,3, N'Mandakki/Puffed Rice Un Salted/Sappe puri ', NULL, N'Mandakki/Puffed Rice Un Salted/Sappe puri ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 36,3, N'Broken Wheat/Godhi nuchhu', NULL, N'Broken Wheat/Godhi nuchhu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 37,3, N'Rava - Bansi/Sooji/Big', NULL, N'Rava - Bansi/Sooji/Big', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 38,3, N'Rava - Bombay/Sooji/Medium', NULL, N'Rava - Bombay/Sooji/Medium', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 39,3, N'Rava - Chiroti/Sooji/Small', NULL, N'Rava - Chiroti/Sooji/Small', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 40,3, N'Rava - Idly/Sooji', NULL, N'Rava - Idly/Sooji', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 41,3, N'Ragi Huri Hittu', NULL, N'Ragi Huri Hittu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 42,3, N'Vermicelli/Shavige (Ganesha)', NULL, N'Vermicelli/Shavige (Ganesha)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 43,4, N'Sabbakki - Sabudana/Nylon', NULL, N'Sabbakki - Sabudana/Nylon', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 44,4, N'Sabbakki - Sabudana/White', NULL, N'Sabbakki - Sabudana/White', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 45,4, N'Sugar White(Regular)', NULL, N'Sugar White(Regular)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 46,4, N'Sugar Candy-Red/Kallu Sakkare', NULL, N'Sugar Candy-Red/Kallu Sakkare', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 47,4, N'Sugar Candy-White/Kallu Sakkare', NULL, N'Sugar Candy-White/Kallu Sakkare', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 48,4, N'Table Salt/Powder salt/Pudi uppu (normal)', NULL, N'Table Salt/Powder salt/Pudi uppu (normal)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 49,5, N'Bird Eye Chilly/Suji /Gandhari Menasu', NULL, N'Bird Eye Chilly/Suji /Gandhari Menasu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 50,5, N'Black Pepper/Kalu Menasu', NULL, N'Black Pepper/Kalu Menasu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 51,5, N'Cardamom/Elaichi/Yalakki', NULL, N'Cardamom/Elaichi/Yalakki', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 52,5, N'Chilli - Byadagi Red', NULL, N'Chilli - Byadagi Red', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 53,5, N'Chilli - Guntur ', NULL, N'Chilli - Guntur ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 54,5, N'Coriander/Dhaniya/Kottambari', NULL, N'Coriander/Dhaniya/Kottambari', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 55,5, N'Cinnamon/Chakke/Dalchini', NULL, N'Cinnamon/Chakke/Dalchini', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 56,5, N'Clove/Lavanga', NULL, N'Clove/Lavanga', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 57,5, N'Dry Vate Huli Powder', NULL, N'Dry Vate Huli Powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 58,5, N'Fenugreek/Menthya', NULL, N'Fenugreek/Menthya', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 59,5, N'Flax seeds/Agase ', NULL, N'Flax seeds/Agase ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 60,5, N'Jayikai patre', NULL, N'Jayikai patre', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 61,5, N'Jayikai/Nutmeg', NULL, N'Jayikai/Nutmeg', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 62,5, N'Jeera/Cumin', NULL, N'Jeera/Cumin', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 63,5, N'Kokum/Punarpuli/Murugalu Shells', NULL, N'Kokum/Punarpuli/Murugalu Shells', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 64,5, N'Mustard/Sasive', NULL, N'Mustard/Sasive', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 65,5, N'Om Kalu/Ajwain', NULL, N'Om Kalu/Ajwain', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 66,5, N'Poppy Seed/Khus Khus/Gasgase', NULL, N'Poppy Seed/Khus Khus/Gasgase', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 67,5, N'Sompu/Saunf/Fennel', NULL, N'Sompu/Saunf/Fennel', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 68,5, N'Star Anise/Chakre Moggu', NULL, N'Star Anise/Chakre Moggu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 69,5, N'Turmeric Stick', NULL, N'Turmeric Stick', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 70,5, N'Tamarind/Imli/Hunise Hannu', NULL, N'Tamarind/Imli/Hunise Hannu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 71,5, N'Til - Black/Sesame/Kari Ellu', NULL, N'Til - Black/Sesame/Kari Ellu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 72,5, N'Til - White/Sesame/Bili Ellu', NULL, N'Til - White/Sesame/Bili Ellu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 73,6, N'Masala Chilli/Majjige Menasu', NULL, N'Masala Chilli/Majjige Menasu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 74,6, N'Papad - Chilli (Navarathna Brand)', NULL, N'Papad - Chilli (Navarathna Brand)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 75,6, N'Papad - Garlic (Navarathna Brand)', NULL, N'Papad - Garlic (Navarathna Brand)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 76,6, N'Papad - Green Chilli (Navarathna Brand)', NULL, N'Papad - Green Chilli (Navarathna Brand)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 77,6, N'Papad - Plain (Navarathna Brand)', NULL, N'Papad - Plain (Navarathna Brand)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 78,6, N'Papad - Urid Masala (Navarathna Brand)', NULL, N'Papad - Urid Masala (Navarathna Brand)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 79,6, N'Papad-Sweet Potato ', NULL, N'Papad-Sweet Potato ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 80,6, N'Papad-Tapioca-Maragenasu', NULL, N'Papad-Tapioca-Maragenasu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 81,6, N'Pickle Amla- Rippon Pet', NULL, N'Pickle Amla- Rippon Pet', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 82,6, N'Pickle Cut Mango -South Canara Style ', NULL, N'Pickle Cut Mango -South Canara Style ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 83,6, N'Pickle Cut Mango with Oil -South Canara Style ', NULL, N'Pickle Cut Mango with Oil -South Canara Style ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 84,6, N'Pickle Cut Mango-Rippon Pet', NULL, N'Pickle Cut Mango-Rippon Pet', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 85,6, N'Pickle Mixed Veg-Rippon Pet', NULL, N'Pickle Mixed Veg-Rippon Pet', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 86,6, N'Pickle Rippon Pete Appe Midi', NULL, N'Pickle Rippon Pete Appe Midi', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 87,6, N'Mango Pickle-Sweet (Dakshina Kannada Style)', NULL, N'Mango Pickle-Sweet (Dakshina Kannada Style)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 88,6, N'Mixed Veg pickle - Dakshina Kannada', NULL, N'Mixed Veg pickle - Dakshina Kannada', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 89,6, N'Sandige Sabakki ', NULL, N'Sandige Sabakki ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 90,7, N'Black Pepper Powder', NULL, N'Black Pepper Powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 91,7, N'Coriander/Dhaniya Powder', NULL, N'Coriander/Dhaniya Powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 92,7, N'Chilly Poweder (Nice)', NULL, N'Chilly Poweder (Nice)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 93,7, N'Jeera/Cumin Powder', NULL, N'Jeera/Cumin Powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 94,7, N'Rasam Powder- Gramarajya', NULL, N'Rasam Powder- Gramarajya', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 95,7, N'Sambar Powder - Gramarajya', NULL, N'Sambar Powder - Gramarajya', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 96,7, N'Urid Dal Chatni Powder', NULL, N'Urid Dal Chatni Powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 97,7, N'Vangibath Powder - Gramarajya', NULL, N'Vangibath Powder - Gramarajya', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 98,7, N'Cooking Soda', NULL, N'Cooking Soda', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 99,7, N'Corn Flour', NULL, N'Corn Flour', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 100,7, N'Hing Powder', NULL, N'Hing Powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 101,8, N'Badam Powder - Gramarajya ', NULL, N'Badam Powder - Gramarajya ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 102,8, N'Herbal Water Satwam -Set of 12', NULL, N'Herbal Water Satwam -Set of 12', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 103,8, N'Herbal Water Satwam -Set of 24', NULL, N'Herbal Water Satwam -Set of 24', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 104,8, N'Coffee Powder Filter- Parimala', NULL, N'Coffee Powder Filter- Parimala', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 105,8, N'Coffee Powder Filter-Gramarajya (80:20)', NULL, N'Coffee Powder Filter-Gramarajya (80:20)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 106,8, N'Kashaya Powder', NULL, N'Kashaya Powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 107,8, N'Shunti Coffee/Ginger Coffee/Kashaya', NULL, N'Shunti Coffee/Ginger Coffee/Kashaya', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 108,8, N'Tea powder (leaf) Assam Tea -Shalimar Gold', NULL, N'Tea powder (leaf) Assam Tea -Shalimar Gold', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 109,8, N'Tea Powder/Assam Tea (Gold Dust)', NULL, N'Tea Powder/Assam Tea (Gold Dust)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 110,9, N'Avalakki/Red-Thick-Organic', NULL, N'Avalakki/Red-Thick-Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 111,9, N'Avalakki/Red-Thin-Organic', NULL, N'Avalakki/Red-Thin-Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 112,9, N'Barley Rice', NULL, N'Barley Rice', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 113,9, N'Bengal gram Dal-Organic', NULL, N'Bengal gram Dal-Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 114,9, N'Jaggery Liquid/Joni Bella', NULL, N'Jaggery Liquid/Joni Bella', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 115,9, N'Jaggery Natural Pieces/Bella ', NULL, N'Jaggery Natural Pieces/Bella ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 116,9, N'Jaggery Natural Plate/Bella ', NULL, N'Jaggery Natural Plate/Bella ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 117,9, N'Jaggery Natural -Square/Achhu Bella', NULL, N'Jaggery Natural -Square/Achhu Bella', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 118,9, N'Jaggery Powder Natural/Pudi Bella', NULL, N'Jaggery Powder Natural/Pudi Bella', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 119,9, N'Jaggery Soft -Tub', NULL, N'Jaggery Soft -Tub', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 120,9, N'Jaggery-Bucket', NULL, N'Jaggery-Bucket', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 121,9, N'Mineral Brown Sugar', NULL, N'Mineral Brown Sugar', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 122,9, N'Moong Dal-Organic', NULL, N'Moong Dal-Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 123,9, N'Moong Gram-Organic', NULL, N'Moong Gram-Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 124,9, N'Natural Brown Sugar', NULL, N'Natural Brown Sugar', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 125,9, N'Ragi- Organic', NULL, N'Ragi- Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 126,9, N'Rajma Chitra-Organic', NULL, N'Rajma Chitra-Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 127,9, N'Rajma Red-Organic', NULL, N'Rajma Red-Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 128,9, N'Rice - Natural (Abhilasha)', NULL, N'Rice - Natural (Abhilasha)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 129,9, N'Rice - Rajamudi ', NULL, N'Rice - Rajamudi ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 130,9, N'Rice - Red/Kempakki', NULL, N'Rice - Red/Kempakki', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 131,9, N'Rice - Sona Organic - Old-UnPolished', NULL, N'Rice - Sona Organic - Old-UnPolished', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 132,9, N'Rice - Sona Organic -Old-Polished', NULL, N'Rice - Sona Organic -Old-Polished', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 133,9, N'Rock salt/Saindhava Lavana', NULL, N'Rock salt/Saindhava Lavana', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 134,9, N'Rock salt/Saindhava Lavana-Crystal', NULL, N'Rock salt/Saindhava Lavana-Crystal', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 135,9, N'Salt -Red Sea salt - Sanekatta', NULL, N'Salt -Red Sea salt - Sanekatta', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 136,9, N'Toor Dal-Organic', NULL, N'Toor Dal-Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 137,9, N'Urid Dal-Organic', NULL, N'Urid Dal-Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 138,10, N'Aarka / Kodo Millet', NULL, N'Aarka / Kodo Millet', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 139,10, N'Baragu / Proso Millet', NULL, N'Baragu / Proso Millet', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 140,10, N'Korale/ Brown Top Millet ', NULL, N'Korale/ Brown Top Millet ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 141,10, N'Navane/Foxtail Millet', NULL, N'Navane/Foxtail Millet', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 142,10, N'Oodalu / Barnyard Millet', NULL, N'Oodalu / Barnyard Millet', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 143,10, N'Sajje/Pearl Millet', NULL, N'Sajje/Pearl Millet', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 144,10, N'Same/ Little Millet', NULL, N'Same/ Little Millet', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 145,10, N'Chia Seeds', NULL, N'Chia Seeds', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 146,10, N'Huchellu/Niger Seeds ', NULL, N'Huchellu/Niger Seeds ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 147,10, N'Kari Jeerige/ Black Jeera', NULL, N'Kari Jeerige/ Black Jeera', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 148,10, N'Kalu Jeerige/Kalonji/Kala Jeera', NULL, N'Kalu Jeerige/Kalonji/Kala Jeera', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 149,10, N'Sabja/Basil/Kama Kasturi Seeds', NULL, N'Sabja/Basil/Kama Kasturi Seeds', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 150,11, N'Coconut Oil Panchami', NULL, N'Coconut Oil Panchami', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 151,11, N'Coconut Oil Virgin', NULL, N'Coconut Oil Virgin', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 152,11, N'Coconut Oil-Cold Press-Pouch', NULL, N'Coconut Oil-Cold Press-Pouch', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 153,11, N'Coconut Oil-Roasted-Pouch', NULL, N'Coconut Oil-Roasted-Pouch', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 154,11, N'Emami Rice Bran Oil', NULL, N'Emami Rice Bran Oil', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 155,11, N'Emami Sunflower Oil', NULL, N'Emami Sunflower Oil', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 156,11, N'Ghee - Home Made - from A2 Milk', NULL, N'Ghee - Home Made - from A2 Milk', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 157,11, N'Gingelly Oil- Amrutham', NULL, N'Gingelly Oil- Amrutham', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 158,11, N'Gingelly Oil(Gaana)', NULL, N'Gingelly Oil(Gaana)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 159,11, N'Groundnut Oil-Wood Press', NULL, N'Groundnut Oil-Wood Press', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 160,11, N'Pancha Deepa Oil - OM Bhakti ', NULL, N'Pancha Deepa Oil - OM Bhakti ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 161,11, N'Pure Gingelly Oil-Cocoguru', NULL, N'Pure Gingelly Oil-Cocoguru', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 162,12, N'Agarbatti Gou Ganga (Lavender)', NULL, N'Agarbatti Gou Ganga (Lavender)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 163,12, N'Agarbatti (Champa)', NULL, N'Agarbatti (Champa)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 164,12, N'Agarbatti Gou Ganga (jasmine)', NULL, N'Agarbatti Gou Ganga (jasmine)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 165,12, N'Agrabatti Gou Ganga (Rose)', NULL, N'Agrabatti Gou Ganga (Rose)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 166,12, N'Agrabatti Gou Ganga (Sandal)', NULL, N'Agrabatti Gou Ganga (Sandal)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 167,12, N'Agrabatti Gou Ganga (Kewra)', NULL, N'Agrabatti Gou Ganga (Kewra)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 168,12, N'Agrbathi Gou Ganga -Mogra', NULL, N'Agrbathi Gou Ganga -Mogra', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 169,12, N'Agarabatti - Shree Sugandhi', NULL, N'Agarabatti - Shree Sugandhi', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 170,12, N'Agarabatti - Sugandhi Flora', NULL, N'Agarabatti - Sugandhi Flora', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 171,12, N'Agarabatti - Sugandhi Sambrani ', NULL, N'Agarabatti - Sugandhi Sambrani ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 172,12, N'Agarabatti - Sugandhi Sandal', NULL, N'Agarabatti - Sugandhi Sandal', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 173,12, N'Camphor - Om Bhakthi/Karpoora', NULL, N'Camphor - Om Bhakthi/Karpoora', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 174,12, N'Cotton Batti', NULL, N'Cotton Batti', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 175,12, N'Cotton Batti Big - Ramakanthi', NULL, N'Cotton Batti Big - Ramakanthi', N'0',0, CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 176,12, N'Cotton Batti Medium - Ramakanthi', NULL, N'Cotton Batti Medium - Ramakanthi', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 177,12, N'Cotton Batti Small -Ramakanthi-', NULL, N'Cotton Batti Small -Ramakanthi-', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 178,12, N'Flower Bathi/Hoo Batti - Ramakanthi', NULL, N'Flower Bathi/Hoo Batti - Ramakanthi', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 179,12, N'Gomaya Khanda', NULL, N'Gomaya Khanda', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 180,12, N'Gou Ganga Dhoopa', NULL, N'Gou Ganga Dhoopa', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 181,12, N'Gou Kanda ', NULL, N'Gou Kanda ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 182,12, N'Pure Kumkum (Ragabharathi)', NULL, N'Pure Kumkum (Ragabharathi)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 183,12, N'Pure Turmeric  Powder/Arishina/Haladi ', NULL, N'Pure Turmeric  Powder/Arishina/Haladi ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 184,12, N'Surabhi Dhoopa - Gou Ganga', NULL, N'Surabhi Dhoopa - Gou Ganga', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 185,12, N'Vibhuthi/Bhasma - Gou Ganga', NULL, N'Vibhuthi/Bhasma - Gou Ganga', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 186,12, N'Janivara/Yajnopavita - Tied', NULL, N'Janivara/Yajnopavita - Tied', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 187,13, N'Almond/Badam', NULL, N'Almond/Badam', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 188,13, N'Anjoora/Anjeer/Figs', NULL, N'Anjoora/Anjeer/Figs', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 189,13, N'Cashew/Godambi-2pieces-S', NULL, N'Cashew/Godambi-2pieces-S', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 190,13, N'Cashew/Godambi-Full-W320', NULL, N'Cashew/Godambi-Full-W320', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 191,13, N'Dry Dates /Kharjura', NULL, N'Dry Dates /Kharjura', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 192,13, N'Dry Grapes/Raisin', NULL, N'Dry Grapes/Raisin', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 193,13, N'Forest Honey', NULL, N'Forest Honey', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 194,13, N'Kokum Juice (sweet)/Punarpuli', NULL, N'Kokum Juice (sweet)/Punarpuli', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 195,13, N'Kokum Juice (Sugarless)/Punarpuli', NULL, N'Kokum Juice (Sugarless)/Punarpuli', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 196,13, N'Pure Honey', NULL, N'Pure Honey', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 197,14, N'Amrutasara/Gou Arka', NULL, N'Amrutasara/Gou Arka', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 198,14, N'Bilvasara (bilva patra Arka)', NULL, N'Bilvasara (bilva patra Arka)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 199,14, N'Goudhoolii (Herbal) ', NULL, N'Goudhoolii (Herbal) ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 200,14, N'Haridrasara (Turmaric Arka)', NULL, N'Haridrasara (Turmaric Arka)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 201,14, N'Nasasanjivini ', NULL, N'Nasasanjivini ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 202,14, N'Nivedana Pain balm', NULL, N'Nivedana Pain balm', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 203,14, N'Panchagavya Ghritha', NULL, N'Panchagavya Ghritha', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 204,14, N'Shamana Taila - Pain oil', NULL, N'Shamana Taila - Pain oil', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 205,14, N'Sucharana - Crack Heal', NULL, N'Sucharana - Crack Heal', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 206,14, N'Surabhi Sara/Gou Arka Capsule', NULL, N'Surabhi Sara/Gou Arka Capsule', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 207,14, N'Takrarista', NULL, N'Takrarista', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 208,14, N'Tulasi Arka Gou Ganga', NULL, N'Tulasi Arka Gou Ganga', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 209,14, N'Tulasisara ', NULL, N'Tulasisara ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 210,15, N'Ayuderm-Herbal Medicated Soap', NULL, N'Ayuderm-Herbal Medicated Soap', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 211,15, N'Ayukid-Herbal Baby Soap', NULL, N'Ayukid-Herbal Baby Soap', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 212,15, N'Bath Soap - Looks Herbal Soap', NULL, N'Bath Soap - Looks Herbal Soap', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 213,15, N'Bath Soap - Nirmalaganga Bath Scrub', NULL, N'Bath Soap - Nirmalaganga Bath Scrub', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 214,15, N'Bath Soap - Nirmalaganga-Neem Tulsi', NULL, N'Bath Soap - Nirmalaganga-Neem Tulsi', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 215,15, N'Bath Soap Multani Mitti', NULL, N'Bath Soap Multani Mitti', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 216,15, N'Bath Soap Panchagavya', NULL, N'Bath Soap Panchagavya', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 217,15, N'Bath Soap Red Sandal', NULL, N'Bath Soap Red Sandal', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 218,15, N'Bath Soap - Satwam -Coconut Cookies', NULL, N'Bath Soap - Satwam -Coconut Cookies', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 219,15, N'Bath Soap - Satwam-Kashaya', NULL, N'Bath Soap - Satwam-Kashaya', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 220,15, N'Bath Soap - Satwam-Lemon Grass', NULL, N'Bath Soap - Satwam-Lemon Grass', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 221,15, N'Hair Oil (Cocoguru)', NULL, N'Hair Oil (Cocoguru)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 222,15, N'Shampoo Panchagavya ', NULL, N'Shampoo Panchagavya ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 223,15, N'Shikaki powder', NULL, N'Shikaki powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 224,15, N'Sukanthi - face pack -Gou Ganga', NULL, N'Sukanthi - face pack -Gou Ganga', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 225,15, N'Tooth Powder - Gou Ganga', NULL, N'Tooth Powder - Gou Ganga', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 226,16, N'Navamrutha ', NULL, N'Navamrutha ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 227,16, N'Samrudhi Pest Repellant', NULL, N'Samrudhi Pest Repellant', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 228,16, N'Swarga Sara', NULL, N'Swarga Sara', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 229,16, N'Vermi Compost (Phalavathi)', NULL, N'Vermi Compost (Phalavathi)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 230,17, N'Amba Dish Wash ', NULL, N'Amba Dish Wash ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 231,17, N'Amba Multy purpose Cleaning liquid', NULL, N'Amba Multy purpose Cleaning liquid', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 232,17, N'Amba Multy Pupose-Neem  ', NULL, N'Amba Multy Pupose-Neem  ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 233,17, N'Amba Shubra-Toilet cleaner', NULL, N'Amba Shubra-Toilet cleaner', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 234,17, N'Cloth Cleaner', NULL, N'Cloth Cleaner', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 235,17, N'Cloth Cleaner-Refill', NULL, N'Cloth Cleaner-Refill', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 236,17, N'Detergent powder', NULL, N'Detergent powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 237,17, N'Dishwash liquid', NULL, N'Dishwash liquid', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 238,17, N'Dishwash liquid-Refill', NULL, N'Dishwash liquid-Refill', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 239,17, N'Floor Cleaner-Normal', NULL, N'Floor Cleaner-Normal', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 240,17, N'Floor Cleaner-Thick-Litchi Flavour', NULL, N'Floor Cleaner-Thick-Litchi Flavour', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 241,17, N'Floor Cleaner-Thick-Litchi Flavour-Refill', NULL, N'Floor Cleaner-Thick-Litchi Flavour-Refill', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 242,17, N'Floor Cleaner-Thick-Normal', NULL, N'Floor Cleaner-Thick-Normal', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 243,17, N'Floor Cleaner-Thick-Normal-Refill', NULL, N'Floor Cleaner-Thick-Normal-Refill', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 244,17, N'Glass Cleaner', NULL, N'Glass Cleaner', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 245,17, N'Hand Wash', NULL, N'Hand Wash', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 246,17, N'Hand Wash-Refill', NULL, N'Hand Wash-Refill', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 247,17, N'Phenyl - Gou Ganga', NULL, N'Phenyl - Gou Ganga', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 248,17, N'Mosquit-liquid Gou Ganga', NULL, N'Mosquit-liquid Gou Ganga', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 249,17, N'Mosquito Coil (Jumbo) Gou Ganga', NULL, N'Mosquito Coil (Jumbo) Gou Ganga', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 250,17, N'Mosquito Coil (Small) Gou Ganga', NULL, N'Mosquito Coil (Small) Gou Ganga', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 251,17, N'Mosquit-Set Gou Ganga', NULL, N'Mosquit-Set Gou Ganga', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 252,17, N'Multi Cleaner', NULL, N'Multi Cleaner', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 253,17, N'Toilet Cleaner', NULL, N'Toilet Cleaner', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 254,17, N'Toilet Cleaner-Refill', NULL, N'Toilet Cleaner-Refill', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 255,18, N'Amalaki Churna (Amla) ', NULL, N'Amalaki Churna (Amla) ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 256,18, N'Amalaki-Amla', NULL, N'Amalaki-Amla', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 257,18, N'Ashwagandha Churna  ', NULL, N'Ashwagandha Churna  ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 258,18, N'Ashwagandha Herb', NULL, N'Ashwagandha Herb', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 259,18, N'Bhumyamalaki Churna (Nela Nelli)', NULL, N'Bhumyamalaki Churna (Nela Nelli)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 260,18, N'Bilva Churna ', NULL, N'Bilva Churna ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 261,18, N'Black Pepper Powder', NULL, N'Black Pepper Powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 262,18, N'Bramhi Churna', NULL, N'Bramhi Churna', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 263,18, N'Guduchi Churna (Amruta balli)', NULL, N'Guduchi Churna (Amruta balli)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 264,18, N'Guduchi-Amruta Balli', NULL, N'Guduchi-Amruta Balli', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 265,18, N'Haritaki Churna ', NULL, N'Haritaki Churna ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 266,18, N'Karela Churna ', NULL, N'Karela Churna ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 267,18, N'Madhu Nashini Churna ', NULL, N'Madhu Nashini Churna ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 268,18, N'Musta/Badhramusti ', NULL, N'Musta/Badhramusti ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 269,18, N'Nimba Patra /Neem', NULL, N'Nimba Patra /Neem', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 270,18, N'Pippali/Hippili', NULL, N'Pippali/Hippili', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 271,18, N'Shatavari Churna ', NULL, N'Shatavari Churna ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 272,18, N'Shatavari root ', NULL, N'Shatavari root ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 273,18, N'Shunti Churna ', NULL, N'Shunti Churna ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 274,18, N'Shunti/Dry Ginger', NULL, N'Shunti/Dry Ginger', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 275,18, N'Talisadi Churna', NULL, N'Talisadi Churna', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 276,18, N'Triphala Churna ', NULL, N'Triphala Churna ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 277,18, N'Tulasi Churna ', NULL, N'Tulasi Churna ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 278,18, N'Ushira/Lavancha', NULL, N'Ushira/Lavancha', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 279,18, N'Vacha (baje) ', NULL, N'Vacha (baje) ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 280,18, N'Yashtimadhu Churna/Jestamadu', NULL, N'Yashtimadhu Churna/Jestamadu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 281,18, N'Yashtimadhu/Jestamadu', NULL, N'Yashtimadhu/Jestamadu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 282,19, N'Haridrarasa ', NULL, N'Haridrarasa ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 283,19, N'Masala Amla', NULL, N'Masala Amla', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 284,19, N'Masala Ginger', NULL, N'Masala Ginger', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2))) 
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductUnit] ON 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 1,1, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 2,2, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 3,2, N',2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 4,2, N',5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 5,3, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 6,3, N',2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 7,3, N',5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 8,4, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 9,5, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 10,5, N',2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 11,5, N',5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 12,5, N',10kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 13,5, N',25kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 14,6, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 15,6, N',2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 16,6, N',5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 17,6, N',25kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 18,7, N',2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 19,7, N',5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 20,8, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 21,8, N',2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 22,8, N',5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 23,8, N',10KG' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 24,8, N',25kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 25,9, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 26,9, N',2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 27,9, N',5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 28,9, N',10KG' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 29,9, N',25kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 30,10, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 31,10, N',2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 32,10, N',5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 33,10, N',10kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 34,10, N',25kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 35,11, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 36,11, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 37,12, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 38,13, N',500 g' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 39,14, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 40,14, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 41,15, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 42,16, N',250grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 43,16, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 44,16, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 45,17, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 46,17, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 47,18, N',500 g' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 48,19, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 49,19, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 50,20, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 51,20, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 52,21, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 53,21, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 54,21, N',2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 55,21, N',5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 56,22, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 57,23, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 58,23, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 59,24, N',250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 60,24, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 61,25, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 62,26, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 63,26, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 64,27, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 65,28, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 66,28, N',5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 67,29, N',250grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 68,29, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 69,30, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 70,31, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 71,31, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 72,32, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 73,32, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 74,33, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 75,34, N',250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 76,34, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 77,35, N',250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 78,35, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 79,36, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 80,37, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 81,38, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 82,38, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 83,39, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 84,40, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 85,40, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 86,41, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 87,42, N',450gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 88,42, N',900 gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 89,43, N',200gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 90,44, N',200grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 91,45, N',1kg ' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 92,45, N',2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 93,45, N',5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 94,46, N',250 Gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 95,47, N',250 Gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 96,48, N',1kg ' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 97,49, N',50grms' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 98,50, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 99,50, N',500Grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 100,50, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 101,51, N',20gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 102,51, N',50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 103,52, N',250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 104,52, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 105,53, N',250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 106,53, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 107,54, N',250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 108,54, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 109,55, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 110,56, N',50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 111,57, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 112,58, N',250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 113,58, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 114,59, N',200 g' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 115,59, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 116,60, N',10gms' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 117,61, N',2pc' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 118,61, N',4pc' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 119,62, N',200gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 120,62, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 121,63, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 122,64, N',250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 123,64, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 124,65, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 125,66, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 126,67, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 127,68, N',50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 128,69, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 129,70, N',250grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 130,70, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 131,70, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 132,71, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 133,72, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 134,73, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 135,74, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 136,74, N',200gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 137,75, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 138,76, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 139,77, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 140,78, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 141,78, N',200gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 142,79, N',200grms' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 143,80, N',200grms' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 144,81, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 145,82, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 146,83, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 147,84, N',500Grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 148,85, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 149,86, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 150,87, N',300grms' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 151,88, N',500grms' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 152,89, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 153,90, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 154,91, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 155,92, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 156,93, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 157,94, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 158,95, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 159,96, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 160,97, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 161,98, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 162,99, N',200gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 163,100, N',50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 164,101, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 165,102, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 166,103, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 167,104, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 168,105, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 169,105, N',250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 170,105, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 171,106, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 172,107, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 173,108, N',250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 174,108, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 175,109, N',250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 176,110, N',500Grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 177,110, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 178,111, N',500Grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 179,112, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 180,113, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 181,114, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 182,115, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 183,116, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 184,117, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 185,118, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 186,118, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 187,119, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 188,120, N',Cake' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 189,121, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 190,121, N',1 KG' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 191,122, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 192,123, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 193,124, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 194,124, N',1 KG' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 195,125, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 196,126, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 197,127, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 198,128, N',2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 199,128, N',5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 200,128, N',25kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 201,129, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 202,129, N',2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 203,129, N',5 Kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 204,129, N',25 Kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 205,130, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 206,130, N',2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 207,130, N',5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 208,131, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 209,132, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 210,132, N',5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 211,132, N',10kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 212,132, N',25kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 213,133, N',200Gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 214,133, N',500Gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 215,133, N',1 kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 216,134, N',500Gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 217,134, N',1 kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 218,135, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 219,135, N',2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 220,135, N',5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 221,136, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 222,137, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 223,138, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 224,138, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 225,139, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 226,139, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 227,140, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 228,140, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 229,141, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 230,141, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 231,142, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 232,142, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 233,143, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 234,143, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 235,144, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 236,144, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 237,145, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 238,146, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 239,147, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 240,148, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 241,149, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 242,150, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 243,150, N',1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 244,151, N',100ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 245,151, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 246,152, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 247,152, N',1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 248,153, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 249,153, N',1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 250,154, N',1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 251,155, N',1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 252,156, N',1 ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 253,156, N',250ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 254,156, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 255,157, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 256,157, N',1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 257,158, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 258,158, N',1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 259,159, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 260,159, N',1Ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 261,159, N',5Ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 262,160, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 263,161, N',250ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 264,161, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 265,162, N',96Nos' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 266,162, N',16gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 267,163, N',96no' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 268,164, N',16gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 269,164, N',96Nos' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 270,165, N',96Nos' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 271,166, N',16gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 272,166, N',96 Nos' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 273,167, N',16gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 274,167, N',96Nos' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 275,168, N',96 Nos' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 276,169, N',30gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 277,170, N',50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 278,171, N',200gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 279,172, N',50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 280,173, N',60pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 281,174, N',200pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 282,175, N',100Pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 283,176, N',100Pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 284,177, N',200Pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 285,178, N',100Pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 286,179, N',50 pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 287,180, N',15cones' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 288,181, N',5 Cakes' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 289,182, N',50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 290,182, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 291,182, N',200gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 292,182, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 293,182, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 294,183, N',50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 295,183, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 296,183, N',200grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 297,183, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 298,183, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 299,184, N',20 Nos' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 300,185, N',50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 301,186, N',4pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 302,187, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 303,187, N',250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 304,187, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 305,188, N',200grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 306,189, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 307,189, N',250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 308,189, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 309,190, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 310,190, N',250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 311,190, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 312,191, N',200gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 313,191, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 314,192, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 315,192, N',250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 316,192, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 317,193, N',250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 318,193, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 319,193, N',1000gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 320,194, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 321,194, N',1Ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 322,195, N',750ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 323,196, N',250grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 324,196, N',500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 325,196, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 326,197, N',100ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 327,197, N',200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 328,197, N',450ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 329,197, N',900ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 330,198, N',200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 331,199, N',10no' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 332,200, N',200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 333,201, N',20ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 334,202, N',10gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 335,203, N',50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 336,204, N',100ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 337,205, N',10gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 338,206, N',30 Capsules' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 339,206, N',100 Caps' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 340,207, N',200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 341,208, N',200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 342,208, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 343,209, N',200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 344,210, N',75 gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 345,211, N',75 gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 346,212, N',75grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 347,213, N',70gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 348,214, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 349,215, N',100 gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 350,215, N',125 gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 351,216, N',75 gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 352,216, N',125 gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 353,217, N',75 gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 354,217, N',125 gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 355,218, N',75grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 356,219, N',75grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 357,220, N',75grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 358,221, N',100ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 359,222, N',100ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 360,222, N',200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 361,223, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 362,223, N',500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 363,224, N',100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 364,225, N',60gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 365,226, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 366,227, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 367,228, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 368,228, N',2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 369,228, N',5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 370,228, N',40kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 371,229, N',1Kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 372,229, N',2Kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 373,229, N',5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 374,229, N',25kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 375,229, N',50kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 376,230, N',250ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 377,231, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 378,231, N',1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 379,232, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 380,233, N',400ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 381,234, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 382,235, N',1 ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 383,236, N',1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 384,237, N',250ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 385,238, N',1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 386,239, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 387,240, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 388,241, N',1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 389,242, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 390,243, N',1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 391,244, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 392,245, N',250 ML' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 393,246, N',1 ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 394,247, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 395,247, N',1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 396,247, N',5ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 397,248, N',1pc' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 398,249, N',10pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 399,250, N',10pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 400,251, N',1 Set' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 401,252, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 402,253, N',500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 403,254, N',1 ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 404,255, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 405,256, N',50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 406,257, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 407,258, N',50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 408,259, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 409,260, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 410,261, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 411,262, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 412,263, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 413,264, N',50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 414,265, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 415,266, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 416,267, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 417,268, N',50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 418,269, N',50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 419,270, N',50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 420,271, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 421,272, N',50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 422,273, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 423,274, N',50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 424,275, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 425,276, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 426,277, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 427,278, N',50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 428,279, N',50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 429,280, N',100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 430,281, N',50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 431,282, N',10ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 432,283, N',40grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 433,284, N',25grm' ) 
GO       
SET IDENTITY_INSERT [dbo].[ProductUnit] OFF 
GO
SET IDENTITY_INSERT [dbo].[Role] ON 
GO
INSERT [dbo].[Role] ([Id], [Name], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, N'WholeSeller', N'WholeSeller', -1, CAST(N'2020-12-28T00:00:00.000' AS DateTime), -1, CAST(N'2020-12-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Role] ([Id], [Name], [Description], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, N'SalesMan', N'SalesMan', -1, CAST(N'2020-12-28T00:00:00.000' AS DateTime), -1, CAST(N'2020-12-28T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([Id], [Name], [UserName], [Password], [MobileNumber], [PhoneNumber], [Email], [UserCode], [Address], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, N'Gramarajya', N'Gramarajya', N'YiTHHxgkY7MXAB0LwbtxQSo+xcRpbSLZonH1zEn2ijE=', N'1234567890', NULL, NULL, NULL, N'Mangalore', -1, CAST(N'2020-12-28T00:00:00.000' AS DateTime), -1, CAST(N'2020-12-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[User] ([Id], [Name], [UserName], [Password], [MobileNumber], [PhoneNumber], [Email], [UserCode], [Address], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, N'Buvan', N'Buvan@123', N'Pta+fhCT/gEkKo01w2QwRVo/HojxhX3DLkkWnzueSXI=', N'1234567890', NULL, NULL, NULL, N'Mangalore', -1, CAST(N'2021-06-01T00:00:00.000' AS DateTime), -1, CAST(N'2021-06-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[User] ([Id], [Name], [UserName], [Password], [MobileNumber], [PhoneNumber], [Email], [UserCode], [Address], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, N'Vikram', N'Vikram@123', N'/Ir+aHowHWp6OtNSfDE17a2E2fQWoC7iJXFVl0PpBK0=', N'1234567890', NULL, NULL, NULL, N'Mangalore', -1, CAST(N'2021-06-01T00:00:00.000' AS DateTime), -1, CAST(N'2021-06-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[User] ([Id], [Name], [UserName], [Password], [MobileNumber], [PhoneNumber], [Email], [UserCode], [Address], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, N'Pavan', N'Pavan', N'LUFSzo5Ng5PYiwiW2Fn6UXvxDWZqKF+sq4RKXB/b2SQ=', N'1234567890', NULL, NULL, NULL, N'Mangalore', -1, CAST(N'2021-06-01T00:00:00.000' AS DateTime), -1, CAST(N'2021-06-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[User] ([Id], [Name], [UserName], [Password], [MobileNumber], [PhoneNumber], [Email], [UserCode], [Address], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (5, N'Ganesh', N'Ganesh', N'ZkSGD2RDgY6dcWBjdrl/8/kSUD3YB02rQ/og0DHUcWE=', N'1234567890', NULL, NULL, NULL, N'Mangalore', -1, CAST(N'2021-06-01T00:00:00.000' AS DateTime), -1, CAST(N'2021-06-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[User] ([Id], [Name], [UserName], [Password], [MobileNumber], [PhoneNumber], [Email], [UserCode], [Address], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (6, N'Avinash', N'Avinash@123', N'64l4eGu3NrCKPyfA8SXoqi04rItVhFMkInlhntVup7E=', N'1234567890', NULL, NULL, NULL, N'Mangalore', -1, CAST(N'2021-06-01T00:00:00.000' AS DateTime), -1, CAST(N'2021-06-01T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 
GO
INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, 1, 1, -1, CAST(N'2020-12-28T00:00:00.000' AS DateTime), -1, CAST(N'2020-12-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, 2, 2, -1, CAST(N'2021-06-01T00:00:00.000' AS DateTime), -1, CAST(N'2021-06-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, 4, 2, -1, CAST(N'2021-06-01T00:00:00.000' AS DateTime), -1, CAST(N'2021-06-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, 5, 2, -1, CAST(N'2021-06-01T00:00:00.000' AS DateTime), -1, CAST(N'2021-06-01T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
