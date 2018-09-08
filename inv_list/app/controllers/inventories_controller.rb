require 'csv'
class InventoriesController < ApplicationController
  def index
    @inventories = fetch_inventories
  end

  def fetch_inventories
    @inventories = []
    
    csv_text = File.read('/Users/phoenixsmith/Documents/Momentum/Homework/project-w4-rails-small-business-smiththekid92/inv_list/vendor/faust_inventory.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|

    inventory = Inventory.new
    inventory.pid = row.to_h["pid"]
    inventory.item = row.to_h["item"] 
    inventory.description = row.to_h["description"]
    inventory.price = row.to_h["price"]
    inventory.condition = row.to_h["condition"]
    inventory.dimension_w = row.to_h["dimension_w"]
    inventory.dimension_l = row.to_h["dimension_w"]
    inventory.dimension_h = row.to_h["dimension_l"]
    inventory.quantity = row.to_h["quantity"]

    @inventories << inventory
    end

    @inventories

  end
  
  def show
    @inventories = fetch_inventories
  end


end