require 'rails_helper'

RSpec.describe Course, :type => :model do
  context 'Relationships' do
    # it { should have_many(:students).through(:classroom) }
  end

  context 'when valid' do
    it 'create a course' do
      course = create(:course)
      expect(Course.count).to eq(1)
    end
  end

  context 'when invalid' do
    it 'invalid course instance' do
      course = build(:course, name: nil)
      expect(course.valid?).to eq(false)
    end

    it 'doesnt create a course' do
      course = build(:course, name: nil)
      expect(Course.count).to eq(0)
    end
  end
end
