class Gradebook
  attr_reader :instructor,
              :courses

  def initialize(instructor)
  @instructor = instructor
  @courses = []
  end

  def add_course(course)
    @courses << course
  end


  # couldn't figure this method out. I was really struggling to access the data.

  # def list_all_students
  #   require 'pry'; binding.pry
  #   all_students = {}
  #   @courses.each do |course|
  #     enrolled_students = 
  #     course.enrolled_students
  #     all_students[course] = enrolled_students
  #   end
  # end

  def list_all_students
    @courses.each do |course|
      require 'pry'; binding.pry
    end
  end
end