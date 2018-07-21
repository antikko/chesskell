module Game
    ( run_game
    ) where

data Command = Quit | Move Int Int Int Int

-- | Gets a command and executes it
run_game :: IO ()
run_game = do
    command <- get_command
    act_on_command command


get_command :: IO (Maybe Command)
get_command = putStr "Input command: ">> fmap parse_command getLine

parse_command :: String -> Maybe Command
parse_command "quit" = Just Quit
parse_command _ = Nothing

act_on_command :: Maybe Command -> IO()
act_on_command (Just c) = act c
act_on_command _ = putStrLn "Unknown command" >> run_game

act :: Command -> IO()
act Quit = putStr "Thank you for playing"
act _ = putStrLn "Unimplemnted command" >> run_game