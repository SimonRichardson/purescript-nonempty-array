module Data.Array.NonEmpty.Unsafe where

import Data.Array
import Data.Array.NonEmpty (NonEmpty(), (:|))

fromArray :: forall a. (Array a) -> NonEmpty a
fromArray arr = (uncons arr) >>= (\x -> x.head :| x.tail)