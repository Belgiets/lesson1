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
    if birthday.is_a?(String)
      birth_date = DateTime.strptime(birthday, '%d/%m/%Y').to_time.to_i
      curnt_date = Time.now.to_time.to_i
      age = curnt_date - birth_date
      p "I live #{age/(365*24*3600)} years or #{age/(24*3600)} days, or #{age/3600} hours, or #{age/(60)} minutes, or #{age} seconds"
    else
      p 'Invalid Date Format'
    end
  end

  def name
    'Hello ' << gets.chomp << ' Super Man!'
  end
end
