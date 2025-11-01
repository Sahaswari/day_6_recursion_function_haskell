import Prelude hiding (concat)
{-# HLINT ignore "Use foldr" #-}
concat :: [[a]] -> [a]
concat [] = []
concat (xs:xss) = xs ++ concat xss

main :: IO ()
main = do
    let list = [[1,2,3], [4,5], [6]]
    putStrLn $ "Concatenated list: " ++ show (concat list)

