$x = 0
$y = 0
$f = 0

def place(x, y, f)

  $x = x
  $y = y
  $f = f
end

def move

  case $f
  when :north
    $y += 1
  when :east
    $x += 1
  when :south
    $Y -= 1
  when :west
    $x -= 1
  end

end

def right
  case $f
  when :north
    $f = :east
  when :east
    $f = :south
  when :south
    $f = :west
  when :west
    $f = :north
  end
end

def left

  case $f
  when :north
  $f = :west
  when :west
  $f = :south
  when :south
  $f = :east
  when :east
  $f = :north
end

end

def report

  print $x,$y,$f
  puts

end
place(1, 2, :east)
move
move
left
move
report
