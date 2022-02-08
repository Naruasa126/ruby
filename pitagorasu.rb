#pts = [[0,0],[3,4],[3,0]]
pts = [[0,0],[2,4],[4,2]]

# 2点間の距離を返す関数
def length(p1,p2)
  dx = (p1[0] - p2[0]).to_f
  dy = (p1[1] - p2[1]).to_f
  Math.sqrt(dx ** 2 + dy ** 2)
end

# 2点を斜辺とする直角三角形の面積を返す関数
def area(p1,p2)
  dx = (p1[0] - p2[0]).abs.to_f
  dy = (p1[1] - p2[1]).abs.to_f
  dx * dy / 2
end

# 複数の点が外接する矩形の面積を返す関数
def area_of_square(pts)
  xs = pts.map { |e| e[0] }
  ys = pts.map { |e| e[1] }
  (xs.max - xs.min) * (ys.max - ys.min)
end

l1 = length(pts[0],pts[1])
l2 = length(pts[1],pts[2])
l3 = length(pts[2],pts[0])

as = area_of_square(pts)
a1 = area(pts[0],pts[1])
a2 = area(pts[1],pts[2])
a3 = area(pts[2],pts[0])

puts "Length: %f" % [l1 + l2 + l3]
puts "Area: %f" % [as - (a1 + a2 + a3)]