
-- Design a Simple Automaton (Finite State Machine)
-- 6 kyu
-- 04 / 22 / 2023

readCommands :: [Char] -> Bool
readCommands = readCommandsState 1

readCommandsState :: Int -> [Char] -> Bool
readCommandsState 2 [] = True
readCommandsState _ [] = False
readCommandsState state (x:xs) = case (state,x) of
    (1,'0') -> readCommandsState 1 xs
    (1,'1') -> readCommandsState 2 xs
    (2,'0') -> readCommandsState 3 xs
    (2,'1') -> readCommandsState 2 xs
    (3,'0') -> readCommandsState 2 xs
    (3,'1') -> readCommandsState 2 xs
    (_,_) -> False


-- A better way

-- data Automaton = Q1 | Q2 | Q3
--   deriving Eq

-- readCommands :: [Char] -> Bool
-- readCommands = (Q2 == ) . foldl transition Q1 

-- transition :: Automaton -> Char -> Automaton
-- transition Q1 '0' = Q1
-- transition Q2 '0' = Q3
-- transition _ _ = Q2

-- why it's better?
-- because it constraints Automaton state, make the program more elegent
-- but I think if we design a automaton to solve problem, we'd better 
-- write the state transition straightly, not cut them.
-- above all, In my opion, the most elegent way looks like this:

-- data Automaton = Q1 | Q2 | Q3
--   deriving Eq

-- readCommands :: [Char] -> Bool
-- readCommands = (Q2 == ) . foldl transition Q1 

-- transition :: Automaton -> Char -> Automaton
-- transition Q1 '0' = Q1
-- transition Q1 '1' = Q2
-- transition Q2 '0' = Q3
-- transition Q2 '1' = Q2
-- transition Q3 '0' = Q2
-- transition Q3 '1' = Q2