class AddAudioToSongs < ActiveRecord::Migration[7.0]
  def change
    add_column :songs, :audio, :binary
  end
end
