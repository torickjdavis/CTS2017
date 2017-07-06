class Portfolio < ApplicationRecord
  #Validation
  validates_presence_of :title, :body, :main_image, :thumb_image
  #Two ways of making custom scopes
  def self.angular
    where(subtitle: 'Angular')
  end
  
  scope :ruby_on_rails, -> {where(subtitle: 'Ruby on Rails')}
end
