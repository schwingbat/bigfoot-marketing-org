class ProjectsController < ApplicationController
  def index
    @projects = Project.order(created_at: :desc)
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

    if @project.save
      flash.notice = 'Project created. Bookmark this page to keep tabs on your project\'s progress.'
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
          .permit(:title,
                  :description,
                  :organization,
                  :location,
                  :when,
                  :due,
                  :status,
                  :contact_name,
                  :contact_email,
                  :contact_phone)
  end
end
