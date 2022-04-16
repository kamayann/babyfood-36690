require 'rails_helper'

RSpec.describe "UsersController", type: :request do

  before do
    @user = FactoryBot.create(:user)
  end

  describe "GET #edit" do
    it "editアクションにリクエストすると正常にレスポンスが返ってくる" do
    end
    it "editアクションにリクエストするとレスポンスに登録済みのユーザー名が存在する" do
    end
    it "editアクションにリクエストするとレスポンスに登録済みのニックネームが存在する" do
    end
    it "editアクションにリクエストするとレスポンスに登録済みのお子さんとのご関係が存在する" do
    end
  end
end
