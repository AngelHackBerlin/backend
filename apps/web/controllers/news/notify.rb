class Web::Controllers::News
  class Notify
    include Web::Action

    def call(params)
      Evenr::News::Notify.(
        params[:description],
        params[:scoreTeam1],
        params[:scoreTeam2],
        params[:kind]
      )
      status(200, 'OK')
    end
  end
end
