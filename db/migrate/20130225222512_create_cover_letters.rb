class CreateCoverLetters < ActiveRecord::Migration
  def change
    create_table :cover_letters do |t|
      t.integer :dossier_id
      t.string :lang

      t.timestamps
    end
  end
end
