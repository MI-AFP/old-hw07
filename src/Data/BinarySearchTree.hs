module Data.BinarySearchTree where

import Data.Semigroup

-- | Binary search tree as described at wikipedia:
--  https://en.wikipedia.org/wiki/Binary_search_tree
data BSTree a = Node a (BSTree a) (BSTree a)
              | Nil
              deriving (Show, Read, Eq)

-- Feel free to copy your code from HW02

instance Semigroup a => Semigroup (BSTree a) where
  -- | Merge two trees
  (<>) = undefined

instance Monoid a => Monoid (BSTree a) where
  mempty = undefined

instance Functor BSTree where
  -- | Apply function over tree
  fmap = undefined

instance Applicative BSTree where
  pure  = undefined
  -- | Apply functions to elements in given depth and lower
  (<*>) = undefined

instance Monad BSTree where
  -- | Apply tree on f if not empty
  (>>=)  = undefined
