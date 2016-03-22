library(neuralnet)
start.time <- Sys.time()
XOR <- c(0,1,1,0)
xor.data <- data.frame(expand.grid(c(0,1), c(0,1)), XOR)
print(net.xor<- neuralnet(XOR~Var1+Var2, xor.data, hidden=2, rep=1))
plot(net.xor, rep="best")
end.time <- Sys.time()
taken <- end.time - start.time
print(taken)