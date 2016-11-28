require 'page-object'

class SouthwestHome

	include PageObject
	include DataMagic

	page_url 'https://www.southwest.com/'

	text_field(:arrival, id: 'air-city-arrival')
	text_field(:departure, id: 'air-city-departure')
	text_field(:leaving_date, id: 'air-date-departure')
	text_field(:return_date, id: 'air-date-return')
	button(:search_flights, id: 'jb-booking-form-submit-button')

	def insert_sample_flight
		populate_page_with data_for :flight_codes
		self.search_flights
	end

end