module HW5Part1 where

data Reg
  = A
  | B
  deriving (Eq,Show)

data Expr
  = LitI Int
  | LitB Bool  
  | Get Reg 
  | Add Expr Expr
  | LessThanOrEqualTo Expr Expr
  | Negation Expr
  | Conjuction Expr Expr
  deriving (Eq,Show)

data Stmt
  = Set Reg Expr
  | Conditional Expr Prog Prog 

type Prog = [ Stmt ]
given_program = [(Set A (LitI 3))]

