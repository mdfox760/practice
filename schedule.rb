require 'date'
require 'json'
  def day_schedule
    schedule = {}
    schedule[:today_fun] = "Buy Booze. Get drunk. Fall asleep."
    schedule[:today_serious] = "Let dog out. Work. Avoid traffic."
    puts now = Date.today.strftime("%a %B %d %Y")
    # puts work
    # puts work.to_s
    # puts work.to_json
    puts "Todays Fun Schedule: "
    puts schedule[:today_fun]
    puts "Todays Serious Schedule: "
    puts schedule[:today_serious]
  end
day_schedule
puts "*****"

  def week_schedule
    schedule = {}
    schedule[:work_week] = "Take kids to school. Work. Pick up kids."
    schedule[:week_end] = "Pack up car. Go camping. Have fun."
    puts "Weeks Schedule: "
    puts schedule[:work_week]
    puts "Weekend Schedule: "
    puts schedule[:week_end]
    end
week_schedule
puts "******"

  def month_schedule
    schedule = {}
    schedule[:month_schedule] = "Program. Garden. Love Kyle."
    schedule[:fun_month_schedule] = "Make money. Spend money."
    puts "Monthly Schedule: "
    puts schedule[:month_schedule]
    puts "Fun Monthly Schedule: "
    puts schedule[:fun_month_schedule]
  end
month_schedule
