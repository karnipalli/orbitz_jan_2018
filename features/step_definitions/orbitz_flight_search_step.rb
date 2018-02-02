Given(/^user is on orbitz homepage$/) do
  visit OrbitzHomePage
end

When(/^user selects flight tab$/) do
  on(OrbitzHomePage).select_round_trip_reservation
end

And(/^user select (.*) airport as departure location$/) do |city_name, airport_name|
  on(OrbitzHomePage).select_dep_airport  city_name, airport_name

end

And(/^user select (.*) airport as arrival location$/) do |city_name, airport_name|
  on(OrbitzHomePage).select_arr_airport city_name, airport_name
end


And(/^user selects Columbus airport as departure location$/) do
  pending
end

And(/^user selects Cleveland airport as arrival location$/) do
  pending
end

And(/^user selects past date$/) do
  pending
end

And(/^user search for the available flights$/) do
  pending
end

Then(/^user should see the warning messages$/) do
  pending
end

And(/^user selects "([^"]*)" airport as departure location$/) do |arg|
  pending
end

And(/^user selects "([^"]*)" airport as arrival location$/) do |arg|
  pending
end

And(/^user selects future date$/) do
  pending
end

Then(/^user should see the available flights$/) do
  pending
end