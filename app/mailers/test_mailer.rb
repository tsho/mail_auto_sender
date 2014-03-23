class TestMailer < ActionMailer::Base
  default from: "from@example.com"

  def send_henry_mail
    mail to: "sadmear@gmail.com", suject: "Test"
  end

end
