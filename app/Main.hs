module Main where

import System.IO
import Game

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering
    run_game
