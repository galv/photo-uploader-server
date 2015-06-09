class PhotoUploadController < ApplicationController
  # POST
  def create
    binary_data = request.body.read
    File.open('test_file.jpg', 'wb') {|f| f.write(binary_data)}
    #@photo = Photo.create do |photo|
    #  photo.experiment = photo_params[:experiment]
    #  photo.time = Time.at(photo_params[:time].to_i / 1000.0)
    #  photo.file = 'test_file.jpg'
    #end
    response.status = 200 # Shouldn't this be a constant somewhere???
    head :ok # Don't present a view. Receiver of response is a phone.
  end

  private
  def photo_params
    params.permit(:time, :experiment)
  end
end
