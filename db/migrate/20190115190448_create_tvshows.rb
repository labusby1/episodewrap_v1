class CreateTvshows < ActiveRecord::Migration[5.2]
  def change
    create_table :tvshows do |t|
      t.string :name
      t.string :aired
      t.string :network
      t.timestamps
    end
  end
end
