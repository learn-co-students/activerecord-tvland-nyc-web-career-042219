class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles

    charac_arr = self.characters.pluck("characters.name")

    show_arr = self.shows.pluck("name")
    charac_arr.each_with_index.map do |charact,i|

       "#{charact} - #{show_arr[i]}"
    end
  end

end
