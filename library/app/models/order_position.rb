class OrderPosition < ActiveRecord::Base
  belongs_to :order
  has_one :issue
  accepts_nested_attributes_for :issue
end
