class AddStatusToCabs < ActiveRecord::Migration
  def change
    add_column :cabs, :status, :string
  end
end
