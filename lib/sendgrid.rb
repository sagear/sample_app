require "sendgrid-ruby"

class SampleMailer
  include SendGrid

  attr_accessor :to, :from, :subject, :body, :mail, :client

  def initialize(to: "", from: "sagearonn@gmail.com", subject: "Account activation", body: "", mailer_type: "sendgrid")
    raise "@to not provided" if to.blank?
    raise "@from not provided" if from.blank?
    raise "@subject not provided" if subject.blank?
    if mailer_type == "sendgrid"
      initialize_sendgrid(to: to, from: from, subject: subject, body: body)
    end
  end

  def initialize_sendgrid(to: "", from: "", subject: "", body: "")
    @to = SendGrid::Email.new(email: to)
    @from = SendGrid::Email.new(email: from)
    @subject = subject
    @body = SendGrid::Content.new(type: "text/html", value: body)
    @mail = SendGrid::Mail.new(@from, @subject, @to, @body)
    @client = SendGrid::API.new(api_key: ENV["SENDGRID_API_KEY"]).client
  end

  def deliver!
    response = @client.mail._("send").post(request_body: mail.to_json)
    puts response.status_code
  end
end
