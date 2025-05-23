# 加载必要的库
library(ggplot2)
library(dplyr)

# 假设数据框名为 df，列名为 sub_metering_1, sub_metering_2, sub_metering_3 和 date
# df <- read.csv("your_data.csv")
# df$date <- as.Date(df$date)

# 绘制柱状图
ggplot(df, aes(x = date)) +
  geom_bar(aes(y = sub_metering_1), stat = "identity", fill = "grey", position = "dodge") +
  geom_bar(aes(y = sub_metering_2), stat = "identity", fill = "red", position = "dodge") +
  geom_bar(aes(y = sub_metering_3), stat = "identity", fill = "blue", position = "dodge") +
  labs(title = "Energy Sub Metering", x = "", y = "Energy sub metering") +
  theme_minimal() +
  scale_x_date(breaks = date_breaks("1 day"), labels = date_format("%a")) +
  scale_y_continuous(limits = c(0, 35)) +
  theme(legend.position = "top")