# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

Product.destroy_all
(1..10).each do |i|
  Product.create(:name => 'Name ' + i.to_s, :description => 'Description of the product ' + i.to_s)
end
