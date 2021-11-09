import Data.List
type Result = [String]

solution1 =
  [ "DAD  SEND",
    "O EAST  A",
    "W A  ITSY",
    "NERF N T ",
    " A ARK U ",
    " S T SYNC",
    "MESH  A A",
    "A  EVER R",
    "NEAR  D D"
  ]

testLine = "NERF N T "

longWords x = filter lengthLine (words x)

lengthLine x = length x > 1

horizontalPrint :: Result -> [String]
horizontalPrint x = concat (map longWords x)

verticalPrint :: Result -> [String]
verticalPrint x = concat (map longWords (transpose x))

answers :: Result -> ([String], [String])
answers x = (horizontalPrint x , verticalPrint x)
