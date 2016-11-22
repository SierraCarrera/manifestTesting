require 'page-object'

module NavigationActions
    include PageObject::PageFactory
    def go_to_manifest_home
        visit_page(ManifestHome)
    end

    def go_to_manifest_jobs
        on_page(ManifestHome)
            .jobs_link_element
            .when_present
            .ul
            .li
            .a
            .click
    end
end