{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
import Prelude hiding (and)
and :: [Bool] -> Bool
and [] = True
and (x : xs) = x && and xs

main :: IO ()
main = do
    let list1 = [True, True, True]
    let list2 = [True, False, True]
    putStrLn $ "and list1: " ++ show (and list1)  -- Should print True
    putStrLn $ "and list2: " ++ show (and list2)

    

