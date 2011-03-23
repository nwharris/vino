class CreateArchtypes < ActiveRecord::Migration
  def self.up
    create_table :archtypes do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :archtypes
  end
end
