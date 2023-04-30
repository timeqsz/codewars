-- smash
-- 8 kyu
-- 04 / 30 / 2023

smash :: [String] -> String
smash = foldl (\acc curr -> if null acc then acc ++ curr else acc ++ " " ++ curr) []