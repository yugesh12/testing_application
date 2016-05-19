class SubscriptionsController < ApplicationController

  def new
	@subscription = Subscription.new  
  end

  def create
    	@subscription = Subscription.new(subscription_params)

		if	@subscription.save
      redirect_to articles_path, notice: "Thanks for your subscription!"

		else
			redirect_to articles_path
      flash[:alert] = "An error occurred while subscribing."
    end
  end

private

  def subscription_params
    params.require(:subscription).permit(:name, :email)
  end


end
