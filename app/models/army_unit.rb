class ArmyUnit < ActiveRecord::Base
  belongs_to :unit
  belongs_to :army
end
