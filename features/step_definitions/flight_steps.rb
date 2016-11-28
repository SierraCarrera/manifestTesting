require 'page-object'
include PageObject::PageFactory
include DataMagic

When(/^I search for a flight using the default dates$/) do
	visit_page(SouthwestHome).get_flights
end

Then(/^the dates I searched for are highlighted in the search results$/) do
	on_page(SouthwestFlights) do |page|
		expect(page.check_arrival).to eq '28'
		expect(page.check_departure).to eq '5'
	end
end

Then(/^I can't choose a departure date from the past$/) do
	on_page(SouthwestFlights) do |page|
		expect(page.past_departure).not_to include '28'
	end
end

