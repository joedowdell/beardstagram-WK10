class AddAddressToShare < ActiveRecord::Migration
  def change
    add_column :shares, :address, :text
  end
end
