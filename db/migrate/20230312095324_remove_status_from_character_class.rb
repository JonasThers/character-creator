class RemoveStatusFromCharacterClass < ActiveRecord::Migration[7.0]
  def change
    remove_column :character_classes, :status
  end
end
