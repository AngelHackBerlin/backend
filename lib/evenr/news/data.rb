module Evenr::News::Data
  module_function

  def sample
    [
      {
        description: "Goooooal! Robert Lewandowski",
        scoreTeam1:  1,
        scoreTeam2:  2,
        kind:        1,
      },
      {
        description: "Pele substitute Alexis Sanchez",
        scoreTeam1:  1,
        scoreTeam2:  2,
        kind:        2,
      },
      {
        description: "Yellow card for Christiano Ronaldo",
        scoreTeam1:  1,
        scoreTeam2:  2,
        kind:        3,
      },
    ]
  end
end
