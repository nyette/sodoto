class CreateVideoUploads < ActiveRecord::Migration[7.1]
  def change
    create_table :video_uploads do |t|
      t.string :caption
      t.string :video

      t.timestamps
    end
  end
end
