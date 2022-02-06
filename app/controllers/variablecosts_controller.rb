class VariablecostsController < ApplicationController
  before_action :set_variablecost, only: [:show, :edit, :update, :destroy]

  def index
    @variablecosts = Variablecost.order(created_at: :asc)
  end

  def show
  end

  def new
    @variablecost = Variablecost.new()
  end

  def edit
  end

  def create
    @variablecost = Variablecost.new(params[:variablecost])
    if @variablecost.save
      redirect_to @variablecost, notice: "変動費科目を登録しました"
    else
      render "new"
    end
  end

  def update
    @variablecost.assign_attributes(params[:variablecost])
    if @variablecost.save
      redirect_to @variablecost, notice: "変動費科目を登録しました"
    else
      render "new"
    end
  end

  def destroy
    @variablecost.destroy
    redirect_to :variablecosts, notice: "科目を削除しました。"
  end

  private
  def set_variablecost
    @variablecost = Variablecost.find(params[:id])
  end
end
