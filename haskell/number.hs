-- Testing 1-2-3
-- 7 kyu
-- 04 / 21 / 2023

number :: [String] -> [String]
number = zipWith (\x y -> show x ++ ": " ++ y) [1..] 