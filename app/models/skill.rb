class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :percent_utilized
  def set_defaults #make defaults in model (here) or in a migration
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
  end
end
