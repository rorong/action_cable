# frozen_string_literal: true

# All mailers inherit this application mailer
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
