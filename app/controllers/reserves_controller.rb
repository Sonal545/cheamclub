class ReservesController < InheritedResources::Base

  private

    def reserve_params
      params.require(:reserve).permit(:lawn_id, :date, :details)
    end
end

