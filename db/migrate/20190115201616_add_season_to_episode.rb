class AddSeasonToEpisode < ActiveRecord::Migration[5.2]
  def change
    add_column :episodes, :season_id, :integer
  end
end
