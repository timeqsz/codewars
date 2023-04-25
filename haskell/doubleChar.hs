-- Given a string, you have to return a string in which each character (case-sensitive) is repeated once.
-- 8 kyu
-- 04 / 25 / 2023

doubleChar :: [Char] -> [Char]
doubleChar = concatMap (replicate 2)