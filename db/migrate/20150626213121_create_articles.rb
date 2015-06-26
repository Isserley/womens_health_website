class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
			  t.string :title
      t.string :author
      t.string :date_published
      t.string :publication
      t.string :subject
      t.text   :abstract
      t.text   :full_article
      t.text   :notes

      t.timestamps null: false
    end
  end
end
