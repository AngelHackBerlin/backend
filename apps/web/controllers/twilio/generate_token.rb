class Web::Controllers::Twilio
  class GenerateToken
    include Web::Action

    def call(params)
      status(200, Evenr::Twilio::GenerateToken.().to_json)
    end
  end
end
