class Coordinator < ActiveRecord::Base
  has_many :orders
  
  def full_name
    "#{self.name} #{self.surname}"
  end
end
