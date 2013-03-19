class Address < ActiveRecord::Base
  attr_accessible :zip_code, :city, :complement, :neighborhood, :number, :state, :street
  belongs_to :addressable, :polymorphic => true
  validates_presence_of :zip_code, :city, :neighborhood, :state, :street
end