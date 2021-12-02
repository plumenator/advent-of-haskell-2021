import Data.Char

main :: IO ()
main = do
   depthStrs <- getContents
   let depths = map read (lines depthStrs)
   putStrLn $ show $ countIncreases depths

countIncreases :: [Int] -> Int
countIncreases depths = length $ filter id $ zipWith (<) depths (tail depths)