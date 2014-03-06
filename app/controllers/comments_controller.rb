class CommentsController < ApplicationController

  def create
    @booking = Booking.find(params[:booking_id])
    @comment = @booking.comments.create(params[:comment].permit(:commenter, :body))
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:booking_id])
    @comment = @booking.comments.find(params[:id])
    @comment.destroy
    redirect_to booking_path(@booking)
  end

end
