module Huler.Problem3
(
    problemThree
)
  where
-- Problem Three
--
-- The prime factors of 13195 are 5, 7, 13 and 29.
--
-- What is the largest prime factor of the number 600851475143 ?
problemThree :: Integer
problemThree = problemThree' 600851475143

problemThree' :: Integer -> Integer
problemThree' k =
    let pfs :: (Integral a, Ord a) => a -> a -> [a]
        pfs n p = if n < (p ^ 2) then [n]
                  else v ++ (pfs n' p')
             where (v, n', p') = if n `mod` p == 0
                                 then ([p], n `div` p, p)
                                 else ([],  n,         p + 1)
    in maximum (pfs k 2)


