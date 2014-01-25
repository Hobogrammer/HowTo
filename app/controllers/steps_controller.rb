class StepsController < ApplicationController
  before_action :load_list, only: [ :new, :create, :edit, :update]

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
    @step = @list.steps.find_by(id: params[:id])
  end

  def update
    @step = @list.steps.find_by(id: params[:id])
    if @step.update_attributes(step_params)
      redirect_to list_path(@list)
    else
      render "edit"
    end
  end

  private

  def load_list
    @list = List.find(params[:list_id])
  end

  def step_params
    params.require(:step).permit(:content)
  end
end
