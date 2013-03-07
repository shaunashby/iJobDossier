class CreateCoverLetterParts < ActiveRecord::Migration
  def change
    create_table :cover_letter_parts do |t|
      t.integer :cover_letter_id
      t.integer :position
      t.text :body

      t.timestamps
    end
  end
end
