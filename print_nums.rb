=begin
puts "##############################################################"
puts "\t\t\tpattern"
puts "##############################################################"
puts "
1
1 2
1 2 3
1 2 3 4
1 2 3
1 2
1"
puts "##############################################################"
puts
(1..5).each do |i|
	(1..i).each do |j|
		print j, ' '
	end
	print "\n"
end		
4.downto(1) do |i|
	(1..i).each do |j|
		print j, ' '
	end
	print "\n"
end

puts
puts
puts
puts "##############################################################"
puts "\t\t\tpattern"
puts "##############################################################"
puts "
   1
  1 2
 1 2 3
1 2 3 4
 1 2 3
  1 2
   1"
puts "##############################################################"
puts
(1..5).each do |i|
	(1..i).each do |j|
		print j, ' '
	end
	print "\n"
end		
4.downto(1) do |i|
	(1..i).each do |j|
		print j, ' '
	end
	print "\n"
end
=end

# spiral
=begin
def spiral(n)
  spiral = Array.new(n) {Array.new(n, nil)}     # n x n array of nils
  runs = n.downto(0).each_cons(2).to_a.flatten  # n==5; [5,4,4,3,3,2,2,1,1,0]
  delta = [[1,0], [0,1], [-1,0], [0,-1]].cycle
  x, y, value = -1, 0, -1
  for run in runs
    dx, dy = delta.next
    run.times { spiral[y+=dy][x+=dx] = (value+=1) }
  end
  spiral
end
 
def print_matrix(m)
  width = m.flatten.map{|x| x.to_s.size}.max
  m.each {|row| puts row.map {|x| "%#{width}s " % x}.join}
end
 
print_matrix spiral(5)
=end
# EOF spiral



n = ARGV[0].to_i

for row in 0..(n - 1)
	puts (0..(n - 1)).map{|col|
	spiral(col - (n / 2), (n / 2) - row).to_s.rjust(4) }.join
end

