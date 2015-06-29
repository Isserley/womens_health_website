class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
			t.string :title
			t.text :advice
			t.string :contributed_by
			t.text :notes

      t.timestamps null: false
    end
  end
end
