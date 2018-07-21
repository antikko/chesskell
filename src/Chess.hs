module Chess (UnitType, Position, Side, Unit, Board, move) where


data UnitType = Pawn | Rook | Horse | Squire | Queen | King
data Position = Postion Int Int
data Side = White | Black
data Unit = Unit Side Position UnitType
type Board = [Unit]

move :: Position -> Position -> Board ->  Maybe Board
move = undefined