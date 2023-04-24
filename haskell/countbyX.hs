-- Design a Simple Automaton (Finite State Machine)
-- 8 kyu
-- 04 / 24 / 2023

countBy :: Integer -> Int -> [Integer]
countBy x n = take n [x, x+x ..]


-- a very easy problem, just use lazy evaluation