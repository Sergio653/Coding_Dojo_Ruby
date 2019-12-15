class StudentsController < ApplicationController
    def new
        @dojo = Dojo.find(params[:dojo_id])
        @all_dojo = Dojo.all
    end

    def create
        student = Student.create(student_params)
        if student.valid?
            flash[:success] = "You have succesfully created a student!"
            redirect_to dojo_path(params[:dojo_id])
        else  
            flash[:failure] = student.errors.full_messages
            redirect_to new_dojo_student_path(params[:dojo_id])
        end
    end

    def show
        @dojo = Dojo.find(params[:dojo_id])
        @student = Student.find(params[:id])
        @cohort = @dojo.students.where.not(id:@student.id)
    end
    
    def edit
        @all_dojo = Dojo.all
        @dojo = Dojo.find(params[:dojo_id])
        @student = Student.find(params[:id])
    end

    def update
        update_student = Student.update(params[:id], student_params)
        
        if update_student.valid?
            flash[:success] = "You have succesfully updated student!"
            redirect_to dojo_student_path(params[:dojo_id],params[:id])
        else 
            flash[:errors] = update_student.errors.full_messages
            redirect_to edit_dojo_student_path(params[:dojo_id],params[:id])
        end
    end

    def destroy
        delete_student = Student.find(params[:id]).destroy
        redirect_to "/dojos/#{params[:dojo_id]}"
    end
    private
        def student_params
            params.require(:Student).permit(:first_name, :last_name, :email, :Dojo_id)
        end
end
