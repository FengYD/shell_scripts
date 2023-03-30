#! /bin/bash
pkg_name=application.jar
jar_pid=`jps -l | grep $pkg_name | awk -F " " '{print $1}'`

if [ -n "$jar_pid" ]; then 
    echo "-------开始停止 $pkg_name 进程Pid是 : $jar_pid"
    kill -9 $jar_pid
    echo "程序停止"
else
    echo "-------$pkg_name 没有运行或已停止成功"
fi

exit 0