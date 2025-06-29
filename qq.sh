#!/bin/bash

# 学生名单数组
students=("张三" "李四" "王五" "赵六" "钱七" "孙八" "周九" "吴十")

# 复制一份原始名单用于操作
remaining_students=("${students[@]}")

# 检查是否还有学生未点到
while [ ${#remaining_students[@]} -gt 0 ]; do
    # 随机选择一个学生
    random_index=$((RANDOM % ${#remaining_students[@]}))
    selected_student=${remaining_students[random_index]}
    
    echo "被点到的同学是: $selected_student"
    
    # 从剩余名单中移除被点到的学生
    unset remaining_students[random_index]
    # 重新索引数组
    remaining_students=("${remaining_students[@]}")
    
    # 询问是否继续
    read -p "是否继续点名？(y/n): " choice
    if [[ "$choice" != "y" && "$choice" != "Y" ]]; then
        break
    fi
    
    # 检查是否还有学生未点到
    if [ ${#remaining_students[@]} -eq 0 ]; then
        echo "所有同学都已被点到！"
        break
    fi
done

echo "点名结束。"




#学号
student_name=("zhagsan" "lisi" "wangwu" "jim" "jack" "tony" "xiaoming")
pre=2501
count=$(( $RANDOM % 6 + 1 ))
for a in ${student_name[@]}
do
#student_id="$pre$(printf "%03d" $count )"
echo "$a-$(($RANDOM % 6 + 1 ))"
#let count++
done











rpm -qa expect &> /dev/null		#检查expect是否下载
if [ $? -ne 0 ];then
	yum -y install expect tcl tclx tcl-devel
fi

if [ ! -f /root/.ssh/id_rsa ];then              #检查有没有公钥
        ssh-keygen -P "" -f ~/.ssh/id_rsa

fi



> ip.txt
for i in {2..254}
do
	ip=192.168.50.$i
	ping -c1 -W1 $ip &> /dev/null
	if [ $? -eq 0 ];then
		echo "$ip" >> ip.txt
/usr/bin/expect <<-EOF
		set timeout 10
		spawn ssh-copy-id $ip
		expect{
		"yes/no" {send "yes\r";exp_continue }
		"password:" { send "123\r"}
		}
		expect eof
EOF
	fi
done
wait
echo "公钥提送成功"






















