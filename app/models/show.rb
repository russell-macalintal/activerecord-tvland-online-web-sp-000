class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    characters.collect do |char|
      char.actor.full_name
    end
  end
end
