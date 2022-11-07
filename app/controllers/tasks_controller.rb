class TasksController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @tasks = @user.tasks
  end
  
  def show
    @task = Task.find(params[:user_id])
    
  


  private
  
    def task_params
      params.require(:task).permit(:name, :detail)
    end
end 
end