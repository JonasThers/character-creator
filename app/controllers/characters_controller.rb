class CharactersController < ApplicationController
    def index
        @characters = Character.all.page(params[:page]).per(5)

        @character_classes = CharacterClass.all

        if params[:character_class].present?
          @search_filters_class = params[:character_class]
          @characters = @characters.where({"character_class_id" => params[:character_class]})
      end
    end

    def show
        @character = Character.find(params[:id])
    end

    def new
        @character = Character.new
    end
    
    def create
        @character = Character.new(characters_params)
    
        if @character.save
          redirect_to characters_path
        else
          render :new, status: :unprocessable_entity
        end
    end
    
    def edit
        @character = Character.find(params[:id])
    end
    
    def update
        @character = Character.find(params[:id])
    
        if @character.update(characters_params)
          redirect_to characters_path
        else
          render :edit, status: :unprocessable_entity
        end
    end
    
    def destroy
        @character = Character.find(params[:id])
        @character.destroy
    
        redirect_to characters_path, status: :see_other
    end
    
    private
        def characters_params
          params.require(:character).permit(:name, :character_class_id)
        end
    
end
