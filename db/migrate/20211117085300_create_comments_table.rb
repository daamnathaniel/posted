class CreateCommentsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :comments_tables do |t|
      t.string :author_name
      t.text :body
      t.references :article, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
