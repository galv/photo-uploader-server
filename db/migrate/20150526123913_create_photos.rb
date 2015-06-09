class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image_file
      t.string :experiment
      t.datetime :time_taken

      t.timestamps
    end
  end
end
