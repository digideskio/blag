class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, default: ''
      t.text :content, default: ''
      t.date :posted_at
      t.string :author, default: ''

      t.timestamps
    end
  end
end
