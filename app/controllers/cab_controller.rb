class CabController < ApplicationController

  def book_cab
    cab = Cab.where(:user_id => params[:user_id])
    if cab.blank?
      location = getlocation()
      cab = find_nearest_cab(location)
    else
      render :end_ride
    end
  end
  
  def getlocation()
    latitude = rand()*10 + 25.32
    longitude = rand()*10 + 68.00
    [latitude, longitude]
  end
  
  def find_nearest_cab(location)
    cab = Cab.where(:status => "unreserved").closest(origin: location).first
    if cab.blank?
      render :no_cab
    else
      @cab = cab.update_attributes(:status => "booked", :user_id => params[:user_id], :latitude => location[0], :longitude => location[1])
      render :book_cab
    end
  end
  
  def end_ride
    user_id = params[:user_id]
    cab = Cab.find_by(:user_id => user_id)
    cab.update_attributes(:status => "unreserved", :user_id => nil)
    render :book_cab
  end
end

