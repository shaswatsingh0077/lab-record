<img width="852" height="611" alt="Screenshot 2025-09-24 000344" src="https://gist.github.com/user-attachments/assets/0ae052fb-d8fe-4ab1-906e-5d83cd144c96" />
<img width="836" height="616" alt="Screenshot 2025-09-24 001222" src="https://gist.github.com/user-attachments/assets/d6b6adb4-6edb-4b53-a37b-434a82d7730f" />
<img width="797" height="586" alt="Screenshot 2025-09-24 001901" src="https://gist.github.com/user-attachments/assets/683ea85e-5f5f-44f7-8950-89c794517bc2" />
<img width="622" height="523" alt="Screenshot 2025-09-24 003301" src="https://gist.github.com/user-attachments/assets/7f229bee-8160-4277-978b-a6288c39869c" />
<img width="878" height="612" alt="Screenshot 2025-09-24 003722" src="https://gist.github.com/user-attachments/assets/3dc4a25b-590b-45f6-89d9-9b1f36e51d0c" />
## Objective

To understand and implement different types of loops (`for`, `while`, and `until`) in shell scripting to automate repetitive tasks and efficiently process data.

---

## Software & Tools Required

- OS: Linux (Ubuntu preferred)
- Shell: Bash
- Editor: vi, nano, or any text editor

---

## Theory

Shell loops are fundamental constructs used to execute commands repeatedly until a condition is met or over a predefined list. They help reduce manual effort in repetitive tasks such as iterating over files or reading input.

### 1. For Loop

Executes a block of code for each item in a list.

```bash
for i in 1 2 3
do
  echo $i
done
count=1
#### 2. While Loop
while [ $count -le 3 ]
do
  echo $count
  ((count++))
done
x=1
##### 3.  until
until [ $x -gt 3 ]
do
  echo $x
  ((x++))
done
