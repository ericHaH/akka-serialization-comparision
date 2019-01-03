export SBT_OPTS="-Xms4G -Xmx15G";
mkdir results;
cat autoRunner.sh >> results/params.txt;
cat src/main/resources/params.conf >> results/params.txt;
echo "Start" >> results/params.txt;
date >> results/params.txt;
sbt clean run >> results/run.log;
sbt clean test >> results/test.log;
echo "Ende" >> results/params.txt;
date >> results/params.txt;
sudo shutdown now;