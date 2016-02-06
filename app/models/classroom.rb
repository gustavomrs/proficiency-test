class Classroom < ActiveRecord::Base
  belongs_to :student
  belongs_to :course

  delegate :name, to: :student, prefix: true, allow_nil: true
  delegate :name, to: :course, prefix: true, allow_nil: true
end
