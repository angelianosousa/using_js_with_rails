class CreditCardsController < ApplicationController
  def index
    @credit_cards = CreditCard.all
    @credit_card = CreditCard.find_by(default_for_payment: true)
  end

  def show_info
    @credit_card = CreditCard.find(params[:id])
    respond_to { |format| format.js }
  end

  private

  def credit_card_params
    params.require(:credit_card).permit(:brand, :expiration_month, :expiration_year, :default_for_payment)
  end

end
