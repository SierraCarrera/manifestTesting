require 'page-object'

class ManifestJobs

	include PageObject

	page_url 'http://manifestcorp.com/opportunities/all-opportunities'

	def filter_location(location)
		browser.select_list(:name => 'opportunity_loc').select location
	end

	def filter_type(type)
		browser.select_list(:name => 'opportunity_type').select type
	end
end