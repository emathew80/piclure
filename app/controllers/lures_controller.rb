class LuresController < ApplicationController
  def index

  end

  def new

  end

  def create
    @lure = Lure.create(lure_params)
    redirect_to root_path

  end

  private

  def lure_params
    params.require(:lure).permit(:message)
  end
end
