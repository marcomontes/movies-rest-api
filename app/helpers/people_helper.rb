module PeopleHelper

  def movies_for_select
    Movie.all.map{|m| ["#{m.title} - #{m.release_year}", m.id]}
  end

  def movies_as_actor(person)
    person.movies_as_actor.map(&:title).join(', ')
  end

  def movies_as_director(person)
    person.movies_as_director.map(&:title).join(', ')
  end

  def movies_as_producer(person)
    person.movies_as_producer.map(&:title).join(', ')
  end

end
