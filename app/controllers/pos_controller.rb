class PosController < EspaBaseController
	
	def show
	@staffs = User.paginate(:page => params[:page])
	end

	def new_order
	@client = Client.new
	@job_categories = JobCategory.includes(:jobs).all
	end

end