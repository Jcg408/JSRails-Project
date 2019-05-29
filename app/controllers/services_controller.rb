class ServicesController < ApplicationController
    def index
        @services = Service.all
        respond_to do |f|
            f.html
            f.json{render :json => @services}
        end
    end

    def show
        @service = Service.find(params[:id])
        render :json => @service
    end
   
    private

    def service_params
        params.require(:service).permit(:name, :description)
    end
end