# 加载必要的库
library(ggplot2)

# 定义数据
data <- data.frame(
  Treatment1 = c("Mo 0.00 mg/kg", "Mo 0.00 mg/kg", "Mo 0.00 mg/kg",
                 "Mo 0.15 mg/kg", "Mo 0.15 mg/kg", "Mo 0.15 mg/kg",
                 "Mo 0.30 mg/kg", "Mo 0.30 mg/kg", "Mo 0.30 mg/kg"),
  Treatment2 = c("N0.06", "N0.24", "N0.42",
                 "N0.06", "N0.24", "N0.42",
                 "N0.06", "N0.24", "N0.42"),
  Mean = c(4.66025, 11.52575, 14.27775,
           3.64675, 11.55575, 15.0545,
           4.77625, 10.99875, 15.07175),
  SD = c(0.7286, 0.69618, 0.85251,
         0.24926, 0.3982, 0.81309,
         0.69251, 0.35406, 0.42445),
  stringsAsFactors = FALSE
)

# 绘制柱状图
ggplot(data, aes(x = Treatment2, y = Mean, fill = Treatment1)) +
  geom_bar(stat = "identity", position = "dodge") +
  geom_errorbar(aes(ymin = Mean - SD, ymax = Mean + SD), position = position_dodge(width = 0.9), width = 0.25) +
  labs(title = "Total Amino Acid Content by Treatment",
       x = "Nitrogen Treatment (N)",
       y = "Total Amino Acid Content (% DW)",
       fill = "Molybdenum Treatment (Mo)") +
  theme_minimal()
