class CheatsheetsController < ApplicationController
  def index
    @cheatsheets = Cheatsheet.order("created_at desc")
    @cheatsheet_last = Cheatsheet.last
    if params[:title]
      @cheatsheets = Cheatsheet.where('title LIKE ?', "%#{params[:title]}%")
    elsif params[:tag]
      @cheatsheets = Cheatsheet.tagged_with(params[:tag])
    else
      @cheatsheets = Cheatsheet.all
    end
  end

  def show
    @cheatsheet = Cheatsheet.find(params[:id])
  end

  def new
    @cheatsheet = Cheatsheet.new
  end

  def create
    @cheatsheet = Cheatsheet.new(cheatsheet_params)
    @cheatsheet.save

    if @cheatsheet.save
      redirect_to @cheatsheet
    else
      render 'new'
    end
  end

  def edit
    @cheatsheet = Cheatsheet.find(params[:id])
  end

  def update
    @cheatsheet = Cheatsheet.find(params[:id])

    if @cheatsheet.update(cheatsheet_params)
      redirect_to @cheatsheet
    else
      render 'edit'
    end
  end

  def destroy
    @cheatsheet = Cheatsheet.find(params[:id])
    @cheatsheet.destroy

    redirect_to cheatsheets_path
  end

  private
  def cheatsheet_params
    params.require(:cheatsheet).permit(:category, :title, :body, :tag_list)
  end
end
