class HomeController < ApplicationController
  def print_rules
    render({:template => "rps_templates/homepage"})
  end
end
