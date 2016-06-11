module DOM.HTML.HTMLMediaElement.NetworkState (NetworkState(..)) where

import Prelude
import Data.Maybe (Maybe(..))
import Data.Enum (class Enum, class BoundedEnum, Cardinality(..), defaultSucc, defaultPred)

data NetworkState
  = NETWORK_EMPTY
  | NETWORK_IDLE
  | NETWORK_LOADING
  | NETWORK_NO_SOURCE

derive instance eqNetworkState :: Eq NetworkState
derive instance ordNetworkState :: Ord NetworkState

instance boundedNetworkState :: Bounded NetworkState where
  bottom = NETWORK_EMPTY
  top = NETWORK_NO_SOURCE

instance enumNetworkState :: Enum NetworkState where
  succ = defaultSucc toEnumNetworkState fromEnumNetworkState
  pred = defaultPred toEnumNetworkState fromEnumNetworkState

instance boundedEnumNetworkState :: BoundedEnum NetworkState where
  cardinality = Cardinality 4
  toEnum = toEnumNetworkState
  fromEnum = fromEnumNetworkState

instance showNetworkState :: Show NetworkState where
  show NETWORK_EMPTY = "NETWORK_EMPTY"
  show NETWORK_IDLE = "NETWORK_IDLE"
  show NETWORK_LOADING = "NETWORK_LOADING"
  show NETWORK_NO_SOURCE = "NETWORK_NO_SOURCE"

toEnumNetworkState :: Int -> Maybe NetworkState
toEnumNetworkState =
  case _ of
    0 -> Just NETWORK_EMPTY
    1 -> Just NETWORK_IDLE
    2 -> Just NETWORK_LOADING
    3 -> Just NETWORK_NO_SOURCE
    _ -> Nothing

fromEnumNetworkState :: NetworkState -> Int
fromEnumNetworkState =
  case _ of
    NETWORK_EMPTY -> 0
    NETWORK_IDLE -> 1
    NETWORK_LOADING -> 2
    NETWORK_NO_SOURCE -> 3
