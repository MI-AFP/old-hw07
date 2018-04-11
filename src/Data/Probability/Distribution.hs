module Data.Probability.Distribution where

import Data.Probability.Probability

newtype Distribution a = Distribution [(a, Probability)]

instance Functor Distribution where
  fmap = undefined

instance Applicative Distribution where
  pure  = undefined
  (<*>) = undefined

instance Monad Distribution where
  (>>=)  = undefined

-- weighted probability distribution (general)
weighted :: [(a, Probability)] -> Distribution a
weighted = undefined

-- uniform probability distribution (discrete)
uniform :: [a] -> Distribution a
uniform = undefined

-- alternative (Bernoulli) distribution (A, P(A), B=A')
alternative :: a -> Probability -> a -> Distribution a
alternative = undefined

-- binomial distribution (A, P(A), B=A', n)
binomial :: a -> Probability -> a -> Int -> Distribution a
binomial = undefined
