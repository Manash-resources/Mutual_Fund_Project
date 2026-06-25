## fact_nav
| Column Name | Data Type| Description              | Example    | Source          |
|-------------|----------|--------------------------|------------|-----------------|
| amfi_code   | Integer  | Unique ID of mutual fund | 120503     | nav_history.csv |
| date        | Date     | NAV recorded date        | 2024-01-01 | nav_history.csv |
| nav         | Float    | Net Asset Value of fund  | 152.34     | nav_history.csv |


## fact_transactions
| Column Name | Data Type | Description                  | Example  | Source                    |
|-------------|-----------|------------------------------|----------|-------------------------- |
| investor_id | Integer   | Unique investor ID           | 1001     | investor_transactions.csv |
| fund_id     | Integer   | Fund identifier              | 120503   | investor_transactions.csv |
| date        | Date      | Transaction date             | 2024-02-10 | investor_transactions.csv |
| amount      | Float     | Investment amount            | 5000.00  | investor_transactions.csv |
| transaction_type|String | Type (SIP/Lumpsum/Redemption)| SIP      | investor_transactions.csv |
| kyc_status  | String    | KYC verification status      | Verified | investor_transactions.csv |


## fact_performance

| Column Name-- | Data Type | Description             | Example | Source                 |
|---------------|-----------|-------------------------|---------|------------------------|
| fund_id       | Integer   | Fund ID                 | 120503  | scheme_performance.csv |
| returns       | Float     | Annual return (%)       | 12.5    | scheme_performance.csv |
| expense_ratio | Float     | Fund management fee (%) | 1.2     |   scheme_performance.csv |
| anomaly       | Boolean   | Flag for unusual returns| False   | calculated             |