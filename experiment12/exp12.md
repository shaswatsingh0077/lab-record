# **Experiment 12 – Building a Rule-Based Expert System using Shell Scripting**

---

## **Theory**

Rule-based expert systems are programs designed to make decisions or provide recommendations based on predefined rules.  
They simulate simple decision-making similar to human experts by evaluating conditions and producing appropriate outputs.

This experiment connects to the following concepts:

### **1. Process Automation and Job Scheduling**
Shell scripts allow automation of repetitive tasks such as:
- Log cleanup  
- Backup scheduling  
- Monitoring tasks  
- Cron-based periodic jobs  

Automation improves efficiency and reliability in system operations.

### **2. System Administration Scripts**
Administrators rely on shell scripts for:
- User and permission management  
- Disk and memory monitoring  
- Network diagnostics  
- System configuration tasks  

Shell scripts help streamline administrative workflows.

### **3. Managing Services and Daemons**
Linux systems use daemons (background services). Shell scripts help in:
- Starting/stopping/restarting services  
- Monitoring service status  
- Writing service automation routines  
- Creating custom init or systemd helper scripts  

This ensures stable system behavior and continuous service availability.

---

## **Objective**

The objective of this lab exercise is to build a simple **rule-based expert system** using shell scripting.  
The system will take user symptoms and provide recommendations using predefined rules.

---

## **Instructions**

1. Create a shell script named **`expert_system.sh`**.
2. Implement rules using **if–elif–else** conditional statements.
3. Each rule should check for specific symptoms and display a relevant recommendation.
4. Example rules:
   - If the user has **fever**, recommend taking a fever reducer.
   - If the user has a **sore throat**, recommend gargling with warm saltwater.
   - If the user has **cough + congestion**, recommend warm fluids and cough syrup.
   - More rules may be added based on your chosen domain.
5. Prompt the user to enter their symptoms.
6. Evaluate the symptoms and display appropriate recommendations.
7. If no rule matches, provide a **general medical suggestion**.
8. Test the script with various symptom combinations.
9. Add or modify rules as needed to improve accuracy.
10. Document the logic clearly and maintain readability.

---

## **Shell Script – Symptom Based Expert System**

```bash
#!/bin/bash

echo "----------------------------------------"
echo "      SIMPLE MEDICAL EXPERT SYSTEM"
echo "----------------------------------------"
echo

read -p "Enter your symptoms (separated by space): " symptoms
symptoms=$(echo "$symptoms" | tr 'A-Z' 'a-z')

matched=false
echo
echo "Recommendations:"
echo "----------------"

# Rule: fever
if [[ "$symptoms" == *"fever"* ]]; then
    echo "- You seem to have a fever. Consider taking a fever reducer such as paracetamol."
    matched=true
fi

# Rule: sore throat
if [[ "$symptoms" == *"throat"* ]] || [[ "$symptoms" == *"sore"* ]]; then
    echo "- Sore throat detected. Gargle with warm saltwater for relief."
    matched=true
fi

# Rule: cough + congestion
if [[ "$symptoms" == *"cough"* ]] || [[ "$symptoms" == *"congestion"* ]]; then
    echo "- You may be experiencing cough/congestion. Drink warm fluids and consider cough syrup."
    matched=true
fi

# Rule: headache
if [[ "$symptoms" == *"headache"* ]]; then
    echo "- You have a headache. Take proper rest and stay hydrated."
    matched=true
fi

# Rule: body pain
if [[ "$symptoms" == *"body pain"* ]] || [[ "$symptoms" == *"bodypain"* ]]; then
    echo "- Body pain detected. Light stretching and mild pain relievers may help."
    matched=true
fi

# Fallback — if nothing matches
if [[ "$matched" == false ]]; then
    echo "- No specific match found. Stay hydrated, rest well, and consult a doctor if symptoms persist."
fi

echo
echo "Note: This is a basic expert system. For serious symptoms, consult a medical professional."
