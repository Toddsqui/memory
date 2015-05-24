class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
    	
    	t.string :lesson
    	t.string :author

      t.timestamps
    end
  end
end
