class Cohort < ApplicationRecord
    belongs_to :course
    belongs_to :instructor
    has_many :students, :dependent => :nullify
end
