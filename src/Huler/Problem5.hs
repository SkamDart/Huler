module Huler.Problem5 (problem5) where

import Huler.Toolbox (takeFirst)

import Debug.Trace

-- Problem 5
--
-- 2520 is the smallest number that can be divided by each of the numbers
-- from 1 to 10 without any remainder.
--
-- What is the smallest positive number that is evenly divisible
-- by all of the numbers from 1 to 20?
problem5 :: IO ()
problem5 = bruteforce
-- problem5 = putStrLn $ show ans
  -- where ans = "foo"

bruteforce :: IO ()
bruteforce = putStrLn $ show ans
    where ans = scm [1..20]
          scm xss = takeFirst (divAll xss) [20..]
          divAll divs k = trace ("divAll " ++ show k) (all (\x -> k `mod` x == 0) divs)
