class ProjectsController < ApplicationController
  def index
    @projects = Project.where(user_id: current_user.id)
                       .order(created_at: :desc)
  end

  def new
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def show
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id;

    if @project.save
      flash.notice = 'Project created.'
      redirect_to @project
    else
      render 'new'
    end
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      redirect_to @project
    else
      render 'edit'
    end
  end

  def manage
    @projects = Project.all
  end

  private def project_params
    params.require(:project)
          .permit(:title, :description)
  end
end
