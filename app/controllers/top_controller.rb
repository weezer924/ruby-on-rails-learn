class TopController < ApplicationController
  def index
  end

  def about
    @message1 = "ハロウィーン"
    @page_title = "jackie chen"
  end

  private

  def prepare
    @message = "ララrララ亜"
  end
end
