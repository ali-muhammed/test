module AdministratorCabinet
  class TeachersController < BaseController

    before_action :find_teacher, only: [:show, :edit, :update, :destroy]
    def index
      @teachers = Teacher.all
    end

    def show
    end

    def new
      @teacher = Teacher.new
    end

    def create
      @teacher = Teacher.new(teacher_params)
      if @teacher.save
        redirect_to administrator_cabinet_teachers_path
      else
        render :new
      end
    end

    def edit

    end

    def update
      if @teacher.update(teacher_params)
        redirect_to administrator_cabinet_teacher_path(@teacher.id)
      else
        render :edit
      end
    end


    private

    def find_teacher
      @teacher = Teacher.find(params[:id])
    end

    def teacher_params
      params.require(:teacher).permit(
        :name,
        :surname,
        :patronymic,
        :phone,
        :second_phone,
        :birth_date,
        :passport_id,
        :passport_date,
        :passport_self_id,
        :passport_organization,
        :skype,
        :gender,
        :email,
        :password,
        :password_confirmation
      )
    end
  end
end
