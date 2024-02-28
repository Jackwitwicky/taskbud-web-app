class AccountRequestsController < ApplicationController
  def new
    @account_request = AccountRequest.new
  end

  def create
    @account_request = AccountRequest.new(account_request_params)

    if @account_request.save
      redirect_to root_path, notice: 'Your request has been received successfully'
    else
      render :new
    end
  end

  private

  def account_request_params
    params.require(:account_request).permit(:name, :email, :request_type, :message)
  end
end
