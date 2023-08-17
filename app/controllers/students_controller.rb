class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.order(grade: :desc)
        render json: students
    end

    def highest_grade
        highest_grade = Student.maximum(:grade)
        highest_student = Student.find_y(grade: highest_grade)
        render json: highest_student
    end
end
