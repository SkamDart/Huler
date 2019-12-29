module Huler.Problem1
  ( problem1
  )
where

-- Problem One
-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
-- Find the sum of all the multiples of 3 or 5 below 1000.
problem1 :: IO ()
problem1 = putStrLn $ show ans
  where ans = sum [ x | x <- [1 .. 999], x `mod` 3 == 0 || x `mod` 5 == 0 ]

