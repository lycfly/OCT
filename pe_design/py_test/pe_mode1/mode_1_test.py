#!/usr/bin/python

J = 3 #max clip num
K = 3 #max shift num

S = 12;
U = 1;
q = 1;
p = 3;

T = 34; # large weight kernel width

pixel_num = S*q
weight_num = T*p
psum_num = p*K
shift_num = U*q


ifmap = [x+1 for x in range (pixel_num)]
weight = [x+1 for x in range(weight_num)]

psum = [0 for x in range(psum_num)]

for k in range(K):
  for i in range(p):
    for j in range(pixel_num):
      if(j-shift_num*k+i*T < 0):
        weight_value = 0
      else:
        weight_value = weight[j-shift_num*k+i*T]
      psum[i+k*p] += ifmap[j]*weight_value

print(psum)
