class Instructor < ApplicationRecord
    validates_inclusion_of :age, :in => 1..150
    validates :salary, numericality: { :greater_than => 0 }
    has_many :cohorts, :dependent => :nullify
end
