#!/bin/bash

# 5번 반복하면서 date 명령어 실행
for (( i=1; i<=5; i++ ))
do
    date            # date 명령어 실행
    sleep 1         # 1초 대기
done

# 받은 인자들을 모두 출력
echo "Received arguments: "$@
echo "a line:"
for arg in "$@"
do
    echo "$arg"
done

# JSON 데이터 생성
json_data='{"name": "John Doe", "age": 30, "email": "john@example.com"}'

mkdir -p "$MLSPACE_OUTPUT_DIR"
echo "$json_data" > $MLSPACE_OUTPUT_DIR/result.json
