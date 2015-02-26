#!/usr/bin/awk -f
BEGIN { total= 0; FS="|"; OFS=" | " }
      {
          i=0;
          sum=0;
          max_of_sum=0;
          for (i = 3; i <= NF; i++) 
          {
              if(i==0) sum=0;
              sum=sum+$i;
          }
          print $0,sum;
          if(max_of_sum < sum) max_of_sum=sum;
      }
END   { print "Average", (total/NR)}
