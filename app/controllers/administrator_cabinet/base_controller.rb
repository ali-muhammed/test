module Administrator
  class BaseController < ApplicationController
    before_action: :authenticate_administrator!
  end
end
