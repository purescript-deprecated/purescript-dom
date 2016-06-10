module DOM.HTML.SelectionMode
  ( SelectionMode
  , runSelectionMode
  , select
  , start
  , end
  , preserve
  ) where

import Prelude

newtype SelectionMode = SelectionMode String

runSelectionMode :: SelectionMode -> String
runSelectionMode (SelectionMode m) = m

instance eqSelectionMode :: Eq SelectionMode where
  eq (SelectionMode x) (SelectionMode y) = x == y

instance ordSelectionMode :: Ord SelectionMode where
  compare (SelectionMode x) (SelectionMode y) = compare x y

instance showSelectionMode :: Show SelectionMode where
  show (SelectionMode m) = "(SelectionMode " <> show m <> ")"

select :: SelectionMode
select = SelectionMode "select"

start :: SelectionMode
start = SelectionMode "start"

end :: SelectionMode
end = SelectionMode "end"

preserve :: SelectionMode
preserve = SelectionMode "preserve"
