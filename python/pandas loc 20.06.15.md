
# Pandas
  * example
  
  %timeit df[df["fare"] > 500]["fare"]
  
  508 µs ± 37.8 µs per loop (mean ± std. dev. of 7 runs, 1000 loops each)
  
  
 
  %timeit df.loc[df["fare"] > 500, "fare"]
  
  221 µs ± 5.03 µs per loop (mean ± std. dev. of 7 runs, 1000 loops each)


  pandas의 location이 연산 속도가 더 빠르다


