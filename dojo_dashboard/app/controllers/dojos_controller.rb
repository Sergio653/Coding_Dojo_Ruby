class DojosController < ApplicationController
    def index
        @dojos = Dojo.all
    end

    def new
    end

    def create
        new_dojo = Dojo.create(dojo_params)
        puts new_dojo

        if new_dojo.valid?
            flash[:success] = "You have succesfully created a New Dojo!" 
            redirect_to "/dojos"
        else 
            flash[:failure] = new_dojo.errors.full_messages
            redirect_to "/dojos/new"
        end
    end

    def show
        @dojo = Dojo.find(params[:id])
        @students = Student.where(Dojo: @dojo )
        puts @students
    end

    def edit
        @dojo = Dojo.find(params[:id])
    end

    def update
        update_dojo = Dojo.update(params[:id],dojo_params)

        if update_dojo.valid?
            flash[:success] = "You have succesfully updated the dojo!"
            redirect_to "/dojos"
        else 
            flash[:errors] = update_dojo.errors.full_messages
            redirect_to "/dojos/#{update_dojo.id}/edit"
        end
    end

    def destroy
        delete_dojo = Dojo.find(params[:id]).destroy
        redirect_to "/dojos"
    end     

    private
        def dojo_params
            params.require(:Dojo).permit(:branch, :street,:city, :state)
        end
end
