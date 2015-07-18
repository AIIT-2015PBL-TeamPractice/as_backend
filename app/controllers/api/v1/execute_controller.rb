class Api::V1::ExecuteController < ApplicationController
  protect_from_forgery :except => [:create]
  def index

  end

  def create
    setcode
    src = @code['src']
    prog = OoTalk::Program.new(src)
    render :json => prog.exec.to_json
  end

  private

  def setcode
    @code = params[:code]
  end
end