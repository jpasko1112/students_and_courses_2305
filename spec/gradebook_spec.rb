require 'spec_helper'

RSpec.describe Gradebook do
  before(:each) do
    @gradebook = Gradebook.new('Kat B.')
    @calc = Course.new('Calculus', 2)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})
  end

  describe '#initialize' do
    it 'can initialize' do
      expect(@gradebook).to be_a(Gradebook)
    end

    it 'can initialize with an instructor' do
      expect(@gradebook.instructor).to eq('Kat B.')
    end
  end  

  describe '#courses' do
    it 'defaults with an empty array of courses' do
      expect(@gradebook.courses).to eq([])
    end
  end

  describe '#add_course(course)' do
    it 'can add a course to the courses array' do
      @gradebook.add_course(@calc)
      expect(@gradebook.courses).to eq([@calc])
    end
  end

  describe '#list_all_students' do
    it 'can list all students' do
      @gradebook.add_course(@calc)
      @calc.enroll(@student1)
      @calc.enroll(@student2)
      expect(@gradebook.list_all_students).to eq( {:calc => [@student1, @student2]} )
    end
  end
end