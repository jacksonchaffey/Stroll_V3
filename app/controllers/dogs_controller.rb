class DogsController < ApplicationController


  def index
    @dogs = Dog.all
    @dog = Dog.new
  end

  def show
    @dogs = Dog.where(id: params[:ids])
  end

  def edit

  end


  def create
    @dogs = current_user.dogs.create(dog_params)
    
    respond_to do |format|
      if @dogs.save
        format.html { redirect_to @dog, notice: 'Dog was successfully listed.' }
        format.json { render :show, status: :created, location: @dog }
      else
        format.html { render :new }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_dog
    @dog = Dog.find(params[:id])
  end
  
  # Only allow a list of trusted parameters through.
  def dog_params
    params.require(:dog).permit(:name,:size,:breed, :user_id)
  end
end





