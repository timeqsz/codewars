-- Given a list of string, the string with 4 letter length is your friend
-- 8 kyu
-- 04 / 26 / 2023

friend :: [String] -> [[Char]]
friend  = filter (\x -> length x == 4)