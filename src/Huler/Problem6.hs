module Huler.Problem6 (problem6) where

problem6 :: IO ()
problem6 = putStrLn $ show ans
    where ans = squareOfSum - sumOfSquares
          sumOfSquares = sum [x ** 2 | x <- [1..n]]
          squareOfSum = ((n * (n + 1)) / 2) ** 2
          n = 100

