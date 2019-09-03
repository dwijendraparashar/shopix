class CreateCarrers < ActiveRecord::Migration[6.0]
  def change
    create_table :carrers do |t|
      t.string :name
      t.string :father_name
      t.string :mother_name
      t.string :string
      t.float :dob
      t.text :address
      t.string :email
      t.string :resume
      t.string :image
      t.string :signature

      t.timestamps
    end
  end
end
