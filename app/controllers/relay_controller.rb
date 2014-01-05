class RelayController < ApplicationController
	skip_before_filter  :verify_authenticity_token

  def index
    render :json => {:url => Node.first.url}
  end

  def set
    if params[:url]
      Relay.reset_relay(params[:url])
      node = Node.first
      node.url = params[:url]
      node.save!
    end
  end

end
