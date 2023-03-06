class PartiesController < ApplicationController
  def index
    @parties = Party.all.page(params[:page]).per(5)
  end
  
  def show
    @party = Party.find(params[:id])
  end
  
  def new
    @party = Party.new
  end

  def create
    @party = Party.new(parties_params)

    if @party.save
      redirect_to parties_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit
    @party = Party.find(params[:id])
  end

  def update
    @party = Party.find(params[:id])

    if @party.update(parties_params)
      redirect_to parties_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @party = Party.find(params[:id])
    @party.destroy

    redirect_to parties_path, status: :see_other
  end

  private
    def parties_params
      params.require(:party).permit(:name)
    end
end
