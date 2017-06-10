class Web::Controllers::Twilio
  class DialNumber
    include Web::Action

    def call(params)
      self.format = :xml
      self.body   = Evenr::Twilio::DialNumber.(params[:phone_number])
    rescue Evenr::Twilio::DialNumber::Error => e
      status(400, {error: e.message}.to_json)
    end
  end
end
