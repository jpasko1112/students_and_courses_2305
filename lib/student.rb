class Student
  attr_reader :name,
              :age,
              :scores

  def initialize(details)
    @name = details[:name]
    @age = details[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade
    require 'pry'; binding.pry
    @scores.sum / @scores.count.to_f
  end
end