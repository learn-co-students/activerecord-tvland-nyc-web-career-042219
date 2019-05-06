class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say

    "#{name} always says: #{catchphrase}"
  end

  # def build_show(attr={})
  #
  #   new_show = Show.find_or_create_by(name: attr[:name])
  #     self.show_id = new_show.id
  #     new_show
  # end



end
