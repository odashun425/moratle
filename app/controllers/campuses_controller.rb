class CampusesController < ApplicationController
  def index
    @campuses = Campus.all
  end

  def departmentlist
    @campuses = Campus.all
  end

def search
    @campuses = Campus.where('university LIKE(?)', "%#{params[:keyword]}%").limit(20)
  end
end
