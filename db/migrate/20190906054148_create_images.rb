class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.integer :imageable_id
      t.integer :imageable_type

      t.timestamps
    end
  end
end
