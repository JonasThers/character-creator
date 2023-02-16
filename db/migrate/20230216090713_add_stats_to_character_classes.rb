class AddStatsToCharacterClasses < ActiveRecord::Migration[7.0]
  def change
    add_column :character_classes, :strength, :integer
    add_column :character_classes, :dexterity, :integer
    add_column :character_classes, :charisma, :integer
    add_column :character_classes, :wisdom, :integer
    add_column :character_classes, :intelligence, :integer
  end
end
