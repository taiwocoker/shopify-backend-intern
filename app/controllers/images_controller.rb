class ImagesController < ApplicationController
  def index
    render json: Image.all, status: :ok
  end
  def show
    @image = Image.find(params[:id])
    return render json: @image, status: :ok if @image
  end
  def create
    @images = Image.create!(images_params)
    render json: @images, status: :created
  end
  def welcome
    @welcome = 'Welcome to my App!'
    render html: @welcome
  end
  private
  def images_params
    params.permit(:name, :description, :image)
  end
end

