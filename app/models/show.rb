# == Schema Information
#
# Table name: shows
#
#  id         :integer          not null, primary key
#  name       :string
#  network_id :integer
#  day        :string
#  season     :string
#  genre      :string
#

class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
end
