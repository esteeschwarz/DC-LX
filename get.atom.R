library(httr)
r<-GET("https://esteeschwarz.github.io/DC-LX/atom.xml")
t<-content(r,"text")
writeLines(t,paste0(Sys.getenv("GIT_TOP"),"/DC-LX/atom.git.xml"))