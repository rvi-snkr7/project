class Receptionist < ApplicationRecord
  before_action :authenticate_user!
  def index
    def index
      @demo = Receptionist.new
      if current_user.has_role? :admin
        @articles = Article.all.order('created_at DESC')
        @user = User.all
      else
        @articles=Article.where(user_id: current_user.id) .or(Article.where(status: :public)).order('created_at DESC')
      end
    end

  end
end
