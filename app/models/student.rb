class Student < ActiveRecord::Base
  has_many :courses, through: :classrooms

  validates :name, :register_number, :status, presence: true
end
