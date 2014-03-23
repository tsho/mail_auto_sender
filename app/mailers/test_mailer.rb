class TestMailer < ActionMailer::Base
  default from: "from@example.com"

  def send_henry_mail
#    options = File.join(Rails.root, 'config', '"#{RAILS_ROOT}/config/gmail_info.yml')
    mail to: "sadmear@gmail.com", suject: "Test"
  end


end
