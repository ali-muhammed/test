module TeacherCabinet
  class BaseController < ApplicationController
    before_action :authenticate_teacher!
    layout 'teacher_cabinet'
  end
end
