-- Expanding a value
7X”F” = “0001111” -- unsigned fill with 0
7UX”F” = “0001111” -- same as above 
7SX”F” = “1111111” -- signed replicate sign -- Reducing 
7UX”0F” = “0001111” -- ok. Same value 
7SX”CF” = “1001111” -- ok. Same value 
7UX”8F” = “0001111” -- error. Value changed 
7SX”8F” = “001111” -- error. Value change. 
-- repeating X and - characters:
8SX”-X” = “----XXXX”
-- Decimal values. Requires length. Always unsigned 
8D”15” = “00001111”