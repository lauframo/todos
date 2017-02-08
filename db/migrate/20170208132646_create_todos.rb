class CreateTodos < ActiveRecord::Migration
  def change
  	create_table :todos do |t|
  		t.string :task_name
  		t.boolean :complete
      t.date :due_date
      t.integer :user_id

  		t.timestamps( null: false )
  	end
  end
end
