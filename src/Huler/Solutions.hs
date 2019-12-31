module Huler.Solutions
  ( intToAns
  )
where

import qualified Data.Map.Strict               as M

import           Huler.Problem1
import           Huler.Problem2
import           Huler.Problem3
import           Huler.Problem4
import           Huler.Problem5
import           Huler.Problem6
import           Huler.Problem7
import           Huler.Problem9

import           Huler.Problem10

intToAns :: M.Map Int (IO ())
intToAns =
  M.fromList [ (1, problem1)
             , (2, problem2)
             , (3, problem3)
             , (4, problem4)
             , (5, problem5)
             , (6, problem6)
             , (7, problem7)
             , (9, problem9)
             , (10, problem10)]

