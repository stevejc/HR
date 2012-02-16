class CreateMyvendors < ActiveRecord::Migration
  def self.up
    create_table :myvendors do |t|
      t.boolean :fav
      t.boolean :use
      t.boolean :nouse
      t.text :comments
      t.integer :user_id
      t.integer :vendor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :myvendors
  end
end
