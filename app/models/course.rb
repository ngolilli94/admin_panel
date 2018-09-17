class Course < ApplicationRecord
    validates :hours, numericality: { :greater_than => 0 }
    has_many :cohorts, :dependent => :nullify
end
