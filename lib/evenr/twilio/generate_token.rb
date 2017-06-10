module Evenr::Twilio::GenerateToken
  module_function

  def call
    { token: twilio_capability.generate }
  end

  def twilio_capability
    @twilio_capability ||= Twilio::Util::Capability.new.tap do |capability|
      capability.allow_client_outgoing(ENV['TWILIO_SID'])
    end
  end

  private_class_method :twilio_capability
end
