class StepsController < ApplicationController
  before_action :load_list, only: [ :new ]

  def new
    @step = @list.steps.new
  end

  def create

  end

  private

  def load_list
    @list = List.find(params[:list_id])
  end

  def step_params
    params(:steps).reqiure.permit(:content)
  end
end
