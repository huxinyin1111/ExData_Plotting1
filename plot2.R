# 加载必要的库
library(ggplot2)
library(lubridate)

# 假设数据框名为 df，列名为 global_active_power 和 date
# df <- read.csv("your_data.csv")
# df$date <- as.Date(df$date)

# 绘制时间序列图
ggplot(df, aes(x = date, y = global_active_power)) +
  geom_line() +
  labs(title = "Global Active Power Over Time", x = "", y = "Global Active Power (kilowatts)") +
  theme_minimal() +
  scale_x_date(breaks = date_breaks("1 day"), labels = date_format("%a"))