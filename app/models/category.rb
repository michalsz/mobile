# -*- coding: utf-8 -*-
class Category < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of :name, :message => 'Podaj nazwę kategori'

  has_many :products
end
