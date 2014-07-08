class PosController < EspaBaseController
	
	def show
	@staffs = User.paginate(:page => params[:page])
	end

end