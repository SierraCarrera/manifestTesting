require 'page-object'
require 'yaml'
include PageObject::PageFactory

flights = YAML.load_file("config/data/default.yml")


When(/^I search for a flight using the default dates$/) do
	visit_page(SouthwestHome).insert_sample_flight
end

Then(/^the dates I searched for are highlighted in the search results$/) do
	on_page(SouthwestFlights) do |page|
		expect(page.check_departure).to include flights["flight_codes"]["leaving_date"]
		expect(page.check_return).to include flights["flight_codes"]["return_date"]
	end
end

Then(/^I can't choose a departure date from the past$/) do
	on_page(SouthwestFlights) do |page|
		expect(page.past_departure).not_to include flights["flight_codes"]["leaving_date"]
	end
end

