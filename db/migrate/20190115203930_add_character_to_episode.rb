class AddCharacterToEpisode < ActiveRecord::Migration[5.2]
  def change
    add_column :episodes, :character_id, :integer
  end
end
