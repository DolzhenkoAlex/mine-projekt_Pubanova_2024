insert into deal_type (type) values ('Брокерский'), ('Дилерский');
insert into deal_place (deal_Place_Full, deal_Place_Short) values ('Московская Биржа', 'ММВБ');
insert into currency (currency_Full, currency_Short) VALUES ('Доллар США','USD');

INSERT INTO deals (type_id, place_id, currency_id, ticker, order_Number, deal_Number, deal_Quantity, deal_Price, deal_Total_Cost, deal_Trader, deal_Commission)
VALUES (1, 1, 1, 'AAPL', 'ORD123', 'DEAL001', 100, 150.50, 15050.00, 'TRDR001', 20.00);

INSERT INTO deals (type_id, place_id, currency_id, ticker, order_Number, deal_Number, deal_Quantity, deal_Price, deal_Total_Cost, deal_Trader, deal_Commission)
VALUES (2, 1, 1, 'GOOGL', 'ORD124', 'DEAL002', 50, 2000.75, 100037.50, 'TRDR002', 30.00);
