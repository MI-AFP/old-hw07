module Data.Probability.Probability where

import Data.Semigroup

class (Ord p, Monoid p) => Prob p where
  toProbability :: Rational -> p
  fromProbability :: p -> Rational
  isProbability :: p -> Bool

  -- | Probability of not-occuring event
  pInv  :: p -> p
  -- | Probability of first and/or second event (or, not necessarily disjoint)
  pOr  :: p -> p -> p
  -- | Probability of two independent events together (and)
  pIAnd :: p -> p -> p

newtype Probability = Probability Double
             deriving (Show, Read, Eq, Ord)

instance Semigroup Probability where
  (<>) = undefined

instance Monoid Probability where
  mempty = undefined
  mappend = (<>)

instance Prob Probability where
  toProbability = undefined
  fromProbability = undefined
  isProbability = undefined
  pInv = undefined
  pOr = undefined
  pIAnd = undefined
