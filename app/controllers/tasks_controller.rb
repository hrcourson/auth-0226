class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new
    @task["description"] = params["description"]
    @task.save
    redirect_to "/tasks"
  end

  def destroy
    @task = Task.find_by({ "id" => params["id"] })
    @task.destroy
    redirect_to "/tasks"
  end
end

  def create
    @task = Task.new
    @task["description"] = params["description"]
    @task.save
    redirect_to "/tasks"
    @task["user_id"] = @current_user["id"]
  end

    def index
    @tasks = Task.where({ "user_id" => @current_user["id"] })
    @task = Task.new
    end