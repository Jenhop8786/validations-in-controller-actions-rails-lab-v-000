class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    if @author = Author.new(author_params)
       @author.valid?
       @author.save
    redirect_to author_path(@author)
  else
    render :new 
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
