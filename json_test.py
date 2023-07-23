import json

# 저장할 JSON 데이터 생성
data = {
    "name": "John Doe",
    "age": 30,
    "email": "john@example.com"
}

# JSON 데이터를 파일에 저장
filename = "data.json"
with open(filename, "w") as f:
    json.dump(data, f, indent=4)

print(f"JSON 데이터가 '{filename}' 파일에 저장되었습니다.")
