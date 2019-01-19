module AdministratorCabinet
  class StudentsController < BaseController

    before_action :find_student, only: [:show, :edit, :update, :destroy]
    def index
      @students = Student.all
    end

    def show
    end

    def new
      @student = Student.new
    end

    def create
      @student = Student.new(student_params)
      if @student.save
        redirect_to administrator_cabinet_students_path
      else
        render :new
      end
    end

    def edit

    end

    def update
      if @student.update(student_params)
        redirect_to administrator_cabinet_student_path(@student.id)
      else
        render :edit
      end
    end


    private

    def find_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(
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
