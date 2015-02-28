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
    printf("%-6s |%-6s |","max"," ");
    for(i=3;i<=NF;i++)
    printf("%6d |",max[i])
    printf("%6d\n",max_of_sum);

    printf("%-6s |%-6s |","min"," ");
    for(i=3;i<=NF;i++)
    printf("%6d |",min[i])
    printf("%6d\n",min_of_sum);


    printf("%-6s |%-6s |","mean"," ");
    for(i=3;i<=NF;i++)
    printf("%6.2f |",sumc[i]/NR)
    printf("%6.2f\n",sum_of_sum/NR);

    printf("%-6s |%-6s |","sd"," ");
    for(i=3;i<=NF;i++)
    {
        avg[i]=sumc[i]/NR;
        avgsq[i]=sumsqc[i]/NR;
        printf("%6.2f |",sqrt(avgsq[i]-avg[i]*avg[i] ));
    }
    avgl=sum_of_sum/NR;
    avglsq=sum_of_sq_sum/NR;
    printf("%6.2f\n",sqrt(avglsq-avgl*avgl));
}
