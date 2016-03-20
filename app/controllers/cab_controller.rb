class CabController < ApplicationController

  def book_cab
    location = getlocation()
    cab = find_nearest_cab(location)
    status = start_ride(cab,location)  
  end
  
  def getlocation()
    latitude = rand()*10 + 25.32
    longitude = rand()*10 + 68.00
    [latitude, longitude]
  end
  
  def find_nearest_cab(location)
    cab = Cab.where(:status => "unreserved").closest(origin: location)
  end
  
  def start_ride(cab,location)
    user_id = params[:user_id]
    @cab = Cab.update_all(:status => "booked", :user_id => user_id, :latitude => location[0], :longitude => location[1])
  end
  
end

