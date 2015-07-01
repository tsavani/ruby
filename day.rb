# "------------------------------------------------------------------------------------------------------"
# "Time Window"
# "------------------------------------------------------------------------------------------------------"
#   "Mon 1800-2000"
#   "Sat-Sun"          
#   "Mon-Fri 0800-1700"
#   "Mon-Sun 0600-0700"
#   "Fri-Sat 1900-2200"
# "------------------------------------------------------------------------------------------------------"

require 'date'
require 'time'

class TimeWindow

	# def initialize t
	# 	datetime = t
	# end

 # getDate method use for select day. this will only select match day of weeks and form a array.
	def getDate datetime
			dateArray = []
		 	date = datetime[/\d{4}\-\d{2}\-\d{2}/]
		 	d = Date.parse(date)
		 	#puts "weekday #{d.wday} day of week :  #{d.strftime("%a")}"
		  day = d.wday
		  case day
			 	when 2..4
		   			dateArray.push('Mon-Sun 0600-0700','Mon-Fri 0800-1700')
				when 6,0
		   			dateArray.push('Sat-Sun','Mon-Sun 0600-0700','Fri-Sat 1900-2200')
				when 5
		   			dateArray.push('Mon-Sun 0600-0700','Mon-Fri 0800-1700','Fri-Sat 1900-2200')
				when 1
						dateArray.push('Mon 1800-2000','Mon-Sun 0600-0700','Mon-Fri 0800-1700') 
		 	end
	  dateArray		
	end

# this method will traverse Array and compare current time with given time to generate exect output.
	def gettime datetime,window_array
		 	time = datetime[/\d{2}:\d{2}/]
		 	#puts "#{time}"
		 	time_window_array = []
		 	window_array.each do |row| 
		 		if !row.split(' ', 2)[1].nil?
		 		 start_time = row.split(' ', 2)[1].split('-')[0].insert(2,':') 
		 		 end_time = row.split(' ', 2)[1].split('-')[1].insert(2,':') 
		 		  if Time.parse(time) >= Time.parse(start_time) && Time.parse(time) <= Time.parse(end_time)
		 		  		time_window_array.push(row)
		 		  end
		 		else
		 			time_window_array.push(row)
		 		end
		 		#puts "start_time #{start_time} end_time #{end_time}" 
	    end 
	    time_window_array  	
	end
end

puts "------------------------------------------------------------------------------------------------------"
puts "Time Window"
puts "------------------------------------------------------------------------------------------------------"
  puts "Mon 1800-2000"
  puts "Sat-Sun"          
  puts "Mon-Fri 0800-1700"
  puts "Mon-Sun 0600-0700"
  puts "Fri-Sat 1900-2200"
puts "------------------------------------------------------------------------------------------------------"

datetime = "2015-05-07 20:10:40"
obj_windoe_one = TimeWindow.new
time_window = obj_windoe_one.gettime(datetime , obj_windoe_one.getDate(datetime))
puts "*********************************2015-05-07 20:10:40***********************************************"
puts "#{time_window}"
puts "***************************************************************************************************"
#puts "date " + obj.getDate(datetime) + " and Time " + obj.gettime(datetime)

datetime = "2015-06-27 06:20:07"
obj_windoe_two = TimeWindow.new
time_window = obj_windoe_two.gettime(datetime , obj_windoe_two.getDate(datetime))
puts "*********************************2015-06-27 06:20:07***********************************************"
puts "#{time_window}"
puts "***************************************************************************************************"

datetime = "2015-06-29 11:58:47"
obj_windoe_three = TimeWindow.new
time_window = obj_windoe_three.gettime(datetime , obj_windoe_three.getDate(datetime))
puts "*********************************2015-06-29 11:58:47***********************************************"
puts "#{time_window}"
puts "***************************************************************************************************"

