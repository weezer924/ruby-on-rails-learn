class MembersController < ApplicationController
  def index
    @members = Member.order("number")
  end

  def show
    puts params[:id]
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new(birthday: Date.new(1980, 1, 1))
  end

  def edit
    @member = Member.find(params[:id])
  end

  def create

  end

  def update

  end

  def destory

  end

  def search
    @members = Member.search(params[:q])
    render "index"
  end
end
