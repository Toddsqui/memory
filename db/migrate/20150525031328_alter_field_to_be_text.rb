class AlterFieldToBeText < ActiveRecord::Migration
  def change
  	change_column :lessons, :lesson, :text
  end
end
