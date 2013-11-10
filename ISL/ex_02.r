college <- read.csv("data/College.csv")
rownames(college) <- college[,1]
college <- college[,-1]

Elite = rep("No",nrow(college))
Elite[college$Top10perc>50] = "Yes"
Elite = as.factor(Elite)
college = data.frame(college, Elite)