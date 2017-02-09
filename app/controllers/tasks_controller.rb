class TasksController < ApplicationController
  def index
  @tasks = Task.all
  end

  def new
  @task = Task.new
  end

  def create
  @task = Task.create(
  name: params[:name],
  description: params[:description])

      redirect_to '/'
  end

  def show
  @task =Task.find_by(id: params[:id])
  end

  def edit
  @task =Task.find_by(id: params[:id])
  end

  def update
  @task = Task.find_by(id: params[:id])
  @task.update(
  name: params[:name],
  description: params[:description])

    redirect_to "/tasks/#{@task.id}"
  end

  def destroy
  @task = Task.find_by(id: params[:id])
  @task.destroy

    redirect_to '/'
  end
end
