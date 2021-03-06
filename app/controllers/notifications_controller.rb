class NotificationsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @notification = @event.notifications.create(notification_params)
    UserMailer.delay(run_at: @notification.send_time).send_notification(current_user, @event, @notification)
    redirect_to event_path(@event)
  end

  def destroy
    @event = Event.find(params[:event_id])
    @notification = @event.notifications.find(params[:id])
    @notification.destroy
    redirect_to event_path(@event)
  end

  private

  def notification_params
    params.require(:notification).permit(:description, :send_time)
  end
end
