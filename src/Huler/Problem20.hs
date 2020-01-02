module Huler.Problem20 (problem20) where

problem20 :: IO ()
problem20 = print (sum (digits (fact 100)))

-- | Factorial function using a fold over multiplication
fact :: (Integral a, Show a) => a -> a
fact n = foldl (*) 1 [1..n]

-- | Converts integral value into a list of its digits
digits :: (Integral a) => a -> [a]
digits 0 = []
digits n = digits (n `div` 10) ++ [n `mod` 10]
