class OrbitzHomePage
  include PageObject

  page_url 'www.orbitz.com'

  link(:select_flight_tab, :id=>'tab-flight-tab')
  label(:select_round_trip, :id=>'flight-type-roundtrip-label')
  text_field(:departure_airport, id:'flight-origin')
  text_field(:arrival_airport, id:'flight-destination')
  text_field(:dep_date, id:'flight-departing')
  text_field(:arr_date, id:'flight-returning')
  button(:select_search_button, id:'search-button')


  def select_round_trip_reservation
    # @browser.link(:select_flight_tab, :id=>'tab-flight-tab').click

    select_flight_tab_element.click
    select_round_trip_element.click
  end


  def select_dep_airport city_name, airport_name
    self.dep_airport =city_name

    select_airport airport_name
  end

   def select_arr_airport city_name, airport_name
   self.select_arr_airport_airport =city_name

   select_airport airport_name

   end

  def select_dep_date no_of_days
    self.dep_date = change_date no_of_days
  end

  def select_arr_date no_of_days
    self.arr_date = change_date no_of_days

  end

  # @browser.ul(:class=> 'results').lis.each do  |airport|
  #   p airport.text
  #   if  airport.text.include? 'CMH'
  #     airport.click
  #     break
  #   end
  #
  #
  # end
  # @browser.text_field(id:'flight-destination').send_keys'cleveland'
  # @browser.ul(:class=>'results').wait_until_present(60).lis.each do|each_airport|
  #   p each_airport.text
  #   if each_airport.text.include? 'Cleveland,OH'
  #     each_airport.click
  #     break
  #   end
  # end
  # def change_date(no_of_days)
  #   (Time.now+60*60*24*no_of_days).strftime('%m/%d/%Y')
  # end
  # dep_day =2
  # arr_day =3
  #
  # @browser.text_field(id:'flight-departing').set change_date dep_day
  # @browser.text_field(id:'flight-returning').set change_date arr_day
  #
  # @browser.button(id:'search-button').click
  #
  #


end