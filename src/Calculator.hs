module Calculator (calculator) where

type Calculation = Either String Double

-- Use monads, and functors and/or applicative to make the code simple!

-- Devise own operations with errors, here are msgs for you
e0   = "Unknown operation"
e1   = "Unknown constant"
e2 x = "Not a number:" ++ show x
e3 g r = "Missing operand ( " ++ show g ++ " given, " ++ show r ++ " required)"
e4   = "DIV - Y cannot be 0"
e5   = "GCD - X must be greater or equal to Y"
e6   = "POW - X and Y cannot be both 0"
e7   = "LOG - X and B must be greater than 0"
e8   = "LOG - B must be greater than 0"
e9   = "LOG - X must be greater than 0"
e10  = "SQRT - X must be greater or equal to 0"

-- | Function do to the calculation
calculate :: String -> Calculation
calculate = undefined

-- | Help for you and the users
help :: IO ()
help = do
  putStrLn "-------------------------"
  putStrLn "Binary operations:"
  putStrLn " ADD X Y"
  putStrLn " SUB X Y"
  putStrLn " MUL X Y"
  putStrLn " DIV X Y" -- Y /= 0
  putStrLn " GCD X Y" -- X > Y, positive
  putStrLn " POW X Y" -- X /= 0 || Y /= 0
  putStrLn " LOG B X" -- X > 0 && B > 0
  putStrLn "Unary functions:"
  putStrLn " SQRT X"  -- X >= 0
  putStrLn " LOG X"   -- B = 10, X > 0
  putStrLn " SIN X"
  putStrLn " COS X"
  putStrLn "Constants:"
  putStrLn " PI (-PI)"
  putStrLn "Others:"
  putStrLn " ?"
  putStrLn "-------------------------"

-- | CLI for calculator
calculator :: IO ()
calculator = do
    putStrLn "Even more Basic Calculator (use '?' for help)"
    -- TODO: implement it with some loop?!
    help
    putStrLn "Bye!"
