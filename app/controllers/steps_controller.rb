class StepsController < ApplicationController
  before_action :load_list, only: [ :new, :create, :edit, :update, :destroy]
  before_action :set_step, only: [:edit, :update, :destroy]

  def new
    @step = @list.steps.build
  end

  def create
    @step = @list.steps.new(step_params)
    if @step.save
      redirect_to list_path(@list), notice: "Step created successfully"
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @step.update_attributes(step_params)
      redirect_to list_path(@list)
    else
      render "edit"
    end
  end

  def destroy
    if @step.destroy
      redirect_to list_path(@list), notice: "Step deleted"
    else
      redirect_to list_path, notice: "Step could not be deleted"
    end
  end

  private

  def load_list
    @list = List.find(params[:list_id])
  end

  def set_step
    @step = @list.steps.find_by(id: params[:id])
  end

  def step_params
    params.require(:step).permit(:content)
  end
end
