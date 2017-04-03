class WorkshopsController < ApplicationController
  def workshop
      @workshop = Workshop.new
    end

    def create
      @workshop = Workshop.new(registration_params)
      respond_to do |format|
    if @workshop.save
      
            format.html { redirect_to pages_workshop_path, notice: 'Registration was successful' }

    else
      render 'new', alert: "Registration failed."

    end
  end
  end
    private

      def registration_params
        params.require(:workshop).permit(:name, :email, :number,  :message)
      end
end
