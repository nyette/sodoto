# frozen_string_literal: true

# Docs
class CreateVideoUploads < ActiveRecord::Migration[7.0]
  def change
    create_table :video_uploads do |t|
      t.string :caption
      t.string :video

      t.timestamps
    end
  end
end
