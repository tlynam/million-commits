require 'Date'

date = Date.today - 365
future_date = Date.today + 60

until date > future_date
	open('test', 'a') { |f|
  	f.puts "#{date}"
	}
	system( "git add .  && git commit --date='#{date} -0700' -m #{date}" )
	date += 1
end
