class PersonSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :aliases, :movies_as_actor, :movies_as_director, :movies_as_producer

  def movies_as_actor
    self.object.movies_as_actor.map do |m|
      { title: m.title, release_year: m.release_year.roman }
    end
  end

  def movies_as_director
    self.object.movies_as_director.map do |m|
      { title: m.title, release_year: m.release_year.roman }
    end
  end

  def movies_as_producer
    self.object.movies_as_producer.map do |m|
      { title: m.title, release_year: m.release_year.roman }
    end
  end
end