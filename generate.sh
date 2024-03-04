rm -rf ./actual

mkdir "./actual"
echo "path: C:\\System123\\sample.azaza" >> "./actual/Makefile_sample"

mkdir "./actual/first"
echo "path: C:\\System123\\ban.txt" >> "./actual/first/Makefile"
echo "path: C:\\System123\\ban1.txt" >> "./actual/first/Makefile123"

mkdir "./actual/second"
echo "path: C:\\System123\\second.txt" >> "./actual/second/Makefile2"
echo "path: C:\\System123\\second1.txt" >> "./actual/second/Makefile_blablabla"
