module AdministratorCabinet
  class BaseController < ApplicationController
    before_action :authenticate_administrator!
    layout 'administrator_cabinet'
  end
end
