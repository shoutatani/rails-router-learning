class PagesController < ApplicationController
  def index
  end

  def show
  end

  def check
    logger.info "**** named parameter test, you can see named parameter when access to 'pages/check/ANY_KEYWORDS' ****"
    logger.info "params[:number]=#{params[:number]}"
    logger.info "**** named parameter test ****"
  end
end
