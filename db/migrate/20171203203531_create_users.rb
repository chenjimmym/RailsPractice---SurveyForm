class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name
      t.text :location
      t.text :language
      t.text :comment

      t.timestamps null: false
    end
  end
end
