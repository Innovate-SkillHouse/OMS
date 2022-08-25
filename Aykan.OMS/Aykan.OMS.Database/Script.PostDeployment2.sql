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

USE [Gouganga]
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
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (1, N'Health Care Products', N'Health Care Products')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (2, N'Personal Care Products', N'Personal Care Products')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (3, N'Home Care Products', N'Home Care Products')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (4, N'Akshaya Gou Products', N'Akshaya Gou Products')
GO
INSERT [dbo].[ProductType] ([Id], [ProductType], [Description]) VALUES (5, N'Hem''s Products', N'Hem''s Products')
GO
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 1,1, N'Amrutavalli', NULL, N'Amrutavalli', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 2,1, N'Bilvasara', NULL, N'Bilvasara', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 3,1, N'Gomayadi Thaila', NULL, N'Gomayadi Thaila', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 4,1, N'Gouhareetaki', NULL, N'Gouhareetaki', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 5,1, N'Gouksharavati', NULL, N'Gouksharavati', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 6,1, N'Gounishamalaki', NULL, N'Gounishamalaki', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 7,1, N'Goutheertha Arka', NULL, N'Goutheertha Arka', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 8,1, N'Haridrasara', NULL, N'Haridrasara', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 9,1, N'Jwaramrutha', NULL, N'Jwaramrutha', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 10,1, N'Narisanjivini', NULL, N'Narisanjivini', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 11,1, N'Nasasanjivini', NULL, N'Nasasanjivini', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 12,2, N'Panchagavya Ghritha', NULL, N'Panchagavya Ghritha', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 13,2, N'Rose Water', NULL, N'Rose Water', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 14,2, N'Sanjivani Kashaya', NULL, N'Sanjivani Kashaya', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 15,2, N'Tulsi Arka', NULL, N'Tulsi Arka', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 16,2, N'Tulsisara', NULL, N'Tulsisara', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 17,2, N'Thakrarishta', NULL, N'Thakrarishta', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 18,2, N'Vasasanjivini', NULL, N'Vasasanjivini', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 19,2, N'Vaishwanara Choorna', NULL, N'Vaishwanara Choorna', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 20,2, N'Vatsalya', NULL, N'Vatsalya', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 21,2, N'Abhyanga Thaila', NULL, N'Abhyanga Thaila', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 22,2, N'Dantha Manjan', NULL, N'Dantha Manjan', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 23,2, N'Himarathna Thaila', NULL, N'Himarathna Thaila', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 24,2, N'Neem Tulsi Soap', NULL, N'Neem Tulsi Soap', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 25,2, N'Nirmalganga Bath Scrubber', NULL, N'Nirmalganga Bath Scrubber', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 26,2, N'Nivedana', NULL, N'Nivedana', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 27,2, N'Shamana Thaila', NULL, N'Shamana Thaila', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 28,2, N'Sucharana', NULL, N'Sucharana', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 29,2, N'Sukanti', NULL, N'Sukanti', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 30,2, N'Sukesha', NULL, N'Sukesha', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 31,2, N'Twachamrutha', NULL, N'Twachamrutha', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 32,2, N'Agarbathi (Jasmine)', NULL, N'Agarbathi (Jasmine)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 33,2, N'Agarbathi (Kewra)', NULL, N'Agarbathi (Kewra)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 34,2, N'Agarbathi (Lavender)', NULL, N'Agarbathi (Lavender)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 35,2, N'Agarbathi (Sandalwood)', NULL, N'Agarbathi (Sandalwood)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 36,2, N'Agarbathi (Jasmine)', NULL, N'Agarbathi (Jasmine)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 37,2, N'Agarbathi (Kewra)', NULL, N'Agarbathi (Kewra)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 38,2, N'Agarbathi (Lavender)', NULL, N'Agarbathi (Lavender)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 39,2, N'Agarbathi (Sandalwood)', NULL, N'Agarbathi (Sandalwood)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 40,2, N'Agarbathi (Rose)', NULL, N'Agarbathi (Rose)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 41,2, N'Agarbathi (Champa)', NULL, N'Agarbathi (Champa)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 42,2, N'Agarbathi (Mogra)', NULL, N'Agarbathi (Mogra)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 43,2, N'Agarbathi Dhaynsutra - Kaivalyam', NULL, N'Agarbathi Dhaynsutra - Kaivalyam', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 44,2, N'Agarbathi Dhaynsutra - Sayujyam', NULL, N'Agarbathi Dhaynsutra - Sayujyam', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 45,2, N'Desi Cow Ghee', NULL, N'Desi Cow Ghee', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 46,2, N'Gou-Clean Phenyl', NULL, N'Gou-Clean Phenyl', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 47,2, N'Goumaya Khanda', NULL, N'Goumaya Khanda', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 48,2, N'Gram Flour', NULL, N'Gram Flour', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 49,2, N'Groundnut', NULL, N'Groundnut', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 50,2, N'Gou - Khand XL', NULL, N'Gou - Khand XL', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 51,2, N'Goudhooli Herbal Incense Stick', NULL, N'Goudhooli Herbal Incense Stick', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 52,2, N'Goutheertha Arka', NULL, N'Goutheertha Arka', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 53,2, N'Haridrabharathi (Turmeric Powder)', NULL, N'Haridrabharathi (Turmeric Powder)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 54,2, N'Honey', NULL, N'Honey', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 55,2, N'Mosquito Coil (8 hrs)', NULL, N'Mosquito Coil (8 hrs)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 56,2, N'Mos-Quit Herbal Mosquito Vapouriser', NULL, N'Mos-Quit Herbal Mosquito Vapouriser', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 57,2, N'Mos-Quit Herbal Mosquito Vapouriser (Combo Pack)', NULL, N'Mos-Quit Herbal Mosquito Vapouriser (Combo Pack)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 58,2, N'Multani Mitti Powder', NULL, N'Multani Mitti Powder', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 59,2, N'Navamrutha', NULL, N'Navamrutha', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 60,2, N'Phalavati Vermi Compost', NULL, N'Phalavati Vermi Compost', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 61,2, N'Prarthana Dhoop Sticks - Jasmine', NULL, N'Prarthana Dhoop Sticks - Jasmine', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 62,2, N'Ragabharathi (Pooja Kumkum)', NULL, N'Ragabharathi (Pooja Kumkum)', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 63,2, N'Samrudhi Pest Repellent', NULL, N'Samrudhi Pest Repellent', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 64,2, N'Surabhi Dhoop Cone', NULL, N'Surabhi Dhoop Cone', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 65,2, N'Surabhi Sambrani Stick', NULL, N'Surabhi Sambrani Stick', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 66,2, N'Triguna Vibhuti', NULL, N'Triguna Vibhuti', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 67,2, N'Aloe Vera Soap', NULL, N'Aloe Vera Soap', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 68,2, N'Herbal Soap', NULL, N'Herbal Soap', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 69,2, N'Multani Mitti Soap', NULL, N'Multani Mitti Soap', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 70,2, N'Panchagavya Soap', NULL, N'Panchagavya Soap', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 71,2, N'Red Sandal Soap ', NULL, N'Red Sandal Soap ', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 72,2, N'Panchagavya Shampoo', NULL, N'Panchagavya Shampoo', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Product] ([Id],[ProductTypeId], [Name], [Code], [Description], [Unit Weight], [Quantity], [MRP], [MSP]) VALUES ( 73,2, N'Surabhi Saara Goumutra Capsule', NULL, N'Surabhi Saara Goumutra Capsule', N'0',0, CAST(00.00 AS Decimal(18, 2)), CAST(00.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductUnit] ON 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 1, 1, N'200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 2, 2, N'200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 3, 2, N'450ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 4, 3, N'20ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 5, 4, N'30tab' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 6, 4, N'60tab' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 7, 4, N'500tab' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 8, 5, N'30tab' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 9, 5, N'60tab' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 10, 5, N'500tab' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 11, 6, N'30tab' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 12, 6, N'60tab' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 13, 6, N'500tab' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 14, 7, N'900ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 15, 7, N'450ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 16, 7, N'200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 17, 8, N'200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 18, 8, N'450ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 19, 9, N'100ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 20, 10, N'200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 21, 10, N'20ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 22, 11, N'50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 23, 11, N'200gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 24, 12, N'100ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 25, 13, N'100gmm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 26, 14, N'200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 27, 14, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 28, 15, N'200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 29, 15, N'450ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 30, 16, N'200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 31, 16, N'450ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 32, 17, N'200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 33, 18, N'50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 34, 19, N'100ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 35, 20, N'100ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 36, 21, N'50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 37, 22, N'100ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 38, 23, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 39, 24, N'70gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 40, 25, N'10gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 41, 25, N'50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 42, 26, N'100ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 43, 26, N'50ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 44, 27, N'10gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 45, 27, N'50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 46, 28, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 47, 29, N'100ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 48, 30, N'50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 49, 31, N'16gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 50, 32, N'16gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 51, 33, N'16gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 52, 34, N'16gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 53, 35, N'90sticks' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 54, 36, N'90sticks' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 55, 37, N'90sticks' ) 
Go
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 56, 38, N'90sticks' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 57, 39, N'90sticks' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 58, 40, N'90sticks' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 59, 41, N'90sticks' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 60, 42, N'30sticks' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 61, 43, N'30sticks' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 62, 44, N'200gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 63, 44, N'400gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 64, 45, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 65, 45, N'1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 66, 45, N'5ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 67, 46, N'36pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 68, 47, N'5pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 69, 48, N'10nos' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 70, 49, N'50ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 71, 50, N'50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 72, 50, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 73, 50, N'200gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 74, 50, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 75, 51, N'250gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 76, 51, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 77, 51, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 78, 52, N'10pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 79, 53, N'35ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 80, 54, N'Refil + Machine' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 81, 55, N'150gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 82, 56, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 83, 56, N'1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 84, 56, N'5ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 85, 57, N'1kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 86, 57, N'30kg' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 87, 58, N'20pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 88, 59, N'50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 89, 59, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 90, 59, N'200gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 91, 59, N'500gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 92, 60, N'500ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 93, 60, N'1ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 94, 60, N'5ltr' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 95, 61, N'15pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 96, 62, N'20pcs' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 97, 63, N'50gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 98, 64, N'75gm' )
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 99, 65, N'75gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 100, 66, N'100gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 101, 66, N'125gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 102, 67, N'75gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 103, 67, N'125gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 104, 68, N'75gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 105, 68, N'125gm' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 106, 69, N'100ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 107, 69, N'200ml' ) 
GO
INSERT [dbo].[ProductUnit] ([Id], [ProductId], [Unit]) VALUES ( 108, 70, N'30capsule' ) 
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
INSERT [dbo].[User] ([Id], [Name], [UserName], [Password], [MobileNumber], [PhoneNumber], [Email], [UserCode], [Address], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, N'Gouganga', N'gouganga', N'm5Y71IU/JlNDaxQuVBJlpR8fSkTaodsUERQACC6pIuA=', N'1234567890', NULL, NULL, NULL, N'Mangalore', -1, CAST(N'2020-12-28T00:00:00.000' AS DateTime), -1, CAST(N'2020-12-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[User] ([Id], [Name], [UserName], [Password], [MobileNumber], [PhoneNumber], [Email], [UserCode], [Address], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, N'Dinesh', N'dinesh', N'Hm3mdjur4Mgbg2Ly10TM0QLQ2nHTY0fVzmJhHHyPeaE=', N'1234567890', NULL, NULL, NULL, N'Mangalore', -1, CAST(N'2020-12-28T00:00:00.000' AS DateTime), -1, CAST(N'2020-12-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[User] ([Id], [Name], [UserName], [Password], [MobileNumber], [PhoneNumber], [Email], [UserCode], [Address], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, N'Girish', N'girish', N'7ec7ecAHDIPxGajWvLFxuiGRWJpBqcvtTsEYlaXIwH4=', N'1234567890', NULL, NULL, NULL, N'Mangalore', -1, CAST(N'2020-12-28T00:00:00.000' AS DateTime), -1, CAST(N'2021-06-01T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 
GO
INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, 1, 1, -1, CAST(N'2020-12-28T00:00:00.000' AS DateTime), -1, CAST(N'2020-12-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, 2, 2, -1, CAST(N'2021-06-01T00:00:00.000' AS DateTime), -1, CAST(N'2021-06-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, 3, 2, -1, CAST(N'2021-06-01T00:00:00.000' AS DateTime), -1, CAST(N'2021-06-01T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
