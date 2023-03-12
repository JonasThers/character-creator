class AddStatusToCharacterClasses < ActiveRecord::Migration[7.0]
  def change
    add_column :character_classes, :status, :string
  end
end
