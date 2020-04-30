class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :release_year, :casting, :directors, :producers
  
  def release_year
    self.object.release_year.roman
  end

  def casting
    self.object.casting.map do |a|
      { 
        first_name: a.first_name,
        last_name: a.last_name,
        aliases: a.aliases
      }
    end
  end

  def directors
    self.object.directors.map do |d|
      { 
        first_name: d.first_name,
        last_name: d.last_name,
        aliases: d.aliases
      }
    end
  end

  def producers
    self.object.producers.map do |p|
      { 
        first_name: p.first_name,
        last_name: p.last_name,
        aliases: p.aliases
      }
    end
  end
end