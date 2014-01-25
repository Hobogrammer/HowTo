class ListsController < ApplicationController
before_action :set_list, only: [ :show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list), notice: "List successfully created"
    else
      render 'new'
    end
  end

  def show
    @steps = @list.steps
  end

  def edit
  end

  def update
    if @list.update_attributes(list_params)
      redirect_to list_path(@list), notice: "List was successfully updated"
    else
      render 'edit'
    end
  end

  def destroy
    if @list.destroy
      redirect_to root_path, notice: "List deleted"
    else
      flash[:error] = "Project could not be deleted"
      redirect_to root_path
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def set_list
    @list = List.find(params[:id])
  end

end
