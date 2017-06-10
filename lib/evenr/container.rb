module Evenr::Container
  module_function

  def firebase
    @firebase ||= Firebase::Client.new(ENV['FIREBASE_URL'], ENV['FIREBASE_SECRET'])
  end

  def twilio
    @twilio ||= Twilio::REST::Client.new
  end

  def phone_number
    @phone_number ||= ENV['TWILIO_NUMBER']
  end
end
