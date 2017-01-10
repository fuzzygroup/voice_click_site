class MailingList < ActiveRecord::Base
  validates_presence_of :email
  validates_format_of :email, :with => /.+@.+\..+/
end
