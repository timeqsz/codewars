
-- just use list comprehension (it's powerful!)
-- 6 kyu
-- 04 / 28/ 2023

multiplicationTable :: Int -> [[Int]]
multiplicationTable n = [ map (* x) [1..n]  | x <- [1..n]]