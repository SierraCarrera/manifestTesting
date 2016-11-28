require 'page-object'

class SouthwestFlights

	include PageObject

	li(:my_departure, id: 'carouselTodayDepart')
	li(:my_return, id: 'carouselTodayReturn')
	li(:disabled, class: 'carouselDisabled')


	def check_return
		self.my_return
	end

	def check_departure
		self.my_departure
	end

	def past_departure
		self.disabled[4]
	end

end