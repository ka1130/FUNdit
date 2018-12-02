class ProjectsController < ApplicationController
  def index
    @projects = ['Save the Planet', 'Philosophy in Schools', 'Coding for Non-coders']
  end
end
