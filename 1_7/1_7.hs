import Data.List

main :: IO ()
main = do
  let s = "1001"
      x = 1
      c = length $ filter (== '1') s
      flag = True
      n = length s
      limit = x * c + 1
      (maxCount, _) = foldl' (\(maxC, count) char -> 
                                if char == '0' 
                                then let newCount = count + 1 
                                     in (max maxC newCount, newCount) 
                                else (maxC, 0)) 
                              (0, 0) 
                              (take (n - 1) s)
      result = if maxCount >= limit then "No" else "Yes"
  putStrLn result


