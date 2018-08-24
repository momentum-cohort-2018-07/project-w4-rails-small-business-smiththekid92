class Inventory < ApplicationRecord
  attr_accessor :pid, :item, :description, :price, :condition, :dimension_w, :dimension_l, :dimension_h
end
