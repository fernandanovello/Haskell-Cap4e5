func :: (String -> String) -> String -> String
func f s = reverse s ++ f s
