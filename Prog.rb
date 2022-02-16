$x = 0
$y = 0
$f = 0

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
      x = $x
      y = $y
      case $f
        when :north then y = $y + 1
        when :east then x = $x + 1
        when :south then y = $y - 1
        when :west then x = $x - 1
      end
    end
    if check?(x,y)
      $x = x
      $y = y
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
    3.times {right}
  end

  def report
    print "#{$x},#{$y},#{$f.upcase}"
    puts
  end

place(1, 2, :east)
move
move
left
move
report