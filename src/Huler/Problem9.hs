module Huler.Problem9 (problem9) where

import Huler.Toolbox (takeFirst)

-- Special Pythagorean triplet
--
-- Problem 9
-- A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
--
-- a2 + b2 = c2
-- For example, 32 + 42 = 9 + 16 = 25 = 52.
--
-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.
-- Find the product abc.


-- Euclid's Formula
-- Let m, n \in Z such that 0 < n < m.
-- a = (m ** 2) - (n ** 2), b = 2mn, c = (m ** 2) + (n ** 2).
problem9 :: IO ()
problem9 = print ans
  where ans = prod (takeFirst (\x -> (isSum1000 x) == True) triples)
        -- this is simpler than euclid's
        triples = [(a, b, c) | c <- [2..], b <- [2..c-1], a <- [2..b-1], a ** 2 + b ** 2 == c ** 2]

isSum1000 :: (Num a, Eq a) => (a, a, a) -> Bool
isSum1000 (x, y, z) = (x + y + z) == 1000

prod :: (Num a, Eq a) => Maybe (a, a, a) -> a
prod x = case x of Just (x, y, z) -> (x * y * z)
                   _ -> error "slain"
