class CharacterClassesController < ApplicationController
  def index
    @character_classes = CharacterClass.where('status' => 'approved')
  end

  def new
    @character_class = CharacterClass.new
  end

  def create
    @character_class = CharacterClass.new(character_classes_params)

    if @character_class.save
      redirect_to character_classes_path
      flash[:notice] = "You have succesfully requested a new class"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @character_class = CharacterClass.find(params[:id])
  end

  def update
    @character_class = CharacterClass.find(params[:id])

    if @character_class.update(character_classes_params)
      redirect_to character_classes_path
      flash[:notice] = "Class has been updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @character_class = CharacterClass.find(params[:id])
    @character_class.destroy

    redirect_to character_classes_path, status: :see_other
    flash[:notice] = "Class has been deleted"
  end

  def pending_classes
    @pending_classes = CharacterClass.where('status' => 'pending')
    authorize @pending_classes
  end

  private
    def character_classes_params
      params.require(:character_class).permit(:name, :strength, :dexterity, :charisma, :wisdom, :intelligence, :status)
    end
end
