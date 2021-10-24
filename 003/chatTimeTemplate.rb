require "date"

day = Date.today
weekDay = Date.today.wday
weekDays = ["日", "月", "火", "水", "木", "金", "土"]
holiday = day.strftime("%m月%d日(#{weekDays[weekDay]})") # 今日の日付

puts '事前にご相談の通り、お休みをいただきます。'
puts ''
puts '氏名:' + ARGV[0].to_s
puts '日程:' + holiday
puts '区分:' + ARGV[1].to_s
puts '理由:' + ARGV[2].to_s