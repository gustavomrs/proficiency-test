class Classroom < ActiveRecord::Base
  belongs_to :student
  belongs_to :course

  validates :student_id, :course_id, presence: true
  validates :student_id, uniqueness: { scope: :course_id }

  delegate :name, to: :student, prefix: true, allow_nil: true
  delegate :name, to: :course, prefix: true, allow_nil: true
end
