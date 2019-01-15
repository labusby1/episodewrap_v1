class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.string :episodeName
      t.string :director
      t.string :runtime
      t.timestamps
    end
  end
end
