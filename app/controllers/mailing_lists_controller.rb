class MailingListsController < ApplicationController
  def create
    @mailing_list = MailingList.new
    @mailing_list.email = params[:mailing_list][:email]
    if @mailing_list.save
      flash[:success] = "Thanks!  You have been added to our mailing list"
      redirect_to root_path and return
    else
      flash[:error] = @mailing_list.errors.full_messages
    end
  end
  
  private
  
  def mailing_list_params
    params.require[:mailing_list].permit(:email)
  end
end
