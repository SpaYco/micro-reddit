# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :upvote
      t.integer :downvote

      t.belongs_to :User
      t.belongs_to :Post
      t.timestamps
    end
  end
end
