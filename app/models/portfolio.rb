class Portfolio < ApplicationRecord
  #Validation
  validates_presence_of :title, :body, :main_image, :thumb_image
  #Two ways of making custom scopes
  def self.angular
    where(subtitle: 'Angular')
  end
  scope :ruby_on_rails, -> {where(subtitle: 'Ruby on Rails')}
  
  #new way to set defaults, after_ (initialize -> new, create -> create)
  after_initialize :set_defaults
  
  def set_defaults #make defaults in model (here) or in a migration
    self.main_image ||= "https://placehold.it/600x400"
    self.thumb_image ||= "https://placehold.it/350x200"
    # ||= (if value equals nil(null) set to value) 
  end
end
