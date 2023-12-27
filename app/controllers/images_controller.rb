class ImagesController < ApplicationController
  def upload
    # Parse the uploaded file
    psd = PSD.new(params[:file])

    # Convert the PSD to canvas objects
    canvas_objects = psd_to_canvas_objects(psd)

    # Return the canvas objects
    render json: canvas_objects
   end

end
