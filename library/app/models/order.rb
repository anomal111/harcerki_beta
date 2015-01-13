class Order < ActiveRecord::Base
  belongs_to :coordinator
  has_many :order_positions
  accepts_nested_attributes_for :order_positions
  
  def coordinator_full_name
    if self.coordinator
      self.coordinator.full_name
    else
      "Coordinator not found"
    end
  end
  
end
