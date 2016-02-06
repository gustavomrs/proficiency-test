class Course < ActiveRecord::Base
  has_many :students, through: :classrooms

  validates :name, :description, :status, presence: true
end
