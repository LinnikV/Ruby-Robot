$x = nil
$y = nil
$f = nil

def check?(x, y)

  case x
  when (0..4)
  else return false
  end

  case y
  when (0..5)
  else return false
  end
  return true
end

def place(x, y, f)
  if check?(x,y)
  $x = x
  $y = y
  $f = f
  end
end

def move
  if check?($x, $y)
  case $f
  when :north then $y += 1
  when :east then $x += 1
  when :south then $y -= 1
  when :west then $x -= 1
  end
  end
end

def right
  if check?($x ,$y)
  case $f
  when :north then $f = :east
  when :east then $f = :south
  when :south then $f = :west
  when :west then $f = :north
  end
  end
end

def left
  if check?($x,$y)
  case $f
  when :north then $f = :west
  when :west then $f = :south
  when :south then $f = :east
  when :east then $f = :north
  end
  end
end

def report

  print $x, $y, $f
  puts

end

place(0,0,:east)
report
left
left
move
report

