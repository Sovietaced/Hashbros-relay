class RelayController < ApplicationController
	skip_before_filter  :verify_authenticity_token

  def index
    render :json => Node.first
  end

end
