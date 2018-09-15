class Student < ApplicationRecord
    validates_inclusion_of :age, :in => 1..150
    belongs_to :cohort
end
