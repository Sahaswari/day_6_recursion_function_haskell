import Prelude hiding (concat)
{-# HLINT ignore "Use foldr" #-}
concat :: [[a]] -> [a]
concat [] = []
concat (xs:xss) = xs ++ concat xss

concat1 :: [[a]] -> [a]
concat1 [] = []
concat1 (xs:xss) = xs ++ concat1 xss

main :: IO ()
main = do
    let list = [[1,2,3], [4,5], [6]]
    let list1 = [[7],[8]]
    putStrLn $ "Concatenated list: " ++ show (concat list) 
    putStrLn $ "Concatenated list: " ++ show (concat1 list1) -- Should print [7,8]
