class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    # # deviseコントローラーにストロングパラメータを追加する          
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected
    def configure_permitted_parameters
      # サインアップ時にnameのストロングパラメータを追加
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      # アカウント編集の時にnameとaboutのストロングパラメータを追加
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :about])
      # アイコン画像用のストロングパラメータを追加
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image]) 
    end

    #   # ログイン後、blogs/indexに移動する
    def after_sign_in_path_for(resource)
        tweets_index_path
    end

end
