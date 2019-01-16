class AddSeasonsranToTvshows < ActiveRecord::Migration[5.2]
  def change
    add_column :tvshows, :seasonsran, :integer
  end
end
