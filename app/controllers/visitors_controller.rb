class VisitorsController < ApplicationController
  def index
    @mailing_list = MailingList.new
  end
end
