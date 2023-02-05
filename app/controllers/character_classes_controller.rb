class CharacterClassesController < ApplicationController
  def index
    @character_classes = CharacterClass.all
  end

  def new
    @character_class = CharacterClass.new
  end

  def create
    @character_class = CharacterClass.new(character_classes_params)

    if @character_class.save
      redirect_to character_classes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def character_classes_params
      params.require(:character_class).permit(:name)
    end
end
