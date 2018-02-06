class CreateTexts < ActiveRecord::Migration[5.1]
  def change
    create_table :texts do |t|
      t.string :from
      t.string :to
      t.datetime :datetime
      t.text :body

      t.timestamps
    end
  end
end
