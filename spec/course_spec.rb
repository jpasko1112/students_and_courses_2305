require 'spec_helper'

RSpec.describe Course do
  before(:each) do
    @course = Course.new('Calculus', 2)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})
  end

  describe '#initialize' do
    it 'can initialize' do
      expect(@course).to be_a(Course)
    end

    it 'can initialize with a name' do
      expect(@course.name).to eq('Calculus')
    end

    it 'can initialize with a capacity' do
      expect(@course.capacity).to eq(2)
    end
  end

  describe '#students' do
    it 'defaults with an empty list' do
      expect(@course.students).to eq([])
    end
  end

  describe '#full?' do
    it 'defaults to false' do
      expect(@course.full?).to eq(false)
    end
  end

  describe '#enroll(student)' do
    it 'adds student to students array' do
      @course.enroll(@student1)
      @course.enroll(@student2)
      expect(@course.students).to eq([@student1, @student2])
      expect(@course.full?).to eq(true)
    end
  end
end