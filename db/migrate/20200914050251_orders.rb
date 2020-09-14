class Orders < ActiveRecord::Migration[6.0]
  def change
        create_table :orders do |t|
         t.integer    :price            
         t.references :user,   null: false, foreign_key: true
         t.references :ticket,   null: false, foreign_key: true
        t.timestamps
        end
  end
end
    

