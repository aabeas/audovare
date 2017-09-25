class RequestsController < ApplicationController

  skip_before_action :authenticate_user!

  def index
    @requests = current_user.requests
  end

  # def admin_index
  #   if current_user.superadmin_role?
  #     @requests = Request.requests
  #   else
  #     redirect_to requests_path
  #   end
  # end

  def show
    @request = current_user.requests.find(params[:id])
  end

  def new
    @request = current_user.requests.new
  end

  def edit
    @request = current_user.requests.find(params[:id])
  end

  def create
    @request = current_user.requests.new(request_params)

      # @request.user_id = current_user.id

    if @request.save
      redirect_to @request
    else
      render 'new'
    end
  end

  def update
    @request = current_user.requests.find(params[:id])

    if @request.update(request_params)
      redirect_to @request
    else
      render 'edit'
    end
  end

  def destroy
    @request = current_user.requests.find(params[:id])
    @request.destroy

    redirect_to requests_path
  end

  private
  def request_params
    params.require(:request).permit(:title, :synopsis)
  end
end
