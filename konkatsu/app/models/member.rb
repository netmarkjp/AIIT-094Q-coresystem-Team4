class Member < ActiveRecord::Base
  validates_length_of :name, :maximum => 40
  validates_length_of :name, :minimum => 1
  validates_length_of :nickname, :maximum => 40
  validates_length_of :nickname, :minimum => 2
  validates_numericality_of :age, :greater_than => 16, :less_than => 200
  validates_numericality_of :height
  validates_numericality_of :weight
  validates_length_of :job, :maximum => 40
  validates_length_of :job, :minimum => 1
  validates_numericality_of :income
end
