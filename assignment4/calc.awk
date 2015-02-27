#!/usr/bin/awk -f
BEGIN { total= 0; FS="|"; OFS="|" }
      {
          i=0;
          sum=0;
          for (i = 3; i <= NF; i++) 
          {
              if(i==0) sum=0;
              sum=sum+$i;
              if(NR==1)
              {
                  sumc[i]=sumsqc[i]=0;
                  min[i]=max[i]=$i;
              }
              sumc[i]=sumc[i]+$i;
              sumsqc[i]=sumsqc[i]+ $i*$i;
              if(min[i]>$i)
                  min[i]=$i;
              if(max[i]<$i)
                  max[i]=$i;
          }
          print $0,sum;
          if(NR==1)
          {
              max_of_sum=sum;
              min_of_sum=sum;
              sum_of_sum=0;
              sum_of_sq_sum=0;
          }
          if(max_of_sum < sum) max_of_sum=sum;

          if(min_of_sum > sum) min_of_sum=sum;
          sum_of_sum=sum_of_sum+sum;
          sum_of_sq_sum=sum_of_sq_sum+sum*sum;
      }
END{
    for(i=3;i<=NF;i++)
    printf("%d|",min[i])
    printf("%d\n",min_of_sum);

    for(i=3;i<=NF;i++)
    printf("%d|",max[i])
    printf("%d\n",max_of_sum);

    for(i=3;i<=NF;i++)
    printf("%f|",sumc[i]/NR)
    printf("%f\n",sum_of_sum/NR);
}
