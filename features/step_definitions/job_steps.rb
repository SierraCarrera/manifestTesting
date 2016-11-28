require 'page-object'
require 'watir'
include PageObject::PageFactory

When(/^I filter jobs by Columbus$/) do
	visit_page(ManifestJobs) do |page|
		page.filter_location('Columbus, OH')
		sleep 3
	end
end

Then(/^only Columbus opportunities are present$/) do
	on_page(ManifestJobs) do |page|
		cityResults = @browser.divs(class: 'opp-loc')
		cityResults.each do |location|
			expect(location.text).to eq 'Columbus, OH'
		end	
	end
end

When(/^I filter jobs by contract$/) do
	visit_page(ManifestJobs) do |page|
		page.filter_type('Contract')
		sleep 3
	end
end

Then(/^only contract opportunities are present$/) do
	on_page(ManifestJobs) do |page|
		typeResults = @browser.divs(class: 'opp-type')
		typeResults.each do |type|
			expect(type.text).to eq 'Contract'
		end
	end
end