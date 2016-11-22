require 'page-object'

module FilterActions
    include PageObject::PageFactory
    
    def go_to_job_cities
        on_page(ManifestJobs)
            .location_element
            .when_present
            .click
    end

    def go_to_job_types
        on_page(ManifestJobs)
            .type_element
            .when_present
            .click
    end