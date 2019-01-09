class DetailedsController < ApplicationController
    def index
      @detailed = Detailed.new
    end

    def show
      @detailed = Detailed.find(params[:id])
    end
      
    def create

      @detailed = Detailed.new(detailed_params)

      if @detailed.save

         redirect_to @detailed

      else
        render :index
      end
    end
    
    private

    def detailed_params
       params.require(:detailed).permit(:name, :emailornumber, :role, :involved, 
        :observer, :dateortime, :location, :other, :description, {attachment: []}, :school_id, :otherfortag,
        :tag_list, :tag, {tag_ids:[]}, :tag_ids)
    end
end
