{-# LANGUAGE TemplateHaskell #-}

module Exp where

import TH

list :: [String]
list = $(loadEnum "test.txt")
