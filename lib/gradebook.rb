
  def list_all_students
    @courses.each do |course|
      require 'pry'; binding.pry
    end
  end
end