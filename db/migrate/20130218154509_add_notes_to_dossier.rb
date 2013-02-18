class AddNotesToDossier < ActiveRecord::Migration
  def change
    add_column :dossiers, :notes, :text
  end
end
