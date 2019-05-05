# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    characters.each_with_object([]) do |character, array|
      shows.each { |show| array << "#{character.name} - #{show.name}" }
    end
  end
end
