class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs['name'].blank? }
  
  include Placeholder
  #Validation
  validates_presence_of :title, :body, :main_image, :thumb_image
  #Two ways of making custom scopes
  def self.angular
    where(subtitle: 'Angular')
  end
  # -> is the same as lambda
  scope :ruby_on_rails, -> {where(subtitle: 'Ruby on Rails')}
  
  #new way to set defaults, after_ (initialize -> new, create -> create)
  after_initialize :set_defaults
  
  def set_defaults #make defaults in model (here) or in a migration
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
    # ||= (if value equals nil(null) set to value) 
  end
end
