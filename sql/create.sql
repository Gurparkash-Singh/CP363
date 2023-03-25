CREATE TABLE IF NOT EXISTS Products
(
	Title varchar(255) not null,
    ReleaseDate date not null,
    SalePrice float not null,
    RentalPrice float not null,
    primary key (Title, ReleaseDate)
);

CREATE TABLE IF NOT EXISTS Movies
(
	Title varchar(255) not null,
    ReleaseDate date not null,
    Description varchar(255),
    primary key (Title, ReleaseDate),
    foreign key (Title, ReleaseDate) references Products (Title, ReleaseDate)
    ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Genres
(
 	Title varchar(255) not null,
	ReleaseDate date not null,
	Genre varchar(255) not null,
    primary key (Title, ReleaseDate, Genre),
	foreign key (Title, ReleaseDate) references Movies (Title, ReleaseDate)
    ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS ProductionCompanies
(
	Title varchar(255) not null,
    ReleaseDate date not null,
    CompanyName varchar(255) not null,
    primary key (Title, ReleaseDate, CompanyName),
    foreign key (Title, ReleaseDate) references Movies (Title, ReleaseDate)
    ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS CastAndCrew
(
	Title varchar(255) not null,
    ReleaseDate date not null,
    Name varchar(255) not null,
    Role varchar(255) not null,
    primary key (Title, ReleaseDate, Name, Role),
    foreign key (Title, ReleaseDate) references Movies (Title, ReleaseDate)
    ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Music
(
	Title varchar(255) not null,
    ReleaseDate date not null,
    Album varchar(255),
    primary key (Title, ReleaseDate),
    foreign key (Title, ReleaseDate) references Products (Title, ReleaseDate)
    ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Labels
(
	Title varchar(255) not null,
    ReleaseDate date not null,
	LabelName varchar(255) not null,
    primary key (Title, ReleaseDate, LabelName),
    foreign key (Title, ReleaseDate) references Music (Title, ReleaseDate)
    ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Artists
(
	Title varchar(255) not null,
    ReleaseDate date not null,
    ArtistName varchar(255) not null,
    primary key (Title, ReleaseDate, ArtistName),
    foreign key (Title, ReleaseDate) references Music (Title, ReleaseDate)
    ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Stores
(
	StoreId int not null,
    Phone varchar(255) not null,
    Email varchar(255) not null,
    StreetName varchar(255) not null,
    Unit varchar(255),
    City varchar(255) not null,
    Province varchar(255) not null,
    Country varchar(255) not null,
    PostalCode varchar(255) not null,
    primary key (StoreId)
);

CREATE TABLE IF NOT EXISTS Suppliers
(
	SupplierId int not null,
    SupplierName varchar(255) not null,
    Phone varchar(255) not null,
    Email varchar(255) not null,
    StreetName varchar(255) not null,
    Unit varchar(255),
    City varchar(255) not null,
    Province varchar(255) not null,
    Country varchar(255) not null,
    PostalCode varchar(255) not null,
    primary key (SupplierId)
);

CREATE TABLE IF NOT EXISTS SuppliesTo
(
	SupplierId int not null,
    StoreId int not null,
    primary key (SupplierId, StoreId),
    foreign key (StoreId) references Stores (StoreId)
    ON DELETE CASCADE,
    foreign key (SupplierId) references Suppliers (SupplierId)
    ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Employees
(
	EmployeeId int not null,
    Name varchar(255) not null,
    Phone varchar(255) not null,
    Email varchar(255) not null,
    StreetName varchar(255) not null,
    Unit varchar(255),
    City varchar(255) not null,
    Province varchar(255) not null,
    Country varchar(255) not null,
    PostalCode varchar(255) not null,
    DOB date not null,
    StoreId int not null,
    primary key (EmployeeId),
    foreign key (StoreId) references Stores (StoreId)
    ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Inventory
(
	Copies int not null,
	ProductTitle varchar(255) not null,
    ProductReleaseDate date not null,
	StoreId int not null,
    primary key (ProductTitle, ProductReleaseDate, StoreId),
    foreign key (StoreId) references Stores (StoreId)
    ON DELETE CASCADE,
    foreign key (ProductTitle, ProductReleaseDate) references Products (Title, ReleaseDate)
    ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Customers
(
	Name varchar(255) not null,
	Email varchar(255) not null,
    Phone varchar(255),
    DOB date not null,
    StreetName varchar(255) not null,
    Unit varchar(255),
    City varchar(255) not null,
    Province varchar(255) not null,
    Country varchar(255) not null,
    PostalCode varchar(255) not null,
    MemberPoints int default 100,
    primary key (Email)
);

CREATE TABLE IF NOT EXISTS Rank
(
  MemberPoints int not null,
  MemberRank varchar(255) not null,
  primary key (MemberPoints)
);

CREATE TABLE IF NOT EXISTS TransactionInfo
(
	SaleId int not null,
    TimeInit datetime not null,
    TotalPrice float not null,
    PaymentType varchar(255) not null,
    CustomerEmail varchar(255) not null,
    primary key (SaleId)
);

CREATE TABLE IF NOT EXISTS TransactionItems
(
	SaleId int not null,
    ProductTitle varchar(255) not null,
    ProductReleaseDate date not null,
    primary key (SaleId, ProductTitle, ProductReleaseDate),
    foreign key (ProductTitle, ProductReleaseDate) references Products (Title, ReleaseDate)
    ON DELETE CASCADE,
    foreign key (SaleId) references TransactionInfo (SaleId)
    ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Rentals
(
	SaleId int not null,
    ProductTitle varchar(255) not null,
    ProductReleaseDate date not null,
	RentalId int not null,
    Status varchar(255),
    Returndate datetime,
    TimeReturned datetime,
    primary key (SaleId, RentalId, ProductTitle, ProductReleaseDate),
    foreign key (SaleId) references TransactionItems (SaleId)
    ON DELETE CASCADE,
    foreign key (ProductTitle, ProductReleaseDate) references Products (Title, ReleaseDate)
    ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS Reviews
(
    ReviewerEmail varchar(255) not null,
    Comment varchar(255),
    Rating int not null,
	Title varchar(255) not null,
    ReleaseDate date not null,
    primary key (ReviewerEmail, Title, ReleaseDate),
    foreign key (ReviewerEmail) references Customers (Email)
    ON DELETE CASCADE,
    foreign key (Title, ReleaseDate) references Movies (Title, ReleaseDate)
    ON DELETE CASCADE
);