require 'rails_helper'

RSpec.describe Meal, type: :model do
  before do
    @meal = FactoryBot.build(:meal)
  end

  describe '食事新規登録' do
    context '新規登録できるとき' do
      it 'すべての値が正しく入力されていれば保存できる' do
        expect(@meal).to be_valid
      end
    end
    context '新規登録できないとき' do
      it 'foodが空だと登録できない' do
        @meal.food = ''
        @meal.valid?
        expect(@meal.errors.full_messages).to include("Food can't be blank")
      end
      it 'meal_dateが空だと登録できない' do
        @meal.meal_date = ''
        @meal.valid?
        expect(@meal.errors.full_messages).to include("Meal date can't be blank")
      end
      it 'meal_time_idが1だと登録できない' do
        @meal.meal_time_id = 1
        @meal.valid?
        expect(@meal.errors.full_messages).to include("Meal time can't be blank")
      end
      it 'babyが紐づいていないと保存できない' do
        @meal.baby = nil
        @meal.valid?
        expect(@meal.errors.full_messages).to include("Baby must exist")
      end
    end
  end
end
