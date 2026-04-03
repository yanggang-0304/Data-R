# 安装和加载ggplot2包，用于绘制柱状图
install.packages("ggplot2")
library(ggplot2)

# 创建数据框
data <- data.frame(
  Mo = c(0, 0, 0, 0.15, 0.15, 0.15, 0.3, 0.3, 0.3),
  N = c(0.06, 0.24, 0.42, 0.06, 0.24, 0.42, 0.06, 0.24, 0.42),
  Average = c(13.79, 25.87, 34.84, 9.55, 28.85, 34.37, 11.58, 29.08, 36.52),
  stringsAsFactors = FALSE
)

# 绘制柱状图
ggplot(data, aes(x = factor(Mo), y = Average, fill = factor(N))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "N Content (mg/g) by Mo and N Levels",
       x = "Mo (mg/kg)",
       y = "Average N Content (mg/g)",
       fill = "N Level (mg/g)") +
  theme_minimal()
