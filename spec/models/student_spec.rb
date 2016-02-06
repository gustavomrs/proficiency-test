require 'rails_helper'

RSpec.describe Student, :type => :model do
  context 'Relationships' do
    # it { should have_many(:courses).through(:classrooms) }
  end

  context 'when valid' do
    it 'create a student' do
      course = create(:student)
      expect(Student.count).to eq(1)
    end
  end

  context 'when invalid' do
    it 'invalid student instance' do
      course = build(:course, name: nil)
      expect(course.valid?).to eq(false)
    end

    it 'doesnt create a student' do
      course = build(:course, name: nil)
      expect(Course.count).to eq(0)
    end
  end
end
