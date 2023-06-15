/*
 Source Server         : Recipe
 Source Server Type    : SQL Server
 Source Server Version : 16004035 (16.00.4035)
 Source Host           : localhost:1433
 Source Catalog        : MyRecipes2
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 16004035 (16.00.4035)
 File Encoding         : 65001

 Date: 04/06/2023 19:45:17
*/


-- ----------------------------
-- Table structure for __EFMigrationsHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[__EFMigrationsHistory]
GO

CREATE TABLE [dbo].[__EFMigrationsHistory] (
  [MigrationId] nvarchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ProductVersion] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[__EFMigrationsHistory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of __EFMigrationsHistory
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220429123310_Initial', N'6.0.5')
GO

INSERT INTO [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220505195417_RecipeForNPeople', N'6.0.5')
GO

INSERT INTO [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220507170604_AddRecipeType', N'6.0.5')
GO

INSERT INTO [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220513133043_StepAndIngredientTables', N'6.0.5')
GO

INSERT INTO [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220515202147_Identity', N'6.0.5')
GO

INSERT INTO [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220522095228_UsersProfileInfos', N'6.0.5')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for AspNetRoleClaims
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetRoleClaims]
GO

CREATE TABLE [dbo].[AspNetRoleClaims] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [RoleId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ClaimType] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ClaimValue] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[AspNetRoleClaims] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetRoleClaims
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[AspNetRoleClaims] ON
GO

SET IDENTITY_INSERT [dbo].[AspNetRoleClaims] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for AspNetRoles
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetRoles]
GO

CREATE TABLE [dbo].[AspNetRoles] (
  [Id] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Name] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NormalizedName] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ConcurrencyStamp] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[AspNetRoles] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetRoles
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'001', N'admin', N'ADMIN', NULL)
GO

INSERT INTO [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'002', N'user', N'USER', NULL)
GO

COMMIT
GO


-- ----------------------------
-- Table structure for AspNetUserClaims
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetUserClaims]
GO

CREATE TABLE [dbo].[AspNetUserClaims] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ClaimType] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ClaimValue] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[AspNetUserClaims] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetUserClaims
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON
GO

SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for AspNetUserLogins
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetUserLogins]
GO

CREATE TABLE [dbo].[AspNetUserLogins] (
  [LoginProvider] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ProviderKey] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ProviderDisplayName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[AspNetUserLogins] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetUserLogins
-- ----------------------------
BEGIN TRANSACTION
GO

COMMIT
GO


-- ----------------------------
-- Table structure for AspNetUserRoles
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetUserRoles]
GO

CREATE TABLE [dbo].[AspNetUserRoles] (
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [RoleId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[AspNetUserRoles] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetUserRoles
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'048a7eba-3d15-47e5-a1d0-b9bc0015e07b', N'001')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for AspNetUsers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetUsers]
GO

CREATE TABLE [dbo].[AspNetUsers] (
  [Id] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FirstName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [BirthDate] datetime2(7)  NOT NULL,
  [UserName] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NormalizedUserName] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Email] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NormalizedEmail] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EmailConfirmed] bit  NOT NULL,
  [PasswordHash] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SecurityStamp] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ConcurrencyStamp] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PhoneNumber] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PhoneNumberConfirmed] bit  NOT NULL,
  [TwoFactorEnabled] bit  NOT NULL,
  [LockoutEnd] datetimeoffset(7)  NULL,
  [LockoutEnabled] bit  NOT NULL,
  [AccessFailedCount] int  NOT NULL,
  [AvatarName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT N'' NOT NULL
)
GO

ALTER TABLE [dbo].[AspNetUsers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetUsers
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[AspNetUsers] ([Id], [Name], [FirstName], [BirthDate], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarName]) VALUES (N'048a7eba-3d15-47e5-a1d0-b9bc0015e07b', N'Nguyen', N'Tina', N'2022-01-02 00:00:00.0000000', N'abc@icloud.com', N'ABC@ICLOUD.COM', N'abc@icloud.com', N'ABC@ICLOUD.COM', N'0', N'AQAAAAIAAYagAAAAEEAJktCuXyIYyoJf9CUpGGKjLlkAFJgIEZlTPlOr28eml2z3I0XyAy/rXTtBrDPedA==', N'YOJVZOIJ5F62QE4B4WKVWW5UPJ5AMM7R', N'aa3f5a6b-5f2c-48c7-bfd4-5cf0795cf529', N'1231231231', N'0', N'0', NULL, N'1', N'0', N'$6d196e84-5c78-472e-b22f-1ad558e4aa82.png')
GO

INSERT INTO [dbo].[AspNetUsers] ([Id], [Name], [FirstName], [BirthDate], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarName]) VALUES (N'50af8d2f-9d2c-4cf2-82bf-99fe9f8a29e6', N'ABC2', N'abc2', N'2002-01-01 00:00:00.0000000', N'abc2@gmail.com', N'ABC2@GMAIL.COM', N'abc2@gmail.com', N'ABC2@GMAIL.COM', N'0', N'AQAAAAIAAYagAAAAEPCT7PEFgjV/hlQHtqHdovqQwCbBSEIdSBdo0lH1GWqYwgS+lTpVjp1/5RaSdRr5Jw==', N'YPFFSZ3AJRPRMMXXXFT2CVBTE2IORDYV', N'b0276bac-bc0b-4707-8ebf-58e6de6f939a', NULL, N'0', N'0', NULL, N'1', N'0', N'$923d53e4-68e6-4622-9a7f-6302ec7b5f66.jpg')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for AspNetUserTokens
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserTokens]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetUserTokens]
GO

CREATE TABLE [dbo].[AspNetUserTokens] (
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [LoginProvider] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Name] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Value] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[AspNetUserTokens] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetUserTokens
-- ----------------------------
BEGIN TRANSACTION
GO

COMMIT
GO


-- ----------------------------
-- Table structure for Ingredients
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Ingredients]') AND type IN ('U'))
	DROP TABLE [dbo].[Ingredients]
GO

CREATE TABLE [dbo].[Ingredients] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Quantity] real  NOT NULL,
  [Unit] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [RecipeId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Ingredients] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Ingredients
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[Ingredients] ON
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'2', N'Pork Butt/Shoulder', N'1', N'None', N'2')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'3', N'Egg Rolls', N'1', N'None', N'2')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'4', N'Pickled Vegetables', N'500', N'Gram', N'2')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'5', N'One package of rice noodles', N'1', N'Unit', N'2')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'6', N'Crushed peanuts', N'100', N'Gram', N'2')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'8', N'pack of chicken thighs (4-5, or any cut of chicken you’d like) ', N'1', N'Unit', N'4')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'9', N'pint of buttermilk ', N'1', N'Unit', N'4')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'10', N'tablespoons of pickle juice (if not available, use half amount of vinegar)', N'4', N'Teaspoon', N'4')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'11', N'Paprika ', N'1', N'Unit', N'4')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'12', N'Onion powder; Garlic powder;  Dill weed', N'50', N'Gram', N'4')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'13', N'Pepper; Salt; ', N'1', N'Tablespoon', N'4')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'14', N'Oil of your choice', N'1', N'Liter', N'4')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'15', N'All Purpose Flour', N'2', N'Unit', N'4')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'16', N'Cornstarch ', N'1', N'Unit', N'4')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'17', N'Buns ', N'2', N'Unit', N'4')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'18', N'Butter', N'100', N'Gram', N'4')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'19', N'Cheese ', N'100', N'Gram', N'4')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'20', N'flour', N'5', N'Tablespoon', N'5')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'21', N'Cup of WARM water (reserve 2 tablespoons of water for yeast later) ', N'2', N'Unit', N'5')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'22', N'Dry yeast ', N'1', N'Teaspoon', N'5')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'23', N'Salt + sprinkle of garlic salt ', N'1', N'Teaspoon', N'5')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'24', N'oil ', N'2', N'Tablespoon', N'5')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1008', N'½ cup of mayonnaise', N'1', N'None', N'1004')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1009', N'½ cup of sour cream ', N'1', N'None', N'1004')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1010', N'¼ cup of buttermilk ', N'1', N'None', N'1004')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1011', N'½ tsp. Dried dill weed, garlic, onion, parsley', N'1', N'None', N'1004')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1012', N'¼ tsp. Sea salt ', N'1', N'None', N'1004')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1013', N'½ tsp. Worcestershire sauce', N'1', N'None', N'1004')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1014', N'BBQ Cut Fresh Atlantic Salmon Filets (I prefer to get mine from Trader Joes) ', N'2', N'None', N'1005')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1015', N'garlic cloves (minced)', N'4', N'None', N'1005')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1016', N'Soy sauce', N'5', N'Tablespoon', N'1005')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1017', N'Brown sugar', N'1', N'Tablespoon', N'1005')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1018', N'Black pepper', N'1', N'Teaspoon', N'1005')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1019', N'Garlic powder', N'1', N'Teaspoon', N'1005')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1020', N'Onion powder', N'1', N'Teaspoon', N'1005')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1021', N'Salt', N'1', N'Teaspoon', N'1005')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1022', N'Neutral oil', N'1', N'Tablespoon', N'1005')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1023', N'Lemon (half of it squeezed into the marinade, and the other half can be used for garnish) ', N'1', N'Unit', N'1005')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1024', N'Persian cucumbers', N'4', N'None', N'1006')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1025', N'Tomato on the vine', N'3', N'None', N'1006')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1026', N'Red onion', N'1', N'None', N'1006')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1027', N'Olive Oil', N'2', N'Tablespoon', N'1006')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1028', N'Herbes de Provence', N'1', N'Tablespoon', N'1006')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1029', N'Red Wine Vinegar', N'1', N'Tablespoon', N'1006')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1030', N'Salt and Pepper', N'1', N'Teaspoon', N'1006')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1031', N'Ground beef', N'500', N'Gram', N'1007')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1032', N'Mild Chili seasoning packet', N'1', N'None', N'1007')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1033', N'Rotel Mild Tomatoes (can)', N'1', N'None', N'1007')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1034', N'Crushed Tomatoes (can) ', N'1', N'None', N'1007')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1035', N'Pinto or Kidney Beans (can)', N'1', N'None', N'1007')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1036', N'Water (to desired consistency)', N'1', N'Liter', N'1007')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1037', N'Sugar', N'1', N'Teaspoon', N'1007')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1038', N'Salt and Pepper; Yellow Onion', N'1', N'None', N'1007')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1039', N'ground beef', N'500', N'Gram', N'1008')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1040', N'Pasta sauce of your choice (1 jar - I prefer Raos)', N'1', N'None', N'1008')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1041', N'small onions (diced)', N'2', N'None', N'1008')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1042', N'Garlic (cloves)', N'5', N'None', N'1008')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1043', N'Salt and Pepper', N'1', N'Teaspoon', N'1008')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1044', N'Italian seasoning', N'1', N'None', N'1008')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1045', N'All Purpose Flour', N'2', N'Tablespoon', N'1008')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1046', N'Butter', N'7', N'Tablespoon', N'1008')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1047', N'Warm milk', N'500', N'Milliliter', N'1008')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1048', N'Parmesan cheese (shredded or shaved - 2 cups)', N'1', N'None', N'1008')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1049', N'Mozzarella cheese (shredded)', N'1', N'None', N'1008')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1050', N'Lasagna noodles', N'1', N'None', N'1008')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1051', N'Neutral oil', N'1', N'Tablespoon', N'1009')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1052', N'Butter', N'2', N'Tablespoon', N'1009')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1053', N'Red pepper flake', N'2', N'Teaspoon', N'1009')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1054', N'Small onion', N'1', N'None', N'1009')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1055', N'Garlic (cloves)', N'4', N'None', N'1009')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1056', N'Salt and pepper', N'1', N'None', N'1009')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1057', N'Vodka (¼ cup - I prefer Tito’s)', N'1', N'None', N'1009')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1058', N'Tomato sauce (1 can)', N'300', N'Milliliter', N'1009')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1059', N'Heavy cream', N'2', N'Tablespoon', N'1009')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1060', N'Parmesan cheese', N'1', N'None', N'1009')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1061', N'Pasta of your choice (I prefer rigatoni, penne or fusilli)', N'1', N'None', N'1009')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1062', N'Yukon gold potatoes (with decently sized potatoes)', N'6', N'None', N'1010')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1063', N'Butter (stick - I prefer Kerrygold)', N'1', N'None', N'1010')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1064', N'Garlic (cloves)', N'10', N'None', N'1010')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1065', N'Heavy cream', N'3', N'Tablespoon', N'1010')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1066', N'Salt and pepper', N'1', N'None', N'1010')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1067', N'Pizza dough', N'20', N'None', N'1011')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1068', N'Garlic (cloves)', N'3', N'None', N'1011')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1069', N'Olive oil', N'3', N'Tablespoon', N'1011')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1070', N'Parsley', N'1', N'None', N'1011')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1071', N'Basil', N'1', N'None', N'1011')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1072', N'Parmesan', N'2', N'Tablespoon', N'1011')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1073', N'Salt and pepper', N'1', N'Teaspoon', N'1011')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1074', N'package of Menlo brand egg roll wrappers', N'1', N'None', N'1012')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1075', N'ground pork', N'1', N'None', N'1012')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1076', N'medium jícama', N'200', N'Gram', N'1012')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1077', N'onion chopped', N'100', N'Gram', N'1012')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1078', N'wood ear mushrooms chopped', N'200', N'Gram', N'1012')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1079', N'salt; pepper; sugar', N'1', N'Teaspoon', N'1012')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1080', N'water', N'500', N'Milliliter', N'1012')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1081', N'flour', N'1', N'Tablespoon', N'1012')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1082', N'green leaf lettuce; ', N'200', N'Gram', N'1012')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1083', N'Vietnamese perilla (kinh gioi)', N'200', N'Gram', N'1012')
GO

INSERT INTO [dbo].[Ingredients] ([Id], [Name], [Quantity], [Unit], [RecipeId]) VALUES (N'1084', N'Vietnamese balm (tia to)', N'200', N'Gram', N'1012')
GO

SET IDENTITY_INSERT [dbo].[Ingredients] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for Recipes
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Recipes]') AND type IN ('U'))
	DROP TABLE [dbo].[Recipes]
GO

CREATE TABLE [dbo].[Recipes] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] varchar(200) COLLATE Latin1_General_100_CI_AS_SC_UTF8  NOT NULL,
  [Difficulty] int  NOT NULL,
  [PreparationTime] int  NOT NULL,
  [CookingTime] int  NOT NULL,
  [Duration] AS ([PreparationTime]+[CookingTime]),
  [ImageName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [PeopleFor] int DEFAULT 0 NOT NULL,
  [Type] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT N'' NOT NULL,
  [UserID] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [TraditionalId] int  NULL
)
GO

ALTER TABLE [dbo].[Recipes] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Recipes
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[Recipes] ON
GO

INSERT INTO [dbo].[Recipes] ([Id], [Name], [Difficulty], [PreparationTime], [CookingTime], [ImageName], [PeopleFor], [Type], [UserID], [TraditionalId]) VALUES (N'2', N'Bún thịt nướng', N'4', N'60', N'120', N'$83e463eb-63aa-47e7-a46b-507102ecf7cc.jpg', N'3', N'MainDish', N'048a7eba-3d15-47e5-a1d0-b9bc0015e07b', N'1')
GO

INSERT INTO [dbo].[Recipes] ([Id], [Name], [Difficulty], [PreparationTime], [CookingTime], [ImageName], [PeopleFor], [Type], [UserID], [TraditionalId]) VALUES (N'4', N'Crunchy Chicken Sando2', N'3', N'60', N'150', N'$8c717e5b-e604-4619-acf5-99853a785396.jpg', N'2', N'MainDish', N'048a7eba-3d15-47e5-a1d0-b9bc0015e07b', N'2')
GO

INSERT INTO [dbo].[Recipes] ([Id], [Name], [Difficulty], [PreparationTime], [CookingTime], [ImageName], [PeopleFor], [Type], [UserID], [TraditionalId]) VALUES (N'5', N'Pizza Dough', N'4', N'120', N'240', N'$38daaa54-e5e0-4800-992e-c13342feaeaa.jpg', N'2', N'MainDish', N'50af8d2f-9d2c-4cf2-82bf-99fe9f8a29e6', N'2')
GO

INSERT INTO [dbo].[Recipes] ([Id], [Name], [Difficulty], [PreparationTime], [CookingTime], [ImageName], [PeopleFor], [Type], [UserID], [TraditionalId]) VALUES (N'1004', N'Ranch Dressing', N'2', N'10', N'10', N'$471dcc04-555d-405c-a0e7-65c0d9dc4f5c.jpg', N'1', N'Dessert', N'048a7eba-3d15-47e5-a1d0-b9bc0015e07b', N'2')
GO

INSERT INTO [dbo].[Recipes] ([Id], [Name], [Difficulty], [PreparationTime], [CookingTime], [ImageName], [PeopleFor], [Type], [UserID], [TraditionalId]) VALUES (N'1005', N'Soy Glazed Salmon', N'3', N'30', N'30', N'$de2c0ba7-0ebf-4fa0-b3dc-276d09a7040d.jpg', N'1', N'MainDish', N'048a7eba-3d15-47e5-a1d0-b9bc0015e07b', N'2')
GO

INSERT INTO [dbo].[Recipes] ([Id], [Name], [Difficulty], [PreparationTime], [CookingTime], [ImageName], [PeopleFor], [Type], [UserID], [TraditionalId]) VALUES (N'1006', N'Cucumber, Tomato, & Onion Salad', N'2', N'20', N'20', N'$ffc913b0-bda0-46f8-ac26-12ea77179e43.jpg', N'2', N'Dessert', N'048a7eba-3d15-47e5-a1d0-b9bc0015e07b', N'2')
GO

INSERT INTO [dbo].[Recipes] ([Id], [Name], [Difficulty], [PreparationTime], [CookingTime], [ImageName], [PeopleFor], [Type], [UserID], [TraditionalId]) VALUES (N'1007', N'Chili', N'3', N'60', N'45', N'$5d32c7bd-b78b-481c-a927-06ea5b8f2f97.jpg', N'1', N'MainDish', N'048a7eba-3d15-47e5-a1d0-b9bc0015e07b', N'2')
GO

INSERT INTO [dbo].[Recipes] ([Id], [Name], [Difficulty], [PreparationTime], [CookingTime], [ImageName], [PeopleFor], [Type], [UserID], [TraditionalId]) VALUES (N'1008', N'Lasagna with Bechamel Sauce', N'4', N'30', N'90', N'$e6af4836-a399-4faf-aea6-8b4eb70eb2a3.jpg', N'2', N'MainDish', N'048a7eba-3d15-47e5-a1d0-b9bc0015e07b', N'2')
GO

INSERT INTO [dbo].[Recipes] ([Id], [Name], [Difficulty], [PreparationTime], [CookingTime], [ImageName], [PeopleFor], [Type], [UserID], [TraditionalId]) VALUES (N'1009', N'Vodka Pasta', N'3', N'30', N'60', N'$c79f8ed7-c134-458a-947c-305932cc23b6.jpg', N'1', N'Starter', N'048a7eba-3d15-47e5-a1d0-b9bc0015e07b', N'2')
GO

INSERT INTO [dbo].[Recipes] ([Id], [Name], [Difficulty], [PreparationTime], [CookingTime], [ImageName], [PeopleFor], [Type], [UserID], [TraditionalId]) VALUES (N'1010', N'Garlic Mashed Potatoes', N'3', N'40', N'60', N'$3e655347-efc7-4abf-a706-da9c5bdbd464.jpg', N'1', N'MainDish', N'048a7eba-3d15-47e5-a1d0-b9bc0015e07b', N'2')
GO

INSERT INTO [dbo].[Recipes] ([Id], [Name], [Difficulty], [PreparationTime], [CookingTime], [ImageName], [PeopleFor], [Type], [UserID], [TraditionalId]) VALUES (N'1011', N'Pesto Garlic Knots', N'4', N'40', N'120', N'$be17ed46-eccf-44dd-b596-72bf25be7bc1.jpg', N'4', N'MainDish', N'048a7eba-3d15-47e5-a1d0-b9bc0015e07b', N'2')
GO

INSERT INTO [dbo].[Recipes] ([Id], [Name], [Difficulty], [PreparationTime], [CookingTime], [ImageName], [PeopleFor], [Type], [UserID], [TraditionalId]) VALUES (N'1012', N'Cha gio', N'4', N'40', N'90', N'$bd3d7fd9-d773-4340-a338-ab50a2afaf08.jpg', N'2', N'Starter', N'048a7eba-3d15-47e5-a1d0-b9bc0015e07b', N'1')
GO

SET IDENTITY_INSERT [dbo].[Recipes] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for Steps
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Steps]') AND type IN ('U'))
	DROP TABLE [dbo].[Steps]
GO

CREATE TABLE [dbo].[Steps] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Position] int  NOT NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [RecipeId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Steps] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Steps
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[Steps] ON
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'2', N'1', N'In a bowl, add in minced garlic, minced shallots, fish sauce, dark soy sauce, sugar and oil. Mix and set aside, can also add in a splash of water if the marinade is too thick.  
 
Thinly slice the pork butt/shoulder, it helps if the meat is slightly frozen. Add into the bowl with the marinade, seal or wrap it up and set it in the fridge for at least 2 hours. Marinade overnight for best results.  ', N'2')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'3', N'2', N'Chop the lettuce into bite size, it’s easier to roll up the lettuce and chop, the same goes with mint and perilla if you would like them chopped or leave them whole if that’s what you prefer. Slice the cucumbers diagonally and place them all in the fridge.  
 
After marinating overnight or for a couple of hours, set on counter for at least 20 minutes. This will allow the meat to come slightly to room temperature and will cook more evenly.  
 
There are several ways to cook the marinaded meat and I use one of the three options every time. The first is to air fry the meat, air fry on 375 for 10-15 minutes depending on your air fryer. I like a “char” with my meat, so I also use the broil feature after air frying for 3-4 minutes to mimic the char from the grill. The second way is to use an oven, bake at 375 for 10-15 minutes as well, and use the broil option if you would like your meat more charred or browned, different ovens yield different results. Finally, the last option is to use the grill. I can’t give an exact time to cook on a BBQ grill, though you can tell when it is finished.  
 
After the meat is done cooking, assemble your bowl! I like to lay a bed of rice noodles down first, add the vegetables, the grilled pork, the egg rolls, pickled vegetables and crushed peanuts on top!  ', N'2')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'5', N'1', N'Clean and trim your chicken thighs, pat dry and set aside', N'4')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'6', N'2', N'P2.	Pour 1 pint of buttermilk into a container or bowl, add in 4 tablespoons of pickle juice, 1 teaspoon of paprika, dill weed, and pepper, 2 teaspoons of onion powder, garlic powder, and salt. Give it a good mix and TASTE the buttermilk. If you feel like it’s missing something, season it more to your taste buds. Add the chicken thighs in and let it sit in the marinade for at least 2 hours, if not, overnight', N'4')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'7', N'3', N'Pour about 3 cups of oil into a pan or pot and let it heat up to medium heat', N'4')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'8', N'4', N'While the oil is heating up, make the chicken dredge by combining: 2 cups of APF, 1 cup of cornstarch, 2 teaspoons of salt and pepper, 1 teaspoon of onion powder, garlic powder, and paprika. Make sure it is in a shallow dish so there will be little to no mess', N'4')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'9', N'5', N'Take each piece of chicken out of the buttermilk, coat both sides with the dredge and carefully place into the pot or pan to fry. The key is to only turn it over once so it will still be crispy and not soggy. I recommend frying each side for 4-5 minutes depending on your stove top', N'4')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'10', N'6', N'Lastly, butter your buns up and toast them on a pan or in the air fryer. Add a piece of fried chicken between the buns with your favorite sauce, cheese, and toppings', N'4')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'11', N'1', N'Mix flour and 1 ½ cups of water together to form a shaggy dough.', N'5')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'12', N'2', N'Sprinkle ¼ tsp. dry yeast into the 2 tablespoons of reserved water - DO NOT stir or mix together, just give it a quick swirl', N'5')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'13', N'3', N'Wait 20 minutes and then sprinkle the salt + sprinkle of garlic salt on top of the dough', N'5')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'14', N'4', N'Add dissolved yeast mixture after 20 minutes', N'5')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'15', N'5', N'Fold and pinch the dough at least 12 times and wait one hour', N'5')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'16', N'6', N'Transfer the dough mixture into an oiled bowl, cover it with a dish towel, place it in a warm spot, and let it rise for 5-6 hours. (I prefer the microwave or the oven). ', N'5')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'17', N'7', N'Once the dough has risen, flour the CLEAN countertop or a cutting board, and split it into 2 pieces (or however much you’d like, 2 pieces of dough makes 2 full sized pizzas) - roll and tuck the dough inward like a ball shape. It is best to work with cold dough, so I recommend oiling the tops, covering it and placing it in the fridge for a minimum of one hour.', N'5')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'18', N'8', N'After the dough has been sitting in the fridge, roll it out, and top with your favorite sauce and toppings! Bake slowly at 400 degrees so the bottom won’t burn and enjoy!', N'5')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1005', N'1', N'In a bowl, mix together all of the ingredients listed above, refrigerate and enjoy! This will last up to a week and a half in the fridge.', N'1004')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1006', N'1', N'Preheat the oven to 400 degrees.', N'1005')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1007', N'2', N'Combine the minced garlic cloves, soy sauce, brown sugar, spices (except for the salt), oil, and lemon. Taste the glaze to see if it needs any more salt - if so, add in some salt. If it is too salty for your liking, add in a dash of water', N'1005')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1008', N'3', N'Place the salmon filets skin side down onto a baking tray, brush on a little oil, and add a bit of salt and pepper to them. Bake at 400 for 8 minutes and spoon the glaze on top of the filets and return to the oven for another 5-7 minutes (you can add your lemon slices now if you’d like that as a garnish)', N'1005')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1009', N'4', N'Serve the filets with rice and veggies or on top of a salad!', N'1005')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1010', N'1', N'Cut up the persian cucumbers into semi thick coins and cut the tomatoes into quarters, set aside. ', N'1006')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1011', N'2', N'Cut the red onion in half and thinly slice one half and place in a bowl', N'1006')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1012', N'3', N'Add in the olive oil, herbes de provence, red wine vinegar, and salt and pepper into the bowl with the thinly sliced onions. Mix and set this aside for about 20 minutes - this will make the onion less potent', N'1006')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1013', N'4', N'After 20 minutes, add in the cucumbers and tomatoes to the onions. Toss together and refrigerate before enjoying!', N'1006')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1014', N'1', N'Start with your pot on medium-high heat and brown one pound of ground beef, add salt and pepper to the beef.', N'1007')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1015', N'2', N'Once the meat has browned, add in the 3 canned products. Make sure to drain and rinse your beans before putting them in.', N'1007')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1016', N'3', N'Start with one cup of water and add in half a cup at a time until you get your desired consistency and add in the seasoning packet', N'1007')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1017', N'4', N'While that is simmering, cut up a yellow onion into medium sized pieces and add into the chili to cook for about another 30 minutes on medium heat', N'1007')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1018', N'5', N'Taste the chili after 20 minutes to see if it needs any more salt - this is when I add 1 tsp of sugar to cut the acidity', N'1007')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1019', N'6', N'Cut up half a red onion into small pieces - set aside to garnish on top', N'1007')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1020', N'7', N'Spoon into a dish and top it with red onions, mexican four cheese and sour cream. I also like to add some saltine crackers on the side', N'1007')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1021', N'1', N'Dice up the onions and mince the garlic - set aside', N'1008')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1022', N'2', N'In a pan on medium high heat, add in onions and garlic, the 2lbs of ground beef with salt and pepper, and 2 tsp. of italian seasoning', N'1008')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1023', N'3', N'Once browned, add in one or two jars of pasta sauce, and another half jar of water. Let it cook for about 10 minutes and taste test to see if it needs more salt or pepper and set aside after simmering for another 30 minutes or so', N'1008')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1024', N'4', N'In a pot, warm up the milk on low heat for about 5 minutes and set aside', N'1008')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1025', N'5', N'In another pot, melt the butter on medium heat - add flour and whisk it until it has all disappeared. Now, add in the warmed milk - slowly, a half cup at a time', N'1008')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1026', N'6', N'Make sure the heat is on low now, keep whisking the milk and flour until it thickens. Once it thickens, add in the parmesan, pepper, and salt - this will require a lot of arm work. Once done, set aside.', N'1008')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1027', N'7', N'Preheat the oven to 400 degrees', N'1008')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1028', N'8', N'In a baking pan, add in a layer of meat sauce, lasagna noodles, bechamel sauce, shredded mozzarella, and repeat until the pan is filled. Wrap the baking pan in foil and bake for 35-40 minutes, remove the foil in the last 5 minutes of baking. If the top is not bubbly as you’d like, broil it for an additional 3-5 minutes and enjoy! ', N'1008')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1029', N'1', N'In a medium pot, heat up water on high heat to a rolling boil and add in 1 tablespoon of salt', N'1009')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1030', N'2', N'Dice up the amount of onion you’d like to use and mince 3-4 garlic cloves, set aside', N'1009')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1031', N'3', N'Add in your pasta to the pot and cook until al dente or your liking', N'1009')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1032', N'4', N'In a pan on medium heat, use 1 tablespoon of oil with 2 tablespoons of butter, add in diced onions, and garlic. Add in salt, pepper, and 2 teaspoons of red pepper flakes - you can add more if you like it with more heat', N'1009')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1033', N'5', N'Once the onions are translucent, add in ¼ cup of vodka, let it cook out for about 5-10 minutes and add in one can of tomato sauce', N'1009')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1034', N'6', N'After the sauce thickens a bit, add in 2 tablespoons of heavy cream and mix. Taste the sauce and adjust to your liking', N'1009')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1035', N'7', N'Add in the cooked pasta, stir and serve up with parmesan on top and a breadstick or toast on the side!', N'1009')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1036', N'1', N'In a pot, heat up water to a rolling boil.', N'1010')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1037', N'2', N'While water is boiling, wash the potatoes, and quarter or half them for it to cook evenly.', N'1010')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1038', N'3', N'Add the potatoes and garlic cloves into the water and boil for 20 minutes - make sure to check halfway because every stove top is different', N'1010')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1039', N'4', N'Once cooked, drain the potatoes, garlic, and add into a bowl along with a stick of butter, 3 tablespoons of heavy cream, salt and pepper, and smash.', N'1010')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1040', N'5', N'Give it a taste test to see if it needs more salt or heavy cream and add it to your liking. Serve as a side dish and it will be a hit.', N'1010')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1041', N'1', N'Preheat the oven to 400 degrees', N'1011')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1042', N'2', N'In a blender, blend together: 3 cloves of garlic, 2 tablespoons of olive oil, a handful of basil and parsley, 2 tablespoons of parmesan and a teaspoon of salt and pepper. Taste and set aside. ', N'1011')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1043', N'3', N'Using the pizza dough, grab random chunks to roll into a log and “tie” them to form a knot - do this until you run out of pizza dough', N'1011')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1044', N'4', N'Add the knots into a bowl and pour the “pesto” sauce over them, toss and coat evenly before putting them on the sheet pan to bake for 10-15 minutes', N'1011')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1045', N'5', N'Halfway through, rotate the pan if needed and now sprinkle parmesan on top. Bake for the additional time, serve and enjoy', N'1011')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1046', N'1', N'Soak bean threads in hot tap water and mushrooms in 40-second microwaved hot tap water until soft. About 30 minutes', N'1012')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1047', N'2', N'Shred or finely chop onion and squeeze excess moisture out by hand. Add 1/2 tsp salt to jícama, microwave until slightly soft and squeeze excess moisture out by hand', N'1012')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1048', N'3', N'When soft, roughly chop bean thread noodles and mushrooms', N'1012')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1049', N'4', N'Add bean thread, mushrooms, onion, salt, pepper, and sugar into a large mixing bowl and mix thoroughly. Add pork and mix well. Add jícama last and mix well', N'1012')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1050', N'5', N'Cook and taste the filling: put 1/2 tsp of the mixture on a small plate and microwave it for a few seconds until its fully cooked. Taste it and adjust with salt, pepper, or any other adjustments to your liking. Keep in mind these rolls are meant to be dipped in fish dipping sauce', N'1012')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1051', N'6', N'Mix together water and flour for egg roll sealer, and microwave until just boiling. Wrap the egg rolls (see photos above for technique)', N'1012')
GO

INSERT INTO [dbo].[Steps] ([Id], [Position], [Description], [RecipeId]) VALUES (N'1052', N'7', N'Fry at 325 °F until golden brown and fully cooked inside. About 12-16 minutes per batch.', N'1012')
GO

SET IDENTITY_INSERT [dbo].[Steps] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for Traditionals
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Traditionals]') AND type IN ('U'))
	DROP TABLE [dbo].[Traditionals]
GO

CREATE TABLE [dbo].[Traditionals] (
  [Id] int  NOT NULL,
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Traditionals] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Traditionals
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[Traditionals] ([Id], [Name]) VALUES (N'1', N'Vietnamese')
GO

INSERT INTO [dbo].[Traditionals] ([Id], [Name]) VALUES (N'2', N'American')
GO

COMMIT
GO


-- ----------------------------
-- Primary Key structure for table __EFMigrationsHistory
-- ----------------------------
ALTER TABLE [dbo].[__EFMigrationsHistory] ADD CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED ([MigrationId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for AspNetRoleClaims
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[AspNetRoleClaims]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table AspNetRoleClaims
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId]
ON [dbo].[AspNetRoleClaims] (
  [RoleId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AspNetRoleClaims
-- ----------------------------
ALTER TABLE [dbo].[AspNetRoleClaims] ADD CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AspNetRoles
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex]
ON [dbo].[AspNetRoles] (
  [NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
GO


-- ----------------------------
-- Primary Key structure for table AspNetRoles
-- ----------------------------
ALTER TABLE [dbo].[AspNetRoles] ADD CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for AspNetUserClaims
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[AspNetUserClaims]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table AspNetUserClaims
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId]
ON [dbo].[AspNetUserClaims] (
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AspNetUserClaims
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserClaims] ADD CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AspNetUserLogins
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId]
ON [dbo].[AspNetUserLogins] (
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AspNetUserLogins
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserLogins] ADD CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED ([LoginProvider], [ProviderKey])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AspNetUserRoles
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId]
ON [dbo].[AspNetUserRoles] (
  [RoleId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AspNetUserRoles
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserRoles] ADD CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED ([UserId], [RoleId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AspNetUsers
-- ----------------------------
CREATE NONCLUSTERED INDEX [EmailIndex]
ON [dbo].[AspNetUsers] (
  [NormalizedEmail] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex]
ON [dbo].[AspNetUsers] (
  [NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
GO


-- ----------------------------
-- Primary Key structure for table AspNetUsers
-- ----------------------------
ALTER TABLE [dbo].[AspNetUsers] ADD CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table AspNetUserTokens
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserTokens] ADD CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED ([UserId], [LoginProvider], [Name])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Ingredients
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Ingredients]', RESEED, 1085)
GO


-- ----------------------------
-- Indexes structure for table Ingredients
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Ingredients_RecipeId]
ON [dbo].[Ingredients] (
  [RecipeId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Ingredients
-- ----------------------------
ALTER TABLE [dbo].[Ingredients] ADD CONSTRAINT [PK_Ingredients] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Recipes
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Recipes]', RESEED, 1013)
GO


-- ----------------------------
-- Primary Key structure for table Recipes
-- ----------------------------
ALTER TABLE [dbo].[Recipes] ADD CONSTRAINT [PK_Recipes] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Steps
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Steps]', RESEED, 1053)
GO


-- ----------------------------
-- Indexes structure for table Steps
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Steps_RecipeId]
ON [dbo].[Steps] (
  [RecipeId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Steps
-- ----------------------------
ALTER TABLE [dbo].[Steps] ADD CONSTRAINT [PK_Steps] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Traditionals
-- ----------------------------
ALTER TABLE [dbo].[Traditionals] ADD CONSTRAINT [PK__Traditio__3214EC0718892EAC] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table AspNetRoleClaims
-- ----------------------------
ALTER TABLE [dbo].[AspNetRoleClaims] ADD CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AspNetRoles] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AspNetUserClaims
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserClaims] ADD CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AspNetUserLogins
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserLogins] ADD CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AspNetUserRoles
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserRoles] ADD CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AspNetRoles] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[AspNetUserRoles] ADD CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AspNetUserTokens
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserTokens] ADD CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Ingredients
-- ----------------------------
ALTER TABLE [dbo].[Ingredients] ADD CONSTRAINT [FK_Ingredients_Recipes_RecipeId] FOREIGN KEY ([RecipeId]) REFERENCES [dbo].[Recipes] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Recipes
-- ----------------------------
ALTER TABLE [dbo].[Recipes] ADD CONSTRAINT [FK_Recipes_Traditional_TraditionalId] FOREIGN KEY ([TraditionalId]) REFERENCES [dbo].[Traditionals] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Recipes] ADD CONSTRAINT [FK_Recipes_AspNetUsers_UserId] FOREIGN KEY ([UserID]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Steps
-- ----------------------------
ALTER TABLE [dbo].[Steps] ADD CONSTRAINT [FK_Steps_Recipes_RecipeId] FOREIGN KEY ([RecipeId]) REFERENCES [dbo].[Recipes] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

