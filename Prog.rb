$x = nil
$y = nil
$f = 0

def check?(x, y)

  case x
  when 0..4 then return true
  else return false
  end

  case y
  when 0..5 then return  true
  else return false
  end
end

def place(x, y, f)
  if check?(x,y)
  $x = x
  $y = y
  $f = f
  end
end

def move
  if check?($x,$y)
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

  print $x, $y, $f
  puts

end

place(4,4,:east)
report
move
report
move
report
move
report

move
report

