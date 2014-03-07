class BookingsController < ApplicationController

	def new
		@booking = Booking.new
	end

	def create
		@booking = Booking.new(params[:booking].permit(:station, :name, :time))
		if @booking.save
			redirect_to bookings_path
		else
			render 'new'
		end
	end
	
	def destroy
		@booking = Booking.find(params[:id])
		@booking.destroy
		
		redirect_to bookings_path
	end

	def show
		@booking = Booking.find(params[:id])
	end

	def index
		@bookings = Booking.all
	end
	
	def edit
		@booking = Booking.find(params[:id])
	end

	def update
		@booking = Booking.find(params[:id])

		if @booking.update(params[:booking].permit(:station, :name, :time))
    			redirect_to bookings_path
  		else
    			render 'edit'
  		end
	end
	private
	  	def booking_params
			params.require(:booking).permit(:station, :name, :time)
		end
end
