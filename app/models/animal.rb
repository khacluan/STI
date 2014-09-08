class Animal < ActiveRecord::Base
  belongs_to :tribe
  self.inheritance_column = :kind

  scope :lions, -> { where(kind: 'Lion') }
  scope :dogs, -> { where(kind: 'Dog') }
  scope :ducks, -> { where(kind: 'Duck') }
end
