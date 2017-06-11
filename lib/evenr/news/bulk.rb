module Evenr::News::Bulk
  module_function

  def call
    Evenr::News::Data
      .sample
      .each do |event|
        Evenr::News::Notify.call(
          event[:description],
          event[:scoreTeam1],
          event[:scoreTeam2],
          event[:kind]
        )
        sleep(2)
      end
  end
end
