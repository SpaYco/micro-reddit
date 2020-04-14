# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :content
      t.integer :upvote
      t.integer :downvote

      t.belongs_to :User
      t.timestamps
    end
  end
end
