module MoviesHelper

  def people_for_select
    Person.all.map{|p| ["#{p.full_name}", p.id]}
  end

  def movie_casting(movie)
    movie.casting.map(&:full_name).join(', ')
  end

  def movie_producers(movie)
    movie.producers.map(&:full_name).join(', ')
  end

  def movie_directors(movie)
    movie.directors.map(&:full_name).join(', ')
  end

end
