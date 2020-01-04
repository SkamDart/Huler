module Huler.Problem493 (problem493) where

-- | Did some probablility theory to come to the following solution.
--
-- Let I_i be the indicator variable that the i^{th} color is drawn at least once.
--
-- The complement of this (which is easier to computer) is that the i_th color is not chosen.
--
-- P[I_i = 1] = 1 - P[I_i = 0] (1)
--
-- E[I_i] = 0 * P[I_i = 0] + 1 * P[I_i = 1] = P[I_i = 1] = 1 - P[I_i = 0]   (2)
--
-- Let Y = I_1 + I_2 + ... + I_7.
--
-- E[Y] = E[I_1 + I_2 + ... + I_7] = E[I_1] + E[I_2] + ... + E[I_7] by the linearity of expectation.
--
-- E[I_1] + E[I_2] + ... + E[I_7] = P[I_1 = 1] + P[I_2 = 1] + ... +  P[I_7 = 1] by (2)
--
-- P[I_1] + P[I_2] + ... + P[I_7] = (1 - P[I_1 = 0]) + (1 - P[I_2 = 0]) + ... + (1 - P[I_7 = 0])
--
-- P[I = 0] = successful possibilities / all possibilities = (60 choose 20 / 70 choose 20)
--
-- E[Y] = 7(1 - hypergeometric(70, 60, 20)) = 7(1 - (60 choose 20 / 70 choose 20))
problem493 :: IO ()
problem493 = print ans
  where ans = (7 * (1 - (num / denom)))
        num = fromIntegral (60 `choose` 20)
        denom = fromIntegral (70 `choose` 20)

factorial :: (Enum a, Num a) => a -> a
factorial n = foldr (*) 1 [2..n]

-- | n choose k
choose :: (Enum a, Integral a, Num a, Show a) => a -> a -> a
choose n k = factorial n `div` (factorial k * factorial (n - k))

