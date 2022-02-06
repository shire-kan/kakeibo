class FixedcostsController < ApplicationController
  before_action :set_fixedcost, only: [:show, :edit, :update, :destroy]

  def index
    @fixedcosts = Fixedcost.order(created_at: :asc)
  end

  def show
  end

  def new
    @fixedcost = Fixedcost.new()
  end

  def edit
  end

  def create
    @fixedcost = Fixedcost.new(params[:fixedcost])
    if @fixedcost.save
      redirect_to @fixedcost, notice: "固定費科目を登録しました"
    else
      render "new"
    end
  end

  def update
    @fixedcost.assign_attributes(params[:fixedcost])
    if @fixedcost.save
      redirect_to @fixedcost, notice: "固定費科目を登録しました"
    else
      render "new"
    end
  end

  def destroy
    @fixedcost.destroy
    redirect_to :fixedcosts, notice: "科目を削除しました"
  end

  private
  def set_fixedcost
    @fixedcost = Fixedcost.find(params[:id])
  end
end
