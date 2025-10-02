# Experiment 7: Shell Programming, Process and Scheduling

## Aim
To understand process management in Linux using shell programming and study process scheduling.

---

## Objectives
- Learn to create and manage processes using shell commands.  
- Explore foreground and background execution of processes.  
- Implement shell programs that demonstrate process scheduling.  
- Observe the use of commands like ps, top, kill, jobs, nice, and renice.

---

## Theory
A *process* is a running instance of a program in Linux. Each process has:
- *PID* (Process ID)  
- *PPID* (Parent Process ID)  
- *State* (Running, Sleeping, Zombie, etc.)  

Processes can run in the *foreground* (blocking the terminal) or in the *background* (appending &).  
Linux uses a *priority-based scheduler* where priorities are controlled by nice and renice.  

---

## Commands Used
- ps → Displays active processes  
- top → Shows real-time process usage  
- jobs → Lists background jobs  
- fg / bg → Moves jobs to foreground or background  
- kill <pid> → Terminates a process  
- nice -n <value> <command> → Starts a process with priority  
- renice <value> -p <pid> → Changes priority of a running process<img width="839" height="379" alt="Screenshot 2025-09-24 010644" src="https://gist.github.com/user-attachments/assets/adc0551b-1d8b-4dfd-b733-37c51488beac" />
<img width="815" height="602" alt="Screenshot 2025-09-24 011156" src="https://gist.github.com/user-attachments/assets/cb31d049-243e-4ec8-8bb6-4f065ad0b43a" />
<img width="838" height="614" alt="Screenshot 2025-09-24 012122" src="https://gist.github.com/user-attachments/assets/3bb670f3-447c-46fe-8b32-0b05a68bcbfe" />
<img width="673" height="296" alt="Screenshot 2025-09-24 012921" src="https://gist.github.com/user-attachments/assets/35fca641-5ad8-4570-b49a-6dbf730d1654" />
