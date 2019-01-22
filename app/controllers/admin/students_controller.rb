class Admin::StudentsController < AdminController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to admin_students_path
    else
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    if @student.update(student_params)
      redirect_to admin_student_path(@student)
    else
      render 'edit'
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def destroy
  end

  private
  def student_params
    params.require(:student).permit(
      :first_name,
      :surname, 
      :patronymic, 
      :birth_date, 
      :gender, 
      :email, 
      :phone_number, 
      :second_phone_number, 
      :skype, 
      :passport_id, 
      :passport_self_id,
      :passport_organization,
      :passport_date,
      :password,
      :password_confirmation
    )
  end
end
