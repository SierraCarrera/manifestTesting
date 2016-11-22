require 'page-object'

class ManifestJobs

    include PageObject

    page_url 'http://manifestcorp.com/opportunities/all-opportunities/'

    def filterLocation(location)
        browser.select_list(:name => 'opportunity_loc').select location
    end
    
    def filterType(type)
        browser.select_list(:name => 'opportunity_type').select type
    end

    def locationResults()

    end

    def contractResults() 

    end

end