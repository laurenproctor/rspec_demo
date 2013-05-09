require 'machinist/active_record'

Fruit.blueprint do 
	name { "Fruit number #{sn}" }
	country_of_origin { "GB" }
	age { "3 days" }
	color { "red" }
	description { "Totally beautiful" }
	stair
end
# create a dummy stair and glue the two models together
Stair.blueprint do
end