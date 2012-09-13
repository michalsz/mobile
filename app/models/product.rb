# -*- coding: utf-8 -*-

class Product < ActiveRecord::Base

  validates_presence_of :name, :message => 'Podaj nazwę produktu'
  validates_presence_of :description, :message => 'Podaj opis produktu'
end
