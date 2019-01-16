class Student < User
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
