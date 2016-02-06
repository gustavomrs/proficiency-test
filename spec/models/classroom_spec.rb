require 'rails_helper'

RSpec.describe Classroom, :type => :model do
  context 'Relationships' do
    it { should belong_to(:course) }
    it { should belong_to(:student) }
  end

  context 'Validations' do
    it { should validate_presence_of :course }
    it { should validate_presence_of :student }
  end
end
