# ruby chatTimeTemplate.rb ほげおほげた 午前半休 私用
# ↑のように引数をつけて実行する
# 第1引数　氏名
# 第2引数　全休とか午前半休とか午後半休とかの区分
# 第3引数　理由

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