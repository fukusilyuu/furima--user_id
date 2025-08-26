class ApplicationController < ActionController::Base
  before_action :set_search
  before_action :basic_auth
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :firstname_kanji, :lastname_kanji, :firstname_katakana, :lastname_katakana, :birth_date])
  end

  def set_search
    
    @item = Item.new
    @q = Item.ransack(params[:q])
    if params[:q].present?
      @items = @q.result(distinct: true)
    else
      @items = Item.all
    end
  end

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' && password == '222'
    end
  end
end
