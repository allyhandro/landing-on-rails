# frozen_string_literal: true

class CreateVideoCoverLetters < ActiveRecord::Migration[7.1]
  def change
    create_table :video_cover_letters do |t|
      t.string :title
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
