require './features/actions/navigation_actions'
require 'page-object'
include PageObject::PageFactory

When(/^I filter jobs by columbus$/) do
     extend NavigationActions
     .go_to_manifest_home
     .go_to_manifest_jobs
      
end

Then(/^only columbus opportunities are present$/) do
    on_page(ManifestJobs) do |page|
        results = @browser.divs(class: 'opp-loc')
        results.each do |location|
            expect(location.text).to eq 'Columbus, OH'
        end
    end
end

When(/^I filter jobs by contract$/) do
    on_page(ManifestJobs) do |page| 
        page.filterType('Contract') 
    end
end

Then(/^only contract opportunities are present$/) do
    on_page(ManifestJobs) do |page|
        results = @browser.divs(class: 'opp-type')
        results.each do |type|
            expect(type.text).to eq 'Contract'
        end
    end
end
