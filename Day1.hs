import Data.Char
import Data.List

main :: IO ()
main = do
   putStrLn "Enter the window size"
   windowStr <- getLine
   let window = read windowStr
   putStrLn "Enter the input"
   depthStrs <- getContents
   let depths = map read (lines depthStrs)
   putStrLn $ show $ countIncreases window depths

countIncreases :: Int -> [Int] -> Int
countIncreases window depths = countTrue $ zipWith sumAndComp windows (tail windows)
  where
    windows = if window == 1
              then map (: []) depths
              else zipLists (take window $ tails depths)

countTrue : [Bool] -> Int
countTrue = length . filter id

sumAndComp :: [Int] -> [Int] -> Bool
sumAndComp first second = 
  sum first < sum second

zipLists :: [[a]] -> [[a]]
zipLists = foldr cons []
  where
    cons :: [a] -> [[a]] -> [[a]]
    cons xs [] = [xs]
    cons xs [ys] = zipWith (\x y -> [x, y]) xs ys
    cons xs xss = zipWith (:) xs xss