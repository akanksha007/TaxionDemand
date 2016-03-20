class AddUserToCabs < ActiveRecord::Migration
  def change
    add_reference :cabs, :user, index: true, foreign_key: true
  end
end
