class TipsController < ApplicationController

before_action :find_tip, only:[:show, :edit]

  def index
		@tips = Tips.all
  end

  def new
		@tip = Tip.new
  end

  def show
  end

  def edit
  end

private

	def find_tip
		@tip = Tip.find(params[:id])
	end

end
