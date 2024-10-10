data Min = Min Int deriving (Show, Eq, Ord)

instance Semigroup Min where
    Min x <> Min y = Min (min x y)

instance Monoid Min where
    mempty = Min maxBound
