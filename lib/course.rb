class Course
  attr_reader :name,
              :capacity,
              :students

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
    @full = false
  end

  # I tried writing this a different way, and would like come clarity on it.
    #def full?
    # @students.count == capacity
    # else false
    #end

  def full?
    if @students.count == capacity
      true
      else 
        false
    end
  end

  def enroll(student)
    @students << student
  end
end
