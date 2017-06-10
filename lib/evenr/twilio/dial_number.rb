module Evenr::Twilio::DialNumber
  Error = Class.new(StandardError)

  module_function

  def call(phone_number)
    twilio_response do |response|
      dial(response) do |dial|
        text(dial, phone_number)
      end
    end.text
  end

  def twilio_response
    Twilio::TwiML::Response.new { |response| yield response }
  end

  def dial(twilio_response)
    twilio_response.Dial(callerId: Evenr::Container.phone_number) { |dial| yield dial }
  end

  def text(dial, phone_number)
    dial.text!(phone_number) { fail Error, 'No caller phone number!' }
  end

  private_class_method :twilio_response,
                       :dial,
                       :text
end
