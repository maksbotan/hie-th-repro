module TH where

import           Data.Aeson
import           Data.Yaml                  (decodeFileThrow)
import           Language.Haskell.TH        (Exp, Q, runIO)
import           Language.Haskell.TH.Syntax (lift)

import qualified Data.ByteString            as BS

loadEnum :: FilePath -> Q Exp
loadEnum path = do
  -- Comment this
  val <- runIO $ decodeFileThrow path :: Q Value
  -- Uncomment this
  --Just val <- runIO (decodeStrict <$> BS.readFile path) :: Q (Maybe Value)
  lift ([] :: [String])
