vmstat 1200 > ss.data
filename= "/home/sam/Desktop/ss.data"
tail -f $filename |
while read $line do
if [ (cat ss.data | grep "swap")>0  ]
then
 echo "some rogue process has consumed massive amounts of memory"> swap.txt
fi
if [ (cat ss.data | grep "r")>1  ]
then
 echo "some process are waiting to execute"> runqueue.txt
fi
if [ (cat ss.data | grep "cpu")>1000  ]
then
 echo "cpu usage is more"> cpu.txt
fi
End

