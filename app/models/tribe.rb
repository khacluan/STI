class Tribe < ActiveRecord::Base
  delegate :lions, :dogs, :ducks, to: :animals
  has_many :animals
  accepts_nested_attributes_for :animals, :reject_if => :all_blank, :allow_destroy => true
end
