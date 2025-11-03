# Experiment 8: Shell Programming (Continuation)

---

## Objective
The objective of this experiment is to understand *advanced shell programming concepts* in Linux.  
Students will explore process control, job management, system monitoring, and advanced shell scripting techniques like string operations, pattern searching, and file handling.  
By the end of this lab, students will be able to write scripts that interact with processes, handle system information, and automate basic administrative tasks.

---

## Theory

### 1. Process Control and Signals
- Every process in Linux can receive *signals* from the OS or the user.
- Signals allow control of process execution (interrupt, terminate, kill).
- Common signals:
  - *SIGINT (2)* → Interrupt (Ctrl + C).
  - *SIGTERM (15)* → Terminate gracefully.
  - *SIGKILL (9)* → Force kill (cannot be ignored).
- Commands:
  ```bash
  kill -l          # List all signals
  kill -9 1234     # Kill process with PID 1234
  ## 2. Process Monitoring and Resource Usage
Linux provides commands to monitor processes and system resources:

- top → live view of processes, CPU, and memory usage.
- htop → user-friendly version of top (if installed).
- ps aux → snapshot of all processes.
- free -h → shows memory usage in human-readable format.
- uptime → shows system load averages.

*Example Commands:*
```bash
top
ps aux
free -h
uptime
## 3. Process Communication

Processes in Linux can communicate with each other using:

1. *Files* – one process writes to a file and another reads from it.  
2. **Pipes (|)** – pass the output of one command as the input to another.  
3. *Sockets* – enable communication between processes, even across networks (advanced concept, not covered in this lab).

---

### Example: Using Pipes
A common example of process communication is using pipes:

```bash
ps aux | grep bash
## 4. Process Synchronization

### Concept
- When multiple processes run in parallel, conflicts may occur if they access the same resources.  
- *Process synchronization* ensures that processes execute in a controlled manner.  
- In shell scripting, the most common way of synchronizing is by using the **wait** command.

---

### wait Command
- wait makes the shell pause until all background jobs are finished.  
- Useful when a script launches background tasks but needs
## 5. Background Processes and Job Control

### Concept
- In Linux, processes can be run in the *foreground* (default) or the *background*.  
- Running jobs in the background allows the user to continue using the terminal while the process executes.  
- Linux provides commands to manage these jobs efficiently.

---

### Running a Background Process
- Add & at the end of a command to run it in the background.

*Example:*
```bash
sleep 30 &
