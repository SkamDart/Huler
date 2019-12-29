module Huler.Problem7 (problem7) where

import Huler.Toolbox (primeGen)

-- 10001st prime
--
-- Problem 7
-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
-- we can see that the 6th prime is 13.
--
-- What is the 10,001st prime number?
problem7 :: IO ()
problem7 = putStrLn $ show (primeGen !! 10000)
