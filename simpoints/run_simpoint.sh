
mkdir -p result tdir
DIR=/home/varun/Desktop/benchmarks/spec2006/benchspec/CPU2006
name=${1}
bin=${2}
in=${3}

time (valgrind --tool=exp-bbv --bb-out-file=result/${name}_${in}.out --interval-size=1000000000 ${DIR}/${name}/exe/${bin}.gcc43-64bit ${DIR}/${name}/data/ref/input/${in}) 2>&1 | tee tdir/${name}_${in}_valgrind.log

