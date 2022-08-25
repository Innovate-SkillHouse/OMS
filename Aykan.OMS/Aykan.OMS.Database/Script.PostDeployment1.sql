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

USE [Aykan.OMS.Database]
GO
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
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (1, N'Pooja Items', N'Pooja Items')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (2, N'Grocery Items', N'Grocery Items')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (3, N'Naturals', N'Naturals')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (4, N'MILLETS', N'MILLETS')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (5, N'Cooking and Pooja Oils', N'Cooking and Pooja Oils')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (6, N'Coffee,T &other Powders', N'Coffee,T &other Powders')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (7, N'DRY FRUITS & JUICE', N'DRY FRUITS & JUICE')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (8, N'GOU Ganga Products', N'GOU Ganga Products')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (9, N'Masala & Spices', N'Masala & Spices')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (10, N'HEMS Items', N'HEMS Items')
GO
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 1,1, N'Pure Turmeric powder', NULL, N'Pure Turmeric powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 2,1, N'Pure Kumkum', NULL, N'Pure Kumkum', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 3,1, N'Sugandhi Flora', NULL, N'Sugandhi Flora', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 4,1, N'Sugandhi Agarbathi-Sambrani', NULL, N'Sugandhi Agarbathi-Sambrani', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 5,1, N'Sugandhi Agarbathi-Sandal', NULL, N'Sugandhi Agarbathi-Sandal', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 6,1, N'Shree Sugandhi', NULL, N'Shree Sugandhi', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 7,1, N'Camphor-Om Bhakthi', NULL, N'Camphor-Om Bhakthi', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 8,1, N'Cotton Batti', NULL, N'Cotton Batti', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 9,1, N'Ramakanthi-Cotton Batti Small', NULL, N'Ramakanthi-Cotton Batti Small', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 10,1, N'Ramakanthi-Cotton Batti Medium', NULL, N'Ramakanthi-Cotton Batti Medium', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 11,1, N'Ramakanthi-Cotton Batti Big', NULL, N'Ramakanthi-Cotton Batti Big', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 12,2, N'Sona Rice-Old', NULL, N'Sona Rice-Old', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 13,2, N'Sona Rice--Fine Raw', NULL, N'Sona Rice--Fine Raw', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 14,2, N'Raw Rice (Alur Sanna)', NULL, N'Raw Rice (Alur Sanna)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 15,2, N'Sona rice sagara', NULL, N'Sona rice sagara', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 16,2, N'Dosa Rice ', NULL, N'Dosa Rice ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 17,2, N'Dosa Rice-Siddapura', NULL, N'Dosa Rice-Siddapura', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 18,2, N'Red Boiled Rice', NULL, N'Red Boiled Rice', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 19,2, N'Jeera Rice', NULL, N'Jeera Rice', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 20,2, N'Basumati Rice', NULL, N'Basumati Rice', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 21,2, N'Thoor Dal Premium', NULL, N'Thoor Dal Premium', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 22,2, N'Urid Dal', NULL, N'Urid Dal', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 23,2, N'Urid Gram', NULL, N'Urid Gram', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 24,2, N'Moong Dal', NULL, N'Moong Dal', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 25,2, N'Bengal Gram Dal', NULL, N'Bengal Gram Dal', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 26,2, N'Fried Gram Dal', NULL, N'Fried Gram Dal', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 27,2, N'Horse Gram', NULL, N'Horse Gram', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 28,2, N'Green Peas', NULL, N'Green Peas', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 29,2, N'Moong Gram', NULL, N'Moong Gram', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 30,2, N'Jeera ', NULL, N'Jeera ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 31,2, N'Fenugreek', NULL, N'Fenugreek', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 32,2, N'Mustard', NULL, N'Mustard', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 33,2, N'Byadagi Mirchi', NULL, N'Byadagi Mirchi', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 34,2, N'Guntur chilli', NULL, N'Guntur chilli', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 35,2, N'Tamarind', NULL, N'Tamarind', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 36,2, N'Coriander', NULL, N'Coriander', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 37,2, N'Om Kalu (Ajwain)', NULL, N'Om Kalu (Ajwain)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 38,2, N'Black Till', NULL, N'Black Till', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 39,2, N'White Till', NULL, N'White Till', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 40,2, N'Nylon Sago Rice', NULL, N'Nylon Sago Rice', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 41,2, N'Sagoo Rice normal', NULL, N'Sagoo Rice normal', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 42,2, N'Idly Rava', NULL, N'Idly Rava', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 43,2, N'Bombay Rava', NULL, N'Bombay Rava', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 44,2, N'Bansi Rava', NULL, N'Bansi Rava', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 45,2, N'Chiroti rava', NULL, N'Chiroti rava', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 46,2, N'Broken Wheat', NULL, N'Broken Wheat', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 47,2, N'Bengal Gram  ', NULL, N'Bengal Gram  ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 48,2, N'Gram Flour', NULL, N'Gram Flour', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 49,2, N'Groundnut', NULL, N'Groundnut', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 50,2, N'Wheat flour gramarajya', NULL, N'Wheat flour gramarajya', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 51,2, N'Rice flour gramarajya', NULL, N'Rice flour gramarajya', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 52,2, N'Ragi flour gramarajya', NULL, N'Ragi flour gramarajya', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 53,2, N'Jawar flour gramarajya', NULL, N'Jawar flour gramarajya', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 54,2, N'Vermicelli (Ganesha)', NULL, N'Vermicelli (Ganesha)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 55,2, N'Thick Beaten Rice (White)', NULL, N'Thick Beaten Rice (White)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 56,2, N'Thin Beaten Rice (White)', NULL, N'Thin Beaten Rice (White)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 57,2, N'Medium avalakki', NULL, N'Medium avalakki', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 58,2, N'Aralu', NULL, N'Aralu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 59,2, N'Puffed Rice Salted', NULL, N'Puffed Rice Salted', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 60,2, N'Puffed Rice (Un Salted)', NULL, N'Puffed Rice (Un Salted)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 61,2, N'Table Salt', NULL, N'Table Salt', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 62,2, N'Sugar (Regular)', NULL, N'Sugar (Regular)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 63,2, N'Sugar Candy-Red Kallu Sakkare', NULL, N'Sugar Candy-Red Kallu Sakkare', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 64,2, N'Sugar Candy-White', NULL, N'Sugar Candy-White', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 65,2, N'Saindava  Lavana', NULL, N'Saindava  Lavana', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 66,2, N'Saindava  Lavana-Crystal', NULL, N'Saindava  Lavana-Crystal', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 67,2, N'Kabul Chenna', NULL, N'Kabul Chenna', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 68,2, N'Cowpeas seeds -Brown', NULL, N'Cowpeas seeds -Brown', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 69,2, N'Flax seeds', NULL, N'Flax seeds', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 70,2, N'Garlic Papad', NULL, N'Garlic Papad', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 71,2, N'Urid Papad Masala ', NULL, N'Urid Papad Masala ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 72,2, N'Chilli Papad ', NULL, N'Chilli Papad ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 73,2, N'Papad green chilli', NULL, N'Papad green chilli', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 74,2, N'Plain Papad ', NULL, N'Plain Papad ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 75,2, N'Masala Chilli', NULL, N'Masala Chilli', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 76,2, N'Sabakki Sandige', NULL, N'Sabakki Sandige', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 77,2, N'Jeera Midi-Nammooru', NULL, N'Jeera Midi-Nammooru', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 78,2, N'Appe Midi-Nammooru', NULL, N'Appe Midi-Nammooru', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 79,2, N'Rippon Pete Appe Midi', NULL, N'Rippon Pete Appe Midi', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 80,2, N'Mixed pickle-Rippon Pet', NULL, N'Mixed pickle-Rippon Pet', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 81,2, N'Cut Mango-Rippon Pet', NULL, N'Cut Mango-Rippon Pet', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 82,2, N'Amla Pickle- Rippon Pet', NULL, N'Amla Pickle- Rippon Pet', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 83,2, N'Cut Mango -South Canara Style ', NULL, N'Cut Mango -South Canara Style ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 84,2, N'Cut Mango with Oil -South Canara Style ', NULL, N'Cut Mango with Oil -South Canara Style ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 85,2, N'Mango Thokku', NULL, N'Mango Thokku', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 86,2, N'Masala Ginger', NULL, N'Masala Ginger', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 87,2, N'Masala Amla', NULL, N'Masala Amla', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 88,2, N'Dry VateHuli  Powder', NULL, N'Dry VateHuli  Powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 89,3, N'Rajamudi Rice', NULL, N'Rajamudi Rice', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 90,3, N'Sona Rice-Old-Polished-Organic', NULL, N'Sona Rice-Old-Polished-Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 91,3, N'Sona Rice-Old-UnPolished-Organic', NULL, N'Sona Rice-Old-UnPolished-Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 92,3, N'Thoor Dal-Organic', NULL, N'Thoor Dal-Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 93,3, N'Ragi- Organic', NULL, N'Ragi- Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 94,3, N'Rajma Red-Organic', NULL, N'Rajma Red-Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 95,3, N'Rajma Chitra-Organic', NULL, N'Rajma Chitra-Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 96,3, N'Bengal gram Dal-Organic', NULL, N'Bengal gram Dal-Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 97,3, N'Urid Dal-Organic', NULL, N'Urid Dal-Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 98,3, N'Moong Gram-Organic', NULL, N'Moong Gram-Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 99,3, N'Moong Dal-Organic', NULL, N'Moong Dal-Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 100,3, N'Red Beaten Rice-Thick-Organic', NULL, N'Red Beaten Rice-Thick-Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 101,3, N'Red Beaten Rice-Thin-Organic', NULL, N'Red Beaten Rice-Thin-Organic', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 102,3, N'Organic Rice', NULL, N'Organic Rice', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 103,3, N'Red Rice', NULL, N'Red Rice', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 104,3, N'Soft Jaggery-Jar', NULL, N'Soft Jaggery-Jar', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 105,3, N'Jaggery-Bucket', NULL, N'Jaggery-Bucket', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 106,3, N'Jaggery-Bucket-Set of 2', NULL, N'Jaggery-Bucket-Set of 2', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 107,3, N'Jaggery-Square-Square', NULL, N'Jaggery-Square-Square', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 108,3, N'Jaggery Pieces', NULL, N'Jaggery Pieces', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 109,3, N'Jaggery Plate', NULL, N'Jaggery Plate', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 110,3, N'Jaggery Powder', NULL, N'Jaggery Powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 111,3, N'Liquid Jaggery ', NULL, N'Liquid Jaggery ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 112,3, N'Red Sea salt ', NULL, N'Red Sea salt ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 113,3, N'Natural Brown Sugar', NULL, N'Natural Brown Sugar', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 114,3, N'Minaral Brown Sugar', NULL, N'Minaral Brown Sugar', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 115,4, N'Navane/Foxtail Millet', NULL, N'Navane/Foxtail Millet', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 116,4, N'Aarka / Kodo Millet', NULL, N'Aarka / Kodo Millet', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 117,4, N'Oodalu / Barnyard Millet', NULL, N'Oodalu / Barnyard Millet', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 118,4, N'Same/ Little Millet', NULL, N'Same/ Little Millet', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 119,4, N'Baragu / Proso Millet', NULL, N'Baragu / Proso Millet', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 120,4, N'Sajje/Pearl Millet', NULL, N'Sajje/Pearl Millet', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 121,4, N'Korale/ Brown Top Millet ', NULL, N'Korale/ Brown Top Millet ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 122,5, N'Hair Oil (cocoguru)', NULL, N'Hair Oil (cocoguru)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 123,5, N'Coconut Oil-Roasted-Pouch', NULL, N'Coconut Oil-Roasted-Pouch', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 124,5, N'Coconut Oil-Cold press-Pouch', NULL, N'Coconut Oil-Cold press-Pouch', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 125,5, N'Virgin Coconut Oil', NULL, N'Virgin Coconut Oil', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 126,5, N'Pure gingilly oil-Cocoguru', NULL, N'Pure gingilly oil-Cocoguru', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 127,5, N'Groundnut oil-GR', NULL, N'Groundnut oil-GR', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 128,5, N'Emammi Sunflower', NULL, N'Emammi Sunflower', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 129,5, N'Emammi Rice Brane oil', NULL, N'Emammi Rice Brane oil', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 130,5, N'Gingly Oil- Amrutham', NULL, N'Gingly Oil- Amrutham', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 131,5, N'Desi Ghee', NULL, N'Desi Ghee', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 132,5, N'Coconut oil Panchami', NULL, N'Coconut oil Panchami', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 133,5, N'Gingly Oil(Ghana)', NULL, N'Gingly Oil(Ghana)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 134,6, N'Coffee Powder Filter-Gramarajya', NULL, N'Coffee Powder Filter-Gramarajya', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 135,6, N'Coffee Powder Filter- Parimala', NULL, N'Coffee Powder Filter- Parimala', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 136,6, N'Kashaya Powder', NULL, N'Kashaya Powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 137,6, N'Tea Powder (Gold Dust)', NULL, N'Tea Powder (Gold Dust)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 138,6, N'Tea powder (leaf) K.T. Gold', NULL, N'Tea powder (leaf) K.T. Gold', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 139,6, N'Shunti Coffee', NULL, N'Shunti Coffee', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 140,6, N'Chilly Powedr (Nice)', NULL, N'Chilly Powedr (Nice)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 141,6, N'Sambar Powder', NULL, N'Sambar Powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 142,6, N'Rasam Powder', NULL, N'Rasam Powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 143,6, N'Vangeebath Powder', NULL, N'Vangeebath Powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 144,6, N'Urid Dal Chatni Powder', NULL, N'Urid Dal Chatni Powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 145,6, N'Bisibelebath Powder', NULL, N'Bisibelebath Powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 146,6, N'Badam Drink', NULL, N'Badam Drink', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 147,6, N'Ragi Huri Hittu', NULL, N'Ragi Huri Hittu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 148,6, N'Jola Aralittu', NULL, N'Jola Aralittu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 149,7, N'Cocum Juice (sweet)', NULL, N'Cocum Juice (sweet)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 150,7, N'Cocum Juice -Sugar Less', NULL, N'Cocum Juice -Sugar Less', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 151,7, N'Pure Honey', NULL, N'Pure Honey', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 152,7, N'Forest Honey', NULL, N'Forest Honey', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 153,7, N'Almond', NULL, N'Almond', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 154,7, N'Dry Dates ', NULL, N'Dry Dates ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 155,7, N'Dry Grapes', NULL, N'Dry Grapes', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 156,7, N'Anjoora', NULL, N'Anjoora', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 157,7, N'Cashew-Full-W320', NULL, N'Cashew-Full-W320', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 158,7, N'Cashew-2pieces-S', NULL, N'Cashew-2pieces-S', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 159,8, N'Amrutasara', NULL, N'Amrutasara', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 160,8, N'Amruthasaara', NULL, N'Amruthasaara', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 161,8, N'Thulasi Arka', NULL, N'Thulasi Arka', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 162,8, N'Phenyl', NULL, N'Phenyl', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 163,8, N'Nivedana', NULL, N'Nivedana', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 164,8, N'Sucharana ', NULL, N'Sucharana ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 165,8, N'Sukanthi', NULL, N'Sukanthi', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 166,8, N'Tooth Powder', NULL, N'Tooth Powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 167,8, N'Nirmalaganga', NULL, N'Nirmalaganga', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 168,8, N'Nirmalaganga-Neem Tulsi', NULL, N'Nirmalaganga-Neem Tulsi', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 169,8, N'Shamana Taila ', NULL, N'Shamana Taila ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 170,8, N'Vibhuthi', NULL, N'Vibhuthi', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 171,8, N'Mosquito Coil (Jumbo)', NULL, N'Mosquito Coil (Jumbo)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 172,8, N'Mosquito Coil (Small)', NULL, N'Mosquito Coil (Small)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 173,8, N'Go Ganga Dhoopa', NULL, N'Go Ganga Dhoopa', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 174,8, N'Surabhi Dhoopa', NULL, N'Surabhi Dhoopa', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 175,8, N'Go Ganga Agrabatti (Sandal)', NULL, N'Go Ganga Agrabatti (Sandal)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 176,8, N'Gou Ganga Agarbatti (jasmine)', NULL, N'Gou Ganga Agarbatti (jasmine)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 177,8, N'Agarbatti (Champa)', NULL, N'Agarbatti (Champa)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 178,8, N'Go Ganga Agrabatti (Rose)', NULL, N'Go Ganga Agrabatti (Rose)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 179,8, N'Go Ganga Agrabatti (Kewra)', NULL, N'Go Ganga Agrabatti (Kewra)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 180,8, N'Gou Ganga Agarbatti (Lavender)', NULL, N'Gou Ganga Agarbatti (Lavender)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 181,8, N'Gou Ganga Agrbathi-Mogra', NULL, N'Gou Ganga Agrbathi-Mogra', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 182,8, N'Goudhoolii (Herbal)', NULL, N'Goudhoolii (Herbal)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 183,8, N'Gomaya Khanda', NULL, N'Gomaya Khanda', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 184,8, N'Samrudhi Pest Repellant', NULL, N'Samrudhi Pest Repellant', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 185,8, N'Navamrutha', NULL, N'Navamrutha', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 186,8, N'Takrarista', NULL, N'Takrarista', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 187,8, N'Tulasisara', NULL, N'Tulasisara', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 188,8, N'Bilvasara', NULL, N'Bilvasara', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 189,8, N'Haridrasara', NULL, N'Haridrasara', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 190,8, N'Nasasanjivini', NULL, N'Nasasanjivini', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 191,8, N'Mosquit-Set', NULL, N'Mosquit-Set', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 192,8, N'Mosquit-liquid', NULL, N'Mosquit-liquid', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 193,8, N'Janivara', NULL, N'Janivara', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 194,8, N'Panchagavya shampoo', NULL, N'Panchagavya shampoo', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 195,8, N'Panchagavya Soap', NULL, N'Panchagavya Soap', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 196,8, N'Panchagavya Ghritha', NULL, N'Panchagavya Ghritha', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 197,8, N'Multani Mitti Soap', NULL, N'Multani Mitti Soap', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 198,8, N'Red Sandal Soap', NULL, N'Red Sandal Soap', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 199,8, N'Ayuderm-Herbal Medicated Soap', NULL, N'Ayuderm-Herbal Medicated Soap', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 200,8, N'Ayukid-Herbal Baby Soap', NULL, N'Ayukid-Herbal Baby Soap', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 201,8, N'Looks Herbal Soap', NULL, N'Looks Herbal Soap', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 202,8, N'Vermi Compost', NULL, N'Vermi Compost', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 203,8, N'Swarga Sara', NULL, N'Swarga Sara', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 204,8, N'Detergent powder', NULL, N'Detergent powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 205,8, N'Amba Multy purpose liquid', NULL, N'Amba Multy purpose liquid', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 206,8, N'Shikaki powder', NULL, N'Shikaki powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 207,8, N'Shikaki powder-Big', NULL, N'Shikaki powder-Big', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 208,8, N'Goujwaala', NULL, N'Goujwaala', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 209,8, N'GouKanda', NULL, N'GouKanda', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 210,8, N'Amba Neem ', NULL, N'Amba Neem ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 211,8, N'Amba Shubra', NULL, N'Amba Shubra', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 212,8, N'Amba Dish Wash', NULL, N'Amba Dish Wash', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 213,8, N'Hand Wash', NULL, N'Hand Wash', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 214,8, N'Hand Wash-Refill', NULL, N'Hand Wash-Refill', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 215,8, N'Floor Cleaner-Normal', NULL, N'Floor Cleaner-Normal', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 216,8, N'Floor Cleaner-Thick-Normal', NULL, N'Floor Cleaner-Thick-Normal', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 217,8, N'Floor Cleaner-Thick-Litchi Flavour', NULL, N'Floor Cleaner-Thick-Litchi Flavour', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 218,8, N'Toilet Cleaner', NULL, N'Toilet Cleaner', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 219,8, N'Toilet Cleaner-Refill', NULL, N'Toilet Cleaner-Refill', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 220,8, N'Dishwash', NULL, N'Dishwash', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 221,8, N'Multi Cleaner', NULL, N'Multi Cleaner', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 222,8, N'Cloth Cleaner', NULL, N'Cloth Cleaner', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 223,8, N'Cloth Cleaner-Refill', NULL, N'Cloth Cleaner-Refill', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 224,8, N'Glass Cleaner', NULL, N'Glass Cleaner', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 225,8, N'Haridrarasa', NULL, N'Haridrarasa', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 226,8, N'Satwam Soap-Lemon Grass', NULL, N'Satwam Soap-Lemon Grass', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 227,8, N'Satwam Soap-Kashaya', NULL, N'Satwam Soap-Kashaya', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 228,8, N'Satwam Soap-Coconut Cookies', NULL, N'Satwam Soap-Coconut Cookies', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 229,9, N'Pepper', NULL, N'Pepper', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 230,9, N'Cooking Soda', NULL, N'Cooking Soda', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 231,9, N'Corn Flour', NULL, N'Corn Flour', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 232,9, N'Turmeric Stick', NULL, N'Turmeric Stick', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 233,9, N'Poppy Seed', NULL, N'Poppy Seed', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 234,9, N'Cardamom', NULL, N'Cardamom', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 235,9, N'Clove', NULL, N'Clove', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 236,9, N'Star Anise', NULL, N'Star Anise', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 237,9, N'Cinnamon (MASALA STEM)', NULL, N'Cinnamon (MASALA STEM)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 238,9, N'Jayikai', NULL, N'Jayikai', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 239,9, N'Jayikai patre', NULL, N'Jayikai patre', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 240,9, N'Hing Powder', NULL, N'Hing Powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 241,9, N'Barley', NULL, N'Barley', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 242,9, N'Sommpu', NULL, N'Sommpu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 243,10, N'Surabhi Sara', NULL, N'Surabhi Sara', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 244,10, N'OM Bhakti - Pancha Deepa Oil (500 ML)', NULL, N'OM Bhakti - Pancha Deepa Oil (500 ML)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 245,10, N'AMALAKI CHURNA(Amla) ', NULL, N'AMALAKI CHURNA(Amla) ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 246,10, N'ASHWAGANDHA CHURNA  ', NULL, N'ASHWAGANDHA CHURNA  ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 247,10, N'BILVA CHURNA ', NULL, N'BILVA CHURNA ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 248,10, N'BRAHMI CHURNA ', NULL, N'BRAHMI CHURNA ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 249,10, N'BHUMYAMALAKI - CHURNA(Nela Nelli)', NULL, N'BHUMYAMALAKI - CHURNA(Nela Nelli)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 250,10, N'GUDUCHI CHURNA(amruthaballi)', NULL, N'GUDUCHI CHURNA(amruthaballi)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 251,10, N'KARELA CHURNA- ', NULL, N'KARELA CHURNA- ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 252,10, N'MADHUNASHINI CHURNA - ', NULL, N'MADHUNASHINI CHURNA - ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 253,10, N'SHATAVARI CHURNA - ', NULL, N'SHATAVARI CHURNA - ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 254,10, N'SHUNTI CHURNA - ', NULL, N'SHUNTI CHURNA - ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 255,10, N'TULSI CHURNA - ', NULL, N'TULSI CHURNA - ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 256,10, N'TALISADI CHURNA -', NULL, N'TALISADI CHURNA -', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 257,10, N'TRIPHALA CHURNA - ', NULL, N'TRIPHALA CHURNA - ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 258,10, N'Yashtimadhu Churna ', NULL, N'Yashtimadhu Churna ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 259,10, N'Haritaki churna ', NULL, N'Haritaki churna ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 260,10, N'Ashwagandha ', NULL, N'Ashwagandha ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 261,10, N'Amalaki-Amla', NULL, N'Amalaki-Amla', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 262,10, N'Guduchi-Amruta Balli', NULL, N'Guduchi-Amruta Balli', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 263,10, N'Shatavari root ', NULL, N'Shatavari root ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 264,10, N'Shunti ', NULL, N'Shunti ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 265,10, N'Vacha (baje) ', NULL, N'Vacha (baje) ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 266,10, N'Yashtimadhu-Jestamadu', NULL, N'Yashtimadhu-Jestamadu', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 267,10, N'Nimba Patra -Neem', NULL, N'Nimba Patra -Neem', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 268,10, N'Musta( badhramusti )', NULL, N'Musta( badhramusti )', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 269,10, N'Ushira ( Lavancha', NULL, N'Ushira ( Lavancha', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 270,10, N'Pippali-Hippili', NULL, N'Pippali-Hippili', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 271,10, N'Satwam Water-Set of 24', NULL, N'Satwam Water-Set of 24', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 272,10, N'Satwam Water-Set of 12', NULL, N'Satwam Water-Set of 12', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 273,10, N'Satwam Water', NULL, N'Satwam Water', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 274,10, N'Sabja (BASIL/KAMA KASTURI)Seeds', NULL, N'Sabja (BASIL/KAMA KASTURI)Seeds', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 275,10, N'Chia Seeds', NULL, N'Chia Seeds', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 276,10, N'Kalu Jeerige/KALONJI/KALA JEERA', NULL, N'Kalu Jeerige/KALONJI/KALA JEERA', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 277,10, N'KOKUM/PUNARPULI Shells', NULL, N'KOKUM/PUNARPULI Shells', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductUnit] ON 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 1, 1, N'50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 2, 1, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 3, 1, N'200grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 4, 1, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 5, 1, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 6, 2, N'50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 7, 2, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 8, 2, N'200gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 9, 2, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 10, 2, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 11, 3, N'50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 12, 4, N'200gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 13, 5, N'50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 14, 6, N'30gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 15, 7, N'60pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 16, 8, N'200pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 17, 9, N'200Pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 18, 10, N'100Pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 19, 11, N'100Pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 20, 12, N'5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 21, 12, N'25kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 22, 12, N'10 kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 23, 12, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 24, 12, N'2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 25, 13, N'5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 26, 13, N'25kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 27, 13, N'10 kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 28, 13, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 29, 13, N'2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 30, 14, N'5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 31, 14, N'10kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 32, 14, N'25kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 33, 14, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 34, 14, N'2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 35, 15, N'2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 36, 15, N'5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 37, 15, N'25kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 38, 16, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 39, 16, N'2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 40, 16, N'5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 41, 17, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 42, 17, N'2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 43, 17, N'5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 44, 18, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 45, 18, N'2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 46, 18, N'5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 47, 18, N'25kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 48, 19, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 49, 20, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 50, 21, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 51, 21, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 52, 21, N'2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 53, 21, N'5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 54, 22, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 55, 22, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 56, 23, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 57, 24, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 58, 24, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 59, 25, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 60, 25, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 61, 26, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 62, 26, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 63, 27, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 64, 27, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 65, 28, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 66, 29, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 67, 29, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 68, 30, N'200gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 69, 30, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 70, 31, N'250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 71, 31, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 72, 32, N'250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 73, 32, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 74, 33, N'250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 75, 33, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 76, 34, N'250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 77, 34, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 78, 35, N'250grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 79, 35, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 80, 35, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 81, 36, N'250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 82, 36, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 83, 37, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 84, 38, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 85, 39, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 86, 40, N'200gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 87, 41, N'200grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 88, 42, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 89, 42, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 90, 43, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 91, 43, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 92, 44, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 93, 45, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 94, 46, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 95, 47, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 96, 48, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 97, 48, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 98, 49, N'250grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 99, 49, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 100, 49, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 101, 50, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 102, 50, N'5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 103, 51, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 104, 51, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 105, 52, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 106, 52, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 107, 53, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 108, 54, N'450gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 109, 54, N'900 gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 110, 55, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 111, 55, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 112, 56, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 113, 57, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 114, 58, N'250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 115, 58, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 116, 59, N'250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 117, 59, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 118, 60, N'250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 119, 60, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 120, 61, N'1kg ' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 121, 62, N'1kg ' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 122, 62, N'2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 123, 62, N'5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 124, 63, N'250 Gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 125, 63, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 126, 64, N'250 Gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 127, 65, N'200Gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 128, 65, N'500Gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 129, 65, N'1 kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 130, 66, N'500Gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 131, 66, N'1 kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 132, 67, N'500 g' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 133, 68, N'500 g' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 134, 69, N'200 g' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 135, 69, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 136, 70, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 137, 71, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 138, 71, N'200gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 139, 72, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 140, 72, N'200gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 141, 73, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 142, 74, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 143, 75, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 144, 76, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 145, 77, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 146, 78, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 147, 79, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 148, 80, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 149, 81, N'500Grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 150, 82, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 151, 83, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 152, 84, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 153, 85, N'300gm ' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 154, 86, N'25grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 155, 87, N'40grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 156, 88, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 157, 89, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 158, 89, N'2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 159, 89, N'5 Kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 160, 89, N'25 Kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 161, 90, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 162, 90, N'5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 163, 90, N'10kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 164, 90, N'25kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 165, 91, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 166, 92, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 167, 93, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 168, 94, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 169, 95, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 170, 96, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 171, 97, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 172, 98, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 173, 99, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 174, 100, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 175, 101, N'500Grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 176, 102, N'2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 177, 102, N'5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 178, 102, N'25kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 179, 103, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 180, 103, N'2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 181, 103, N'5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 182, 104, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 183, 105, N'Cake' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 184, 106, N'2 KG' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 185, 107, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 186, 107, N'2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 187, 108, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 188, 109, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 189, 110, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 190, 110, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 191, 110, N'2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 192, 111, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 193, 112, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 194, 112, N'2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 195, 112, N'5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 196, 113, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 197, 113, N'1 KG' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 198, 113, N'2 KG' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 199, 114, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 200, 114, N'1 KG' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 201, 114, N'2 KG' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 202, 115, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 203, 115, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 204, 116, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 205, 116, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 206, 117, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 207, 117, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 208, 118, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 209, 118, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 210, 119, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 211, 119, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 212, 120, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 213, 120, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 214, 121, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 215, 121, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 216, 122, N'100ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 217, 123, N'1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 218, 123, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 219, 124, N'1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 220, 124, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 221, 125, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 222, 125, N'100ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 223, 126, N'250ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 224, 126, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 225, 127, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 226, 127, N'1Ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 227, 127, N'5Ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 228, 128, N'1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 229, 129, N'1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 230, 130, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 231, 130, N'1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 232, 131, N'250ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 233, 131, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 234, 131, N'1000ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 235, 132, N'1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 236, 132, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 237, 133, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 238, 133, N'1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 239, 134, N'250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 240, 134, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 241, 134, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 242, 135, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 243, 136, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 244, 137, N'250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 245, 138, N'250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 246, 138, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 247, 139, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 248, 140, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 249, 141, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 250, 142, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 251, 143, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 252, 144, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 253, 145, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 254, 146, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 255, 147, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 256, 148, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 257, 149, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 258, 149, N'1Ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 259, 150, N'750ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 260, 151, N'250grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 261, 151, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 262, 151, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 263, 152, N'1000gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 264, 152, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 265, 152, N'250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 266, 153, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 267, 153, N'250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 268, 153, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 269, 154, N'200gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 270, 154, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 271, 155, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 272, 155, N'250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 273, 155, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 274, 156, N'100Grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 275, 156, N'200grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 276, 157, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 277, 157, N'250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 278, 157, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 279, 158, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 280, 158, N'250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 281, 158, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 282, 159, N'200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 283, 159, N'100ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 284, 160, N'450ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 285, 160, N'900ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 286, 161, N'200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 287, 161, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 288, 162, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 289, 162, N'1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 290, 162, N'5ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 291, 163, N'10gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 292, 164, N'10gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 293, 165, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 294, 166, N'60gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 295, 167, N'70gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 296, 168, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 297, 169, N'100ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 298, 170, N'50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 299, 171, N'10pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 300, 172, N'10pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 301, 173, N'15cones' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 302, 174, N'20 Nos' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 303, 175, N'16gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 304, 175, N'96 Nos' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 305, 176, N'16gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 306, 176, N'96Nos' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 307, 177, N'96no' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 308, 178, N'96Nos' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 309, 179, N'96Nos' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 310, 180, N'96Nos' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 311, 181, N'96 Nos' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 312, 182, N'10no' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 313, 183, N'50 pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 314, 184, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 315, 185, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 316, 186, N'200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 317, 187, N'200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 318, 188, N'200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 319, 189, N'200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 320, 190, N'20ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 321, 191, N'1 Set' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 322, 192, N'1pc' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 323, 193, N'4pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 324, 194, N'100ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 325, 194, N'200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 326, 195, N'75 gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 327, 195, N'125 gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 328, 196, N'50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 329, 197, N'100 gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 330, 197, N'125 gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 331, 198, N'75 gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 332, 198, N'125 gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 333, 199, N'75 gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 334, 200, N'75 gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 335, 201, N'75grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 336, 202, N'1Kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 337, 202, N'2Kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 338, 202, N'5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 339, 202, N'25kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 340, 202, N'50kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 341, 203, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 342, 203, N'2kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 343, 203, N'5kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 344, 203, N'40kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 345, 204, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 346, 205, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 347, 205, N'1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 348, 206, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 349, 207, N'500grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 350, 208, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 351, 209, N'5 Cakes' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 352, 210, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 353, 211, N'400ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 354, 212, N'250ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 355, 213, N'250 ML' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 356, 214, N'1 ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 357, 215, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 358, 216, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 359, 217, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 360, 218, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 361, 219, N'1 ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 362, 220, N'250ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 363, 221, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 364, 222, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 365, 223, N'1 ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 366, 224, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 367, 225, N'10ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 368, 226, N'75grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 369, 227, N'75grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 370, 228, N'75grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 371, 229, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 372, 229, N'500Grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 373, 229, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 374, 230, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 375, 231, N'200gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 376, 232, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 377, 233, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 378, 234, N'20gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 379, 234, N'50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 380, 235, N'50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 381, 236, N'50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 382, 237, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 383, 238, N'2pc' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 384, 238, N'4pc' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 385, 239, N'10gms' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 386, 240, N'50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 387, 241, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 388, 242, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 389, 243, N'30 Capsules' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 390, 243, N'100 Caps' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 391, 244, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 392, 245, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 393, 246, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 394, 247, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 395, 248, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 396, 249, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 397, 250, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 398, 251, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 399, 252, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 400, 253, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 401, 254, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 402, 255, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 403, 256, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 404, 257, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 405, 258, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 406, 259, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 407, 260, N'50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 408, 261, N'50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 409, 262, N'50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 410, 263, N'50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 411, 264, N'50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 412, 265, N'50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 413, 266, N'50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 414, 267, N'50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 415, 268, N'50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 416, 269, N'50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 417, 270, N'50grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 418, 271, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 419, 272, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 420, 273, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 421, 274, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 422, 275, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 423, 276, N'100grm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 424, 277, N'100grm' ) 
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
