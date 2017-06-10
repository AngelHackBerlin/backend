module Evenr::Twilio::SendMessage
  Error = Class.new(StandardError)

  module_function

  def call(phone_number, message)
    send_message(phone_number, message)
  rescue Twilio::REST::RequestError => e
    fail Error, e.message
  end

  def send_message(phone_number, message_contents)
    Evenr::Container
      .twilio
      .messages
      .create(
        to:   phone_number,
        from: Evenr::Container.phone_number,
        body: message_contents
      )
  end

  private_class_method :send_message
end
