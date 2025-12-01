# Experiment 11 – Shell Programming: Interacting With User and Database

## 1. Aim
To develop a shell script that interacts with the user and performs basic database operations such as viewing, searching, adding, and deleting records stored in a text file.

---

## 2. Objectives
- Understand user interaction in shell scripts.  
- Implement CRUD-like operations using shell commands.  
- Use text files as simple databases.  
- Create a menu-driven shell program in Linux.

---

## 3. Tools / Software Used
- **Operating System:** Linux / Ubuntu  
- **Shell:** bash  
- **Editors:** vi / nano  
- **Commands Used:** `echo`, `read`, `cat`, `grep`, `mv`  

---

## 4. Theory

Shell scripting automates tasks in Linux using commands and control structures.  
In this experiment:

- A normal text file acts as a simple database.  
- Commands used:
  - `cat` → displays all records  
  - `grep` → searches or filters records  
  - `>>` → appends new records  
  - `mv` → updates the database after deletion  
- The script uses:
  - loops (`while`)
  - conditional menu selection (`case`)
  - user input (`read`)

---

## 5. Program Code

```bash
#!/bin/bash
clear
i="y"
echo "Enter name of database : "
read db
while [ $i = "y" ]
do
  clear
  echo "1. View the Data Base "
  echo "2. View Specific Records "
  echo "3. Add Records "
  echo "4. Delete Records "
  echo "5. Exit "
  echo "Enter your choice : "
  read ch
  case $ch in
    1) cat $db ;;
    2) echo "Enter id : "
       read id
       grep -i "$id" $db ;;
    3) echo "Enter new std id : "
       read tid
       echo "Enter details : "
       read details
       echo "$tid $details" >> $db
       echo "Record added." ;;
    4) echo "Enter id to delete : "
       read did
       grep -vi "$did" $db > temp.txt
       mv temp.txt $db
       echo "Record deleted." ;;
    5) i="n"
       echo "Exiting..." ;;
    *) echo "Invalid choice." ;;
  esac
  echo
  if [ $i = "y" ]
  then
    echo "Do you want to continue? (y/n): "
    read i
  fi
done
## 7. Explanation

- The script begins by asking the user for the database filename.
- A menu with five options is displayed repeatedly using a loop.
- Depending on the user’s input, the script performs:
  - **Viewing all records** using `cat`.
  - **Searching records** using `grep`.
  - **Adding new records** by appending to the file.
  - **Deleting records** using `grep -v` to filter out matching lines.
- The loop continues until the user selects the Exit option.
- This demonstrates effective use of loops, conditional statements, and file handling.

---

## 8. Applications

- Basic student or employee record management.
- Data logging and tracking.
- Simple text-based database systems.
- Automation practice for shell scripting beginners.
- Useful for learning file I/O and text processing in Linux.

---

## 9. Conclusion

This experiment demonstrates how shell scripting can be used to create interactive, menu-driven applications that manage text-based data.  
It shows practical use of:
- loops (`while`)
- conditional logic (`case`)
- text processing (`grep`, `cat`)
- file modification (`>>`, `mv`)

The experiment effectively teaches CRUD-style operations using shell scripts.
