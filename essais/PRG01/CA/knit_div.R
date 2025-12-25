#13026.fsi-survey: knit
library(rmarkdown)
library(xml2)
# library(rlang)
# library(purrr)

#getwd()
# args<-c("knit","","none")
 args <- commandArgs(trailingOnly = TRUE)
rmd<-args[1]
#static:
#rmd<-"N-PRG_CA_001"
# id<-"ground"
# if (length(args)==1){
#   ref<-"empty"
#   txt<-NA
#   arg<-args[1]}
# if (length(args)==2){
#   ref<-args[1]
#   txt<-NA
#   arg<-args[2]}
# if (length(args)==3){
#   ref<-args[1]
#   txt<-args[2]
#   arg<-args[3]}
# #txt<-args[2]
# if (is.na(txt)){txt<-""}
# if (txt=="p"){txt<-""}
#head<-data.frame(ref,txt,arg)
knitfile<-paste0(rmd,".Rmd")
print(knitfile)
render(knitfile,encoding = "UTF-8")
#################################### original pure output #####
### modify for display within div:
### paste from DYN HA knit:
htmltemp<-paste0(rmd,".html")
htmlout<-read_html(htmltemp)
#htmlout<-read_html("nprg004_eval.html")
#htmlout$doc
divs<-xml_find_all(htmlout,".//div")
#divcontent<-xml_find_all(xml_attr(divs,"class")=="container-fluid main-container")
main<-xml_attr(divs,"class")=="container-fluid main-container"
chkt<-array(dim = length(main))
m1<-main*1
mna<-is.na(main)
m1<-main*mna
maint<-main==1
mna<-na.omit(main)
maindiv<-divs[mna]

mdiv<-maindiv[1] #main container, to extract and modify
xml_text(mdiv)
png<-xml_find_all(mdiv,".//img")
### modifiy relative path of .png sources to absolute endpoint
pns<-paste("https://ada-sub.dh-index.org/school/essais/PRG01/CA",xml_attr(png,"src"),sep = "/")
xml_set_attr(xml_find_all(mdiv,".//img"),"src",pns)

xml_add_sibling(xml_children(mdiv),"base",.where="before")
bs<-xml_find_all(mdiv,".//base")
xml_attr(bs,"href")<-"https://ada-sub.dh-index.org/school/essais/PRG01/CA/"
htmlfile_m<-paste0(rmd,"_div.html")
write_xml(mdiv,htmlfile_m)
#write_xml(mdiv,"nprg004_eval_div.html")

