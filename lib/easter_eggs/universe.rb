class EasterEggs::Universe < EnumerateIt::Base
  associate_values(
    # Movies
    :star_wars,

    # Games
    :super_mario,

    # TV Series
    :breaking_bad
  )
end
