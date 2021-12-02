import Data.Char

main :: IO ()
main = do
   depthStrs <- getContents
   let depths = map read (lines depthStrs)
   putStrLn $ show $ countIncreases depths

countIncreases :: [Int] -> Int
countIncreases depths = length $ filter id $ zipWith sumAndComp triples (tail triples)
  where
    triples = zip3 depths (tail depths) (tail (tail depths))

sumAndComp :: (Int, Int, Int) -> (Int, Int, Int) -> Bool
sumAndComp (x, y, z) (a, b, c) = 
  (x + y + z) < (a + b + c)