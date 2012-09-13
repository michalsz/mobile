# -*- coding: utf-8 -*-
require 'spec_helper'

describe Category do
  describe 'validation' do
    it { should validate_presence_of(:name).with_message(/Podaj nazwę kategori/)}
  end
end
