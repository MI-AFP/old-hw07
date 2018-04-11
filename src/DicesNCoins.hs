module DicesNCoins where

import Data.Probability.Distribution
import Data.Probability.Probability

data Coin = Heads | Tails
          deriving (Show, Read, Eq, Ord)

data Dice = One | Two | Three | Four | Five | Six
          deriving (Show, Read, Eq, Ord)

luckyDice :: Distribution Dice
luckyDice = weighted [ (One, Probability 0.1)
                     , (Two, Probability 0.1)
                     , (Three, Probability 0.1)
                     , (Four, Probability 0.1)
                     , (Five, Probability 0.2)
                     , (Six, Probability 0.4)
                     ]

-- return distribution of tossing single coin (see Data.Probability.Distribution)
singleCoinToss :: Distribution Coin
singleCoinToss = undefined

badCoinToss :: Probability -> Distribution Coin
badCoinToss pHeads = undefined

nDiceTosses :: Integer -> Distribution Dice
nDiceTosses n = undefined

tossCoinAndDice :: Distribution (Coin, Dice)
tossCoinAndDice = undefined

luckyDiceKTimesInNToss :: Integer -> Integer -> Distribution Dice
luckyDiceKTimesInNToss k n = undefined
