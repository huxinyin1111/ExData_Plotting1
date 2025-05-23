# 加载必要的库
library(ggplot2)

# 假设数据框名为 df，列名为 global_active_power
# df <- read.csv("your_data.csv")

# 绘制直方图
ggplot(df, aes(x = global_active_power)) +
  geom_histogram(binwidth = 0.2, fill = "red", color = "black") +
  labs(title = "Global Active Power", x = "Global Active Power (kilowatts)", y = "Frequency") +
  theme_minimal()