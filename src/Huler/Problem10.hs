module Huler.Problem10 (problem10) where

import Huler.Toolbox (primeGen)

-- Summation of Primes
--
-- Problem 10
--
-- The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17
--
-- Find the sum of primes below two million
problem10 :: IO ()
problem10 = putStrLn $ show ans
    where ans = sum primes
          primes = takeWhile (\x -> x < n) primeGen
          n = 2000000
