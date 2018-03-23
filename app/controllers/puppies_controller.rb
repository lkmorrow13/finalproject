class PuppiesController < ApplicationController
  def index
    @puppies = Puppy.all.reverse
    @puppy = Puppy.new
  end

  def new
    @puppy = Puppy.new
  end

  def edit
    @puppy = Puppies.find(params[:id])
  end

  def update
    @puppy = Puppies.find(params[:id])
    @puppy.update_attributes(puppy_params)
    redirect_to @puppy
  end

  def create
    @puppy = Puppy.new(puppy_params)
    respond_to do |format|
      if @puppy.save
        format.html{ redirect_to puppies_index_path }
        format.js
      end
    end
  end

  def show
    @puppy = Puppy.find(params[:id])
  end

  def destroy
    @puppy = Puppy.find(params[:id])
    respond_to do |format|
      if @puppy.destroy
        format.html{ redirect_to puppies_index_path }
        format.js
      end
    end
  end

  private

  def puppy_params
    params.require(:puppy).permit(:name, :cost, :info, :birthday, images:[])
  end
end
