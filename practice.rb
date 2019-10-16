require 'time'
require 'securerandom'

current_time = Time.now
p current_time
p current_time.zone

# 文字列をTime型に
str_time = '2020-01-01 12:00:00'
str_time_to_time = Time.parse(str_time)
p str_time_to_time
str_date = '2020-01-01'
p Date.parse(str_date)
p Date.parse(str_time)
p str_time_to_time.to_date
p Date.parse(str_time).to_time

# 文字列をDateTime型に
str_time_to_datetime = DateTime.parse(str_time)
p str_time_to_datetime

# 14桁の文字列の数字をTime型に
int_time = 2020010112000000
str_int_time = int_time.to_s
fix_str_int_time = str_int_time.insert(8, " ")
p fix_str_int_time
str_int_time_to_time = Time.parse(fix_str_int_time)
p str_int_time_to_time

# Time型を14桁の数字に変換
p str_int_time_to_time.strftime("%Y%m%d%H%M%S")

# Time型からDate型へ
p current_date = current_time.to_date
p current_date.prev_day(5) < Date.today

p a = format("%0#{12}d", SecureRandom.random_number(10**12))
p b = format("%0#{2}d", SecureRandom.random_number(10**2))
p a + b
p SecureRandom.random_number(10**5)
# def random_number_generator(n)
#   ''.tap { |s| n.times { s << rand(0..9).to_s } }
# end

# p random_number_generator(5)

# p year = current_time.year
# p month = current_time.month
# p year_month = "#{year}/#{month}"
# p Date.new(2017,9,-1)
# p Date.new(2017,9,5)
p SecureRandom.alphanumeric
a
aaaaa
mmmm