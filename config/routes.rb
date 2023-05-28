Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "exercises#index"
get 'exercises/index' # 入力画面
post 'exercises/confirm' # 確認画面
post 'exercises/back' # 確認画面から「入力画面に戻る」をクリックしたとき

end
