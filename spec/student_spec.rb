require 'spec_helper'

RSpec.describe Student do
  before(:each) do
    @student = Student.new( {name: 'Morgan', age: 21} )
  end

  describe '#initialize' do
    it 'can initialize' do
      expect(@student).to be_a(Student)
    end

    it 'can initialize with a name' do
      expect(@student.name).to eq('Morgan')
    end

    it 'can initialize with an age' do
      expect(@student.age).to eq(21)
    end
  end

  describe '#scores' do
    it 'starts with an empty array for scores' do
      expect(@student.scores).to eq([])
    end
  end

  describe '#log_score' do
    it 'can log scores in the scores array' do
      @student.log_score(89)
      @student.log_score(78)
      expect(@student.scores).to eq([89, 78])
    end
  end

  describe '#grade' do
    it 'returns the average of all scores' do
      @student.log_score(89)
      @student.log_score(78)
      expect(@student.grade).to eq(83.5)
    end
  end
end