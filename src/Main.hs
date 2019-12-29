module Main where

import qualified Data.Map.Strict as M

import System.Environment
import System.Exit

import Huler.Solutions (intToAns)

usage :: IO ()
usage = putStrLn "enter problem number to generate solution for"

run :: String -> IO ()
run n = soln
  where
      num = read n :: Int
      soln = case M.lookup num intToAns of Nothing -> putStrLn "no answer found"
                                           Just f  -> f

parseAndRun :: [String] -> IO ()
parseAndRun argv = case argv of [num] -> run num
                                _     -> usage

main :: IO ()
main = getArgs >>= parseAndRun

