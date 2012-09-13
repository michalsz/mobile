# -*- coding: utf-8 -*-
require 'spec_helper'

describe Product do

  describe 'validation' do
    it { should validate_presence_of(:name).with_message(/Podaj nazwę produktu/)}
    it { should validate_presence_of(:description).with_message(/Podaj opis produktu/)}
  end
end
