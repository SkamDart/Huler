module Huler.Solutions
  ( intToAns
  )
where

import qualified Data.Map.Strict               as M

import           Huler.Problem1
import           Huler.Problem2
import           Huler.Problem3
import           Huler.Problem4

intToAns :: M.Map Int (IO ())
intToAns =
  M.fromList [(1, problem1), (2, problem2), (3, problem3), (4, problem4)]
