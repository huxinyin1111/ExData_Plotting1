# 加载必要的库
library(ggplot2)
library(lubridate)
library(gridExtra)

# 假设数据框名为 df，列名为 global_active_power, voltage, sub_metering_1, sub_metering_2, sub_metering_3 和 datetime
# df <- read.csv("your_data.csv")
# df$datetime <- as.POSIXct(df$datetime)

# 绘制多个时间序列图
p1 <- ggplot(df, aes(x = datetime, y = global_active_power)) +
  geom_line() +
  labs(title = "Global Active Power", x = "datetime", y = "Global Active Power") +
  theme_minimal()

p2 <- ggplot(df, aes(x = datetime, y = voltage)) +
  geom_line() +
  labs(title = "Voltage", x = "datetime", y = "Voltage") +
  theme_minimal()

p3 <- ggplot(df, aes(x = datetime)) +
  geom_bar(aes(y = sub_metering_1), stat = "identity", fill = "grey", position = "dodge") +
  geom_bar(aes(y = sub_metering_2), stat = "identity", fill = "red", position = "dodge") +
  geom_bar(aes(y = sub_metering_3), stat = "identity", fill = "blue", position = "dodge") +
  labs(title = "Energy sub metering", x = "datetime", y = "Energy sub metering") +
  theme_minimal()

p4 <- ggplot(df, aes(x = datetime, y = global_reactive_power)) +
  geom_line() +
  labs(title = "Global Reactive Power", x = "datetime", y = "Global reactive power") +
  theme_minimal()

# 将四个图组合在一起
grid.arrange(p1, p2, p3, p4, ncol = 2)