class Web::Controllers::News
  class Bulk
    include Web::Action

    def call(params)
      Evenr::News::Bulk.()
      status(200, 'OK')
    end
  end
end
