class ChangeNotesTypeToTextInApplicationTarget < ActiveRecord::Migration
  def up
    change_column :application_targets, :notes, :text
  end

  def down
    change_column :application_targets, :notes, :string
  end
end
