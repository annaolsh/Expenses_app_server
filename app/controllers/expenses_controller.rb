class ExpensesController < ApplicationController
  def index
    @expenses = Expense.all
    render json: @expenses
  end

  def create

    @expense = Expense.new(product: params[:product], cost: params[:cost], quantity: params[:quantity], description: params[:description])
    if @expense.valid?
      @expense.save
      render json: @expense
    else
      redirect_to expenses_path
    end

  end

end
