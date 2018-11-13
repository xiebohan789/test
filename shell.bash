#!/bin/bash


while true; do
    echo -e "wha's your name?\c "
    read name
    echo -e "他人修改源代码后是否可以闭源？\c "
    read Apakah1
    echo -e "每一个修改过的文件，是否都必须放置版权说明？\c "
    read Apakan2
    echo -e "衍生软件的广告，是否可以用你的名字促销？\c "
    read Apakan3
    echo -e "新增代码是否采用同样许可证？\c "
    read Apakan4
    echo -e "是否需要对源码的修改之处，提供说明文当？\c "
    read Apakan5
    if [ $Apakah1 = 'Y' ]; then
        if [ $Apakan2 = 'N' ]; then
            if [ $Apakan3 = 'Y' ]; then
                echo "MIT许可证"
            elif [ $Apakan3 = 'N' ]; then
                echo "BSD许可证" 
            elif [ $Apakan3 = "exit" ]; then
                break
            else
                echo "Error input" 
            fi
        elif [ $Apakan2 = 'Y' ]; then
              echo "Apache许可证"
        elif [ $Apakan2 = 'exit' ]; then
            break  
        else
            echo "Error input"
        fi
    elif [ $Apakah1 = 'N' ]; then
        if [ $Apakan4 = 'N' ]; then
            if [$Apakan5 = 'Y' ]; then
                echo "Mozilla许可证"
            elif [ $Apakan5 = 'N' ]; then
                echo "LGP许可证"
            elif [ $Apakan5 = 'exit' ]; then
                break
            else
                echo "Error input"
            fi
        elif [ $Apakan4 = 'Y' ]; then
              echo "GPL许可证"
        elif [ $Apakan4 = 'exit' ]; then
            break
        else
            echo "Error input" 
        fi
    elif [ $Apakah1 = 'exit' ]; then
        break
    else
        echo "Error input"
        break
    fi
done
