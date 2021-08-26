class TransactionsController < ApplicationController
  def upload
    Transactions::Import.execute(transaction_params[:file])
    render json: { message: 'File uploaded successfully' }, status: 200
  rescue StandardError => e
    render json: { message: "Import error #{e.message}" }, status: 400
  end

  def list
    transactions = Transactions::List.execute
    render json: transactions
  end

  private

  def transaction_params
    params.require(:transaction).permit(:file)
  end
end
