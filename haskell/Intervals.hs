
-- Sum of Intervals
-- 4 kyu
-- 05 / 02 / 2023

import  Data.List

sumOfIntervals :: [(Int, Int)] -> Int
sumOfIntervals [] = 0
sumOfIntervals xs = sum (map (\(x,y) -> y - x) (combine  (sortBy (\(a,_) (b,_) -> compare a b) xs)))

combine :: [(Int,Int)] -> [(Int,Int)]
combine [] = []
combine [(a,b)] = [(a,b)]
combine ((a,b):(c,d):xs) 
  | a >= c && b < d = combine ((c,d):xs)
  | a <= c && b > d = combine ((a,b):xs)
  | b >= c && a < c = combine ((a,d):xs)
  | a == c && b == d = combine ((c,d):xs)
  | otherwise = (a,b): combine ((c,d):xs)