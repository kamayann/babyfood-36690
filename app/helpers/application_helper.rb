module ApplicationHelper
  def change_meal_time(num)
    time_id = num

    case time_id
    when 2
     return "朝食"
    when 3
     return"おやつ(朝)"
    when 4
     return "昼食"
    when 5
     return "おやつ(昼)"
    when 6
     return "夕食"
    when 7
     return "就寝前"
    else
     return "その他"
    end

  end
end
