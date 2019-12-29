module Huler.Toolbox
(
  primeGen
, takeFirst
) where

-- | takeFirst applies a predicate p to every element until it is satisfied.
takeFirst :: (a -> Bool) -> [a] -> Maybe a
takeFirst p xss = f p xss
  where f p []     = Nothing
        f p (x:xs) = case p x of True -> Just x
                                 _    -> f p xs

-- | "Infinite" list of primes
-- Stolen from
-- https://www.reddit.com/r/haskell/comments/35vc31/the_real_way_to_generate_a_list_of_primes_in/
primeGen :: Integral a => [a]
primeGen = 2 : 3 : 5 : primes'
  where
    isPrime (p:ps) n = p*p > n || n `rem` p /= 0 && isPrime ps n
    primes' = 7 : filter (isPrime primes') (scanl (+) 11 $ cycle [2,4,2,4,6,2,6,4])
