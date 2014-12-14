class LawnsController < InheritedResources::Base

  private
   def set_lawn
      @lawn = Lawn.find(params[:id])
    end
  
    def lawn_params
      params.require(:lawn).permit(:lawn_no)
    end
end

