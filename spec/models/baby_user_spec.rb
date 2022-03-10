require 'rails_helper'

RSpec.describe BabyUser, type: :model do
  let(:baby_user){ FactoryBot.create(:baby_user) }

    it "baby_idとuser_idがある場合、有効であること" do
      expect(baby_user).to be_valid
    end
  
    it "baby_idがない場合、無効であること" do
      baby_user.baby_id = nil
      baby_user.valid?
      expect(baby_user.errors.full_messages).to include("Baby must exist")
    end
    it "user_idがない場合、無効であること" do
      baby_user.user_id = nil
      baby_user.valid?
      expect(baby_user.errors.full_messages).to include("User must exist")
    end
  
end