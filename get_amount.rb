if ARGV.count != 4
	puts "Only 4 arguments are allowed"
else
	@total,@next_avg=0
	ARGV.each do|a|
	  @total+=a.to_i
	end
	@avg = (@total/4)
	@dhara = @avg - ARGV[0].to_i
	@harsha = @avg - ARGV[1].to_i
	@rashmi = @avg - ARGV[2].to_i
	@urvi = @avg - ARGV[3].to_i

	@next_avg=@next_avg.to_i+1 if @dhara>0
	@next_avg=@next_avg.to_i+1 if @harsha>0
	@next_avg=@next_avg.to_i+1 if @rashmi>0
	@next_avg=@next_avg.to_i+1 if @urvi>0
	puts "Next avg - #{@next_avg}"	

	puts "D to other #{@next_avg} roomies = #{@dhara/@next_avg}" if @dhara>0 && @next_avg
	puts "H to other #{@next_avg} roomies = #{@harsha/@next_avg}" if @harsha>0 && @next_avg
	puts "R to other #{@next_avg} roomies = #{@rashmi/@next_avg}" if @rashmi>0 && @next_avg
	puts "U to other #{@next_avg} roomies = #{@urvi/@next_avg}" if @urvi>0 && @next_avg
end

