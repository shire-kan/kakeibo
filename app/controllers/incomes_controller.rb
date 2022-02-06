class IncomesController < ApplicationController
  before_action :set_income, only: [:show, :edit, :update, :destroy]

  def index
    @incomes = Income.order(:created_at)
  end

  def show
  end

  def new
    @income = Income.new()
  end

  def edit
  end

  def create
    @income = Income.new(income_params)
    if @income.save
      redirect_to @income, notice: "収入科目を登録しました"
    else
      render "new"
    end
  end

  def update
    @income.assign_attributes(income_params)
    if @income.save
      redirect_to @income, notice: "収入科目を登録しました"
    else
      render "new"
    end
  end

  def destroy
    @income.destroy
    redirect_to :incomes, notice: "科目を削除しました"
  end

  private
  def income_params
    params.require(:income).permit(:name, :description)
  end

  def set_income
    @income = Income.find(params[:id])
  end
end
