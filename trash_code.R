#plots
ggplot(data = tox_avg_14, aes(x = Date, y = avg_tox, group = parameterType))+
  geom_point(aes(shape=parameterType, color=parameterType), size = 5)+
  theme_bw()+
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank())+
  xlab('Date')+
  ylab('Average Tox Concentration (ug/L)')


ggplot(data = tox_avg_14, aes(x = Date, y = avg_tox))+
  geom_point(size= 4.5, aes(fill=parameterType, shape = parameterType, color=parameterType))+
  scale_shape_manual(name = "Tox ID", values=c("ANA_tox" = 1,"CLY_tox" = 2,"MIC_tox" = 5, "SAX_tox" =0))+
  theme_bw()+
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank())+
  xlab('Date')+
  ylab('Average Tox Concentration (ug/L)')  

ggplot(data = tox_avg_14, aes(x = Date, y = avg_tox))+
  geom_point(aes(shape=parameterType, color=parameterType, size=parameterType))+
  scale_shape_manual(name = "Tox ID", values=c("ANA_tox" = 15,"CLY_tox" = 16,"MIC_tox" = 17, "SAX_tox" =18))+
  #scale_color_manual(values=c('#999999','#E69F00', 'blue4', "green4"))+
  scale_size_manual(values=c(9,8,7,6))+
  theme_bw()+
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank())+
  xlab('Date')+
  ylab('Average Tox Concentration (ug/L)') 

plot <- ggplot(tox_avg_14, aes(x = Date, y = avg_tox, group = parameterType, shape = parameterType, color=parameterType)) +
  geom_line(size =1.1) +
  #geom_point(color = 'grey7', size = 7, show_guide = FALSE) +
  geom_point() +
  scale_color_manual(values = c('#999999','orange', 'palegreen3', 'mediumpurple'), labels = c('ANA', 'CLY', 'MIC','SAX')) +
  scale_shape_manual(values = c(15, 16, 17, 17), labels = c('ANA', 'CLY', 'MIC','SAX')) +
  scale_size_manual(values=c(6,6,3,6), labels = c('ANA', 'CLY', 'MIC','SAX'))+
  theme_bw()

#tp plot
ggplot(tp_14_avg, aes(x=Date, y=Average_TP)) +
  #geom_hline(yintercept = 0)+ #this is the avg of the 65 lakes
  geom_line(color="grey", aes(color =parameterType))+
  geom_point(color = "darkorchid4", size = 8)+ #alpha is size of point
  geom_smooth(method = "lm")+
  theme_bw()+
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank())+
  xlab('Date')+
  ylab('TP Concentration (µg/L)')+
  labs(title = "Average Total Phosphorus Concentrations for Summer 2024")

#ysi depth
ggplot(ysi_14te, aes(x=tempF, y=depth_m, group=date)) +
  geom_line(size =0.75, aes(color =date)) +
  geom_point(aes(shape=date, color=date))+
  scale_shape_manual(values=c(15, 16, 17, 18))+
  scale_color_manual(values=c('brown4','orange', 'palegreen3', 'steelblue'))+
  #scale_size_manual(values=c(8,8,5,6))+
  scale_x_reverse()+
  #put the y axis labes on the opposite side so when its flipped it will appear at top
  scale_y_continuous(position="left")+
  #this is how you reverse the look and order or the coordinates for the graph
  coord_flip()+
  theme(legend.position="right")+
  theme_bw()+
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank())+
  xlab('Temperature (F)')+
  ylab('Depth (m)') 
#geom_smooth(method=lm, se=FALSE, col='red', size=2)