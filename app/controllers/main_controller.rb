class MainController < ApplicationController
  def index
    @classes_count = CharacterClass.where('status' => 'approved').count
    @characters_count = Character.all.count
    @parties_count = Party.all.count
  end
end
