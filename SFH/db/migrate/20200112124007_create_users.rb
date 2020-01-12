class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :bio
      t.integer :age
      t.string :thumbnail_image_url

      t.timestamps
    end
  end
end
