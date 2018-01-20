class ManageController < ApplicationController
  def projects
    @projects = Project.all
  end
end
