module Huler.Toolbox
(
  takeFirst
) where

-- | takeFirst applies a predicate p to every element until it is satisfied.
takeFirst :: (a -> Bool) -> [a] -> Maybe a
takeFirst p xss = f p xss
  where f p []     = Nothing
        f p (x:xs) = case p x of True -> Just x
                                 _    -> f p xs
