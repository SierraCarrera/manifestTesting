require 'page-object'

class ManifestHome

    include PageObject

    page_url 'http://manifestcorp.com'

    @browser.select_list(:jobs_link, id: 'menu-item-35')


end