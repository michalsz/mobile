# -*- coding: utf-8 -*-

class Product < ActiveRecord::Base
  include Tire::Model::Search
  include Tire::Model::Callbacks

  attr_accessible :name, :description, :count, :price, :category

  validates_presence_of :name, :message => 'Podaj nazwę produktu'
  validates_presence_of :description, :message => 'Podaj opis produktu'

  belongs_to :category
end
