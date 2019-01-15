class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :firstName
      t.string :lastName
      t.string :alias
      t.string :title
      t.timestamps
    end
  end
end
