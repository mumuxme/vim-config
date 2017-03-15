module Test where

import Data.List

{- Syntax -}

-- redundant
f :: Int
f = if True
       then 1
       else 2

f' :: Int
f' = if True
        then 1
        else 1

f1 :: Int
f1 = (1 + 2)

-- error
g :: Int
g = "aaa"


