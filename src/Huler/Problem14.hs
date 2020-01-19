module Huler.Problem14 (problem14) where

import Data.List

problem14 :: IO ()
problem14 = putStrLn $ show ((longestCollatz (1000000 :: Int)) + 1)

longestCollatz :: (Enum a, Integral a, Num a) => a -> Int
longestCollatz n = case m of Just x -> x
                             Nothing -> error "slain"
    where k = maximum (map (length . collatz) [1..n])
          m = elemIndex k (map (length . collatz) [1..n])

collatz :: (Enum a, Integral a, Num a) => a -> [a]
collatz 1 = [1]
collatz 2 = [1, 2]
collatz n
    | even n = n : collatz (n `div` 2)
    | odd  n = n : collatz (3 * n + 1)
