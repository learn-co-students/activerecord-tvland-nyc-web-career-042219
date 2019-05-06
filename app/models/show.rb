class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(attr={})

    net=Network.find_or_create_by(call_letters: attr[:call_letters])
    self.network_id = net.id
    net

  end
end
