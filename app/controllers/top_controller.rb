class TopController < ApplicationController
  def index
    @message = "おはようございます！"
  end

  def about
    @message1 = "ハロウィーン"
  end

  private

  def prepare
    @message = "ララrララ亜"
  end
end
