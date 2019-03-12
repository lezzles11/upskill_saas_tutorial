class Philmed < ActiveRecord::Base
  validates :upset1, presence: true
  validates :upset2, presence: true
  validates :upset3, presence: true 
end
