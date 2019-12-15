class TimesController < ApplicationController
  def main
    @currentDate = Time.now.strftime("%B %e, %Y")
		@currentTime = Time.now.strftime("%I:%M %p")
  end
end
