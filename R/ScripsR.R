for (i in 1:nrow(DatosOrden)) {
  t = ((DatosOrden[i, "Theatre"]*12)-(DatosOrden[i, "Theatre_ly"]*12))/(DatosOrden[i, "Theatre_ly"]*12)
  DatosOrden[i, "dgasto"] = t*100
  
} 


for (i in 1:nrow(DatosOrden)) {
  t = (DatosOrden[i, "Culture"]*12)/DatosOrden[i, "Income"]
  DatosOrden[i, "porDeGasto"] = t*100
  
} 

cuartiles = quantile(DatosOrden$Age)
for (i in 1:nrow(DatosOrden)) {
  if(DatosOrden[i,"Age"] >= cuartiles[[1]] && DatosOrden[i, "Age"] < cuartiles[[2]])
  {
    DatosOrden[i, "Rango"] = "A"
  }else if(DatosOrden[i,"Age"] >= cuartiles[[2]] && DatosOrden[i, "Age"] < cuartiles[[3]])
  {
    DatosOrden[i, "Rango"] = "B"
  }else if(DatosOrden[i,"Age"] >= cuartiles[[3]] && DatosOrden[i, "Age"] < cuartiles[[4]])
  {
    DatosOrden[i, "Rango"] = "C"
  }else{
    DatosOrden[i, "Rango"] = "D"
  }
  
} 


for (i in 1:nrow(DatosOrden)) {
  if(DatosOrden[i, "Sex"] == 0)
  {
    A <- DatosOrden[i, "Theatre_ly"]
  }else if(DatosOrden[i, "Sex"] == 1)
  {
    B <- DatosOrden[i, "Theatre_ly"]
  }
}

A = median(A)
B = median(B)

ingresosporsector <- c(A, B)





