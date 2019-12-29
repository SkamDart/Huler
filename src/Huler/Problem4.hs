module Huler.Problem4
(
    problemFour
)
where

-- Problem Four
-- A palindromic number reads the same both ways.
-- The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
--
-- Find the largest palindrome made from the product of two 3-digit numbers.
problemFour :: (Enum a, Num a, Ord a, Show a) => a
problemFour =
    let prods = [(x * y) | x <- (enumFromThenTo 999 998 1),
                           y <- (enumFromThenTo 999 998 1),
                           isPalindrome (show (x * y)) ]
        isPalindrome xs = xs == (reverse xs)
    in maximum prods


