class ApplicationController < ActionController::Base


  private

  to_word = -> (n) { n.humanize.capitalize }	

end
