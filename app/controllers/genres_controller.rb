class GenresController < ApplicationController
  
  def index 
    @genre = Genre.all 
  end
  
  def show 
    @genre = Genre.find_by(params[:id])
  end
  
  def new 
    @genre = Genre.new 
  end
  
  def create 
    @genre = Genre.new(:name)
    @genre.save
     redirect_to genre_path(@genre)
  end
  
  
def update
  @genre = Genre.find(params[:id])
  @genre.update(params.require(:genre).permit(:name)
   redirect_to genre_path(@genre)
 end
 
def edit
		@genre = Genre.find(params[:id])
	end
	
  
end
