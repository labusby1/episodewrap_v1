class AddEpisodeToCharacter < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :episode_id, :integer
  end
end
