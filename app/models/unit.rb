class Unit < ActiveRecord::Base
  validates_presence_of :name, :base_cost

  belongs_to :faction
  belongs_to :unit_type

  def to_s
    name
  end
end
