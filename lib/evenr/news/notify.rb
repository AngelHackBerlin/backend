module Evenr::News::Notify
  module_function

  def call(description, scoreTeam1, scoreTeam2, kind)
    Evenr::Container
      .firebase
      .push("News", event(description, scoreTeam1, scoreTeam2, kind))
  end

  def event(description, scoreTeam1, scoreTeam2, kind)
    {
      description: description,
      scoreTeam1:  scoreTeam1,
      scoreTeam2:  scoreTeam2,
      kind:        kind,
      datetime:    DateTime.now.to_s,
    }
  end
end
