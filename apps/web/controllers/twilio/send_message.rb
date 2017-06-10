class Web::Controllers::Twilio
  class SendMessage
    include Web::Action

    def call(params)
      status(200, Evenr::Twilio::SendMessage.(params[:phone_number], params[:message]).to_json)
    rescue Evenr::Twilio::SendMessage::Error => e
      status(400, {error: e.message}.to_json)
    end
  end
end
