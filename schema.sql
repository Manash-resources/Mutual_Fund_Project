CREATE TABLE dim_fund (
    fund_id INTEGER PRIMARY KEY,
    fund_name TEXT,
    amfi_code TEXT
);

CREATE TABLE dim_date (
    date_id INTEGER PRIMARY KEY,
    date TEXT
);

CREATE TABLE fact_nav (
    id INTEGER PRIMARY KEY,
    amfi_code TEXT,
    date TEXT,
    nav REAL
);

CREATE TABLE fact_transactions (
    id INTEGER PRIMARY KEY,
    investor_id TEXT,
    transaction_type TEXT,
    amount REAL,
    date TEXT
);

CREATE TABLE fact_performance (
    id INTEGER PRIMARY KEY,
    fund_id INTEGER,
    returns REAL,
    expense_ratio REAL
);