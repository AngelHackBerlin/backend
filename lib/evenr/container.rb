module Evenr::Container
  module_function

  def firebase
    @firebase ||= Firebase::Client.new(ENV['FIREBASE_URL'], ENV['FIREBASE_SECRET'])
  end
end
