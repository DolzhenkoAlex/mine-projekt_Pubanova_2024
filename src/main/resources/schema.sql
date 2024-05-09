DROP TABLE IF EXISTS deal_type, deal_place, currency, deals ;

CREATE TABLE IF NOT EXISTS deal_type (
                                         id SERIAL PRIMARY KEY,
                                         type VARCHAR(255) NOT NULL

);

CREATE TABLE IF NOT EXISTS deal_place (
                                          id SERIAL PRIMARY KEY,
                                          deal_Place_Full VARCHAR(255) NOT NULL,
                                          deal_Place_Short VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS currency
(
    id             SERIAL PRIMARY KEY,
    currency_Full  VARCHAR(255) NOT NULL,
    currency_Short VARCHAR(255) NOT NULL
);
CREATE TABLE IF NOT EXISTS deals (
                                     id serial PRIMARY KEY,
                                     type_id BIGINT not null ,
                                     place_id BIGINT not null ,
                                     currency_id BIGINT not null ,

                                     ticker VARCHAR(255) NOT NULL,
                                     order_Number VARCHAR(255) NOT NULL,
                                     deal_Number VARCHAR(255) NOT NULL,
                                     deal_Quantity INTEGER not null,
                                     deal_Price NUMERIC(20, 2) not null,
                                     deal_Total_Cost NUMERIC(20, 2) not null,
                                     deal_Trader VARCHAR(255) NOT NULL,
                                     deal_Commission NUMERIC(20, 2) not null,
                                     FOREIGN KEY (type_id) REFERENCES deal_type(id),
                                     FOREIGN KEY (place_id) REFERENCES deal_place(id),
                                     FOREIGN KEY (currency_id) REFERENCES currency(id)
);
