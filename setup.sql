-- setup.sql
CREATE TABLE Currencies (
    CurrencyCode CHAR(3) PRIMARY KEY,
    CurrencyName VARCHAR2(50)
);

CREATE TABLE ConversionRates (
    CurrencyCode CHAR(3),
    RateToBDT DECIMAL(10, 4),
    LastUpdated DATE,
    FOREIGN KEY (CurrencyCode) REFERENCES Currencies(CurrencyCode)
);

INSERT INTO Currencies (CurrencyCode, CurrencyName) VALUES
('USD', 'US Dollar'),
('EUR', 'Euro');

INSERT INTO ConversionRates (CurrencyCode, RateToBDT, LastUpdated) VALUES
('USD', 120.0, CURRENT_DATE),
('EUR', 126.0, CURRENT_DATE);
