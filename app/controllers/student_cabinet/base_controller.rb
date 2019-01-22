module StudentCabinet
  class BaseController < ApplicationController
    before_action :authenticate_student!
    layout 'student_cabinet'
  end
end
