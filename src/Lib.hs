{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE FlexibleContexts          #-}
{-# LANGUAGE TypeFamilies              #-}

module Lib
    ( someFunc
    ) where

import Diagrams.Prelude
import Diagrams.Backend.SVG.CmdLine

someFunc :: IO ()
someFunc = mainWith (circles :: QDiagram B V2 Double Any)

circles :: QDiagram B V2 Double Any
circles = mconcat
    [ circle (1.5 ** x) # translateX (3 * 1.5 ** x) | x <- [5,4..(-5)] ] --ezt lehet atirni
