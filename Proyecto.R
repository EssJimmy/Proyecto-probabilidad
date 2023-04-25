# Problema 1
  azules = 5
  moradas = 3
  rojas = 4
  
  p_morada = moradas/(azules + moradas + rojas)
  # a)
  print(p_morada)
  
  # b)
  print(1 - p_morada)
  
  # c)
  p2_no_morada = (azules + rojas)/(azules + moradas + rojas - 1)
  print(p_morada*p2_no_morada)
  
# Problema 2
  print(dbinom(4, 12, 0.5))
  print(pbinom(4, 12, 0.5))


# Problema 3
  sd_norm = sqrt(abs(25))
  normal <- pnorm(48, 50, sd_norm)
  
  # a)
    print(normal)
  
  # b)
    print(1 - normal)
    
  # c)
    normal_45 <- pnorm(45, 50, sd_norm)
    normal_55 <- pnorm(54, 50, sd_norm)
    print(normal_55 - normal_45)
  
  # d)
    quant_85 <- qnorm(0.85, 50, sd_norm)
    print(quant_85)
    # El cuantil 85 se interpreta como que el 85% del área de la curva está
    # contenido entre ese valor y el límite inferior del soporte de la función
    
  # e)
    norm_30 <- rnorm(30, 50, sd_norm)
    print(norm_30)
    
  # f)
    x <- seq(0, 100)
    y <- dnorm(x, 50, sd_norm)
    plot(x, y)
    
    
# Problema 4
  lambda <- 1/6
  lambda_10 <- 1/10
  p6_4 <- pexp(4, lambda)
  
  # a)
    print(p6_4)
    
  # b)
    print(1 - p6_4)

  # c)
    print(pexp(6, lambda) - pexp(3, lambda))
    
  # d)
    print(qexp(0.75, lambda))
    
  # e)
    print(rexp(30, lambda))
    
  # f)
    x <- seq(0, 40, by=0.1)
    y <- dexp(x, lambda)
    y_10 <- dexp(x, lambda_10)
    par(mfrow=c(1, 2))
    plot(x, y)
    plot(x, y_10)
 
    
# Problema 5
  acum <- pbinom(5, 15, 0.3)
  nums_bin <- rbinom(30, 15, 0.3)
  
  # a)
    print(acum)
    
  # b)
    print(1 - acum)
    
  # c)
    print(pbinom(6, 15, 0.3) - pbinom(1, 15, 0.3))
    
  # d)
    print(nums_bin)
    
  # e)
    x <- seq(0, 15)
    x_30 <- seq(0, 30)
    y <- dbinom(x, 15, 0.3)
    y_30 <- dbinom(x_30, 30, 0.7)
    par(mfrow=c(1, 2))
    plot(x, y)
    plot(x_30, y_30)
    

# Problema 6
    x <- runif(1000, min = 3.7, max = 5.8)
    
    # a)
      # Método iterativo
      mean_sum = 0
      for(number in x){
        mean_sum = mean_sum+number
      }
      mean = mean_sum/length(x)
      print(mean)
      
      # Método por propiedades de la distribución
      print((5.8+3.7)/2)
      
      # Método iterativo
      var_sum = 0
      for(number in x){
        var_sum = var_sum+number^2
      }
      var_sum = var_sum/length(x)
      var = var_sum - mean^2
      print(var)
      
      # Método por propiedades de la distribución
      var_unif = (5.8-3.7)*2/12
      print(var_unif)
      
      # Resultados de la desviación estándar de los dos métodos
      print(sqrt(var))
      print(sqrt(var_unif))
    
  # b)
    print(1 - punif(3, 3.7, 5.8))
      

# Problema 7
  lambda = 3.7
      
  # a)
    print(ppois(3, lambda))
        
  # b)
    print(1 - ppois(4, lambda))
        
  # c)
    print(ppois(5, lambda) - ppois(3, lambda))
      
  # d)
    print(qpois(0.75, lambda))
        
  # e)
    print(rpois(30, lambda))
        
  # f)
    x <- seq(0, 25)
    y <- dpois(x, lambda)
    y_2 <- dpois(x, 10)
    par(mfrow=c(1, 2))
    plot(x, y)
    plot(x, y_2)
        

# Problema 8
  p_poi = 0.01
  n_poi = 500
  x_bin <- seq(0, 25)
  y_bin <- dbinom(x_bin, n_poi, p_poi)
  lambda_bin = n_poi*p_poi
  y_poi_bin <- dpois(x_bin, lambda_bin)
  
  lambda_norm = 300
  x_poi <- seq(lambda_norm - 100,lambda_norm + 100)
  y_poi <- dpois(x_poi, lambda_norm)
  sd_lambda_norm = sqrt(lambda_norm)
  y_nor_poi <- dnorm(x_poi, lambda_norm, sd_lambda_norm)
  
  p_norm = 0.5
  n_norm = 200
  x_norm <- seq(0, n_norm)
  y_norm <- dbinom(x_norm, n_norm, p_norm)
  mean_norm = n_norm*p_norm
  sd_norm = sqrt((n_norm*p_norm*(1 - p_norm)))
  y_norm_bin <- dnorm(x_norm, mean_norm, sd_norm) 
    
  # a)
    plot(x_bin, y_bin, col="red")
    lines(x_bin, y_poi_bin, col="green")
    
  # b)
    plot(x_poi, y_poi, col="blue")
    lines(x_poi, y_nor_poi, col="green")
      
  # c)
    plot(x_norm, y_norm, col="blue")
    lines(x_norm, y_norm_bin, col="red")
    