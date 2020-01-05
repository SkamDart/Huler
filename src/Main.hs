{-# LANGUAGE OverloadedStrings #-}
module Main where

import qualified Data.Map.Strict as M

import qualified Data.Text       as T
import qualified Data.Text.IO    as T

import System.Environment

import System.Exit

import Text.Mustache

import Huler.Solutions (intToAns)


data Problem = Problem { number :: String }

instance ToMustache Problem where
  toMustache problem = object [ "number" ~> number problem ]

usage :: IO ()
usage = putStrLn "enter problem number to generate solution for"

run :: String -> IO ()
run n = soln
  where
      num = read n :: Int
      soln = case M.lookup num intToAns of Nothing -> putStrLn "no answer found"
                                           Just f  -> f

-- | gen creates a new file from our mustache template
gen :: String -> IO ()
gen problemNumber = do
  let searchSpace = ["." , "templates"]
      problemTemplateFilename = "problem.mustache"
      problemFilename = "src/Huler/Problem" ++ problemNumber ++ ".hs"
  mTemplate <- automaticCompile searchSpace problemTemplateFilename
  case mTemplate of
    Left err       -> print err
    Right template -> do
      let fileContents = substitute template $ Problem problemNumber
      T.writeFile problemFilename fileContents

parseAndRun :: [String] -> IO ()
parseAndRun argv = case argv of [num]        -> run num
                                ["gen", num] -> gen num
                                _            -> usage

main :: IO ()
main = getArgs >>= parseAndRun

