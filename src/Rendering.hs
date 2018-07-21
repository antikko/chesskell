module Rendering () where

-- | Represents taht the value can be rendered
class Renderable a where
    ascii_value :: a -> Char
    position :: a -> (Int, Int)

-- | Represents a type which can be outputted
type Rendering = String

-- | Convers all renderable values to single rendering
render_board :: Renderable a => [a] -> Rendering
render_board = undefined

-- | Applies given rendering to console.
apply_rendering :: Rendering -> IO()
apply_rendering = undefined

