require 'date'
class Lesson1
  def sum(val = 0)
    val = val.to_s unless val.is_a?(String)
    vals = val.split('')
    amount = 0
    vals.each { |x| amount += x.to_i }
    amount
  end

  def age(birthday)
    return 'Invalid Date Format' unless birthday
    age = Time.now.to_time.to_i - Date.parse(birthday).to_time.to_i
    "I live #{age / (365 * 24 * 3600)} years or #{age / (24 * 3600)} days,\
    or #{age / 3600} hours, or #{age / (60)} minutes, or #{age} seconds"
  end

  def name
    output = ''
    3.times { output += ' ' << gets.chomp }
    "Hello#{output}!"
  end
end
