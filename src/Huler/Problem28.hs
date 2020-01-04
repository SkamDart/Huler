module Huler.Problem28 (problem28) where

problem28 :: IO ()
problem28 = print ans
  where size = [(2 * n) - 1 | n <- [1..]]
        v    = zip size spiral
        ans = aux 1001 0 v
        aux n s xss = if side > n then s else aux n (s + (sum vals)) (tail xss)
          where (side, vals) = head xss

-- | Infinite generator for the diagonals using a closed form solution (calculated by hand)
-- for each diagonal with its origin at 1.
spiral :: (Eq a, Enum a, Floating a, Show a) => [[a]]
spiral = [1] : [
                 [ 4 * (n ** 2) - (2 * n) + 1,
                   4 * (n ** 2)           + 1,
                   4 * (n ** 2) + (2 * n) + 1,
                   4 * (n ** 2) + (4 * n) + 1
                 ] | n <-[1..]
               ]
