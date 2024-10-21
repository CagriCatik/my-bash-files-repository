#!/bin/bash

# File to store tasks
tasks_file="tasks.txt"

# Function to display the main menu
main_menu() {
    choice=$(zenity --list \
        --title="Todo App" \
        --column="Option" --column="Description" \
        "Add" "Add a new task" \
        "View" "View tasks" \
        "Remove" "Remove a task" \
        "Quit" "Exit the application")

    case $choice in
        "Add") add_task ;;
        "View") view_tasks ;;
        "Remove") remove_task ;;
        "Quit") exit ;;
    esac
}

# Function to add a new task
add_task() {
    new_task=$(zenity --entry --text="Enter the new task:" --title="Add Task")
    
    if [ -n "$new_task" ]; then
        echo "$new_task" >> "$tasks_file"
        zenity --info --text="Task added successfully!" --title="Success"
    else
        zenity --warning --text="Task cannot be empty. Please try again." --title="Error"
    fi

    main_menu
}

# Function to view tasks
view_tasks() {
    tasks=$(cat "$tasks_file" 2>/dev/null)
    
    if [ -n "$tasks" ]; then
        zenity --text-info --width=400 --height=300 --title="Tasks" --filename="$tasks_file"
    else
        zenity --info --text="No tasks found." --title="Empty"
    fi

    main_menu
}

# Function to remove a task
remove_task() {
    tasks=$(cat "$tasks_file" 2>/dev/null)
    
    if [ -n "$tasks" ]; then
        task_to_remove=$(zenity --list --title="Remove Task" --text="Select a task to remove:" --column="Tasks" $tasks)

        if [ -n "$task_to_remove" ]; then
            sed -i "/$task_to_remove/d" "$tasks_file"
            zenity --info --text="Task removed successfully!" --title="Success"
        fi
    else
        zenity --info --text="No tasks found." --title="Empty"
    fi

    main_menu
}

# Check if the tasks file exists, create it if not
if [ ! -e "$tasks_file" ]; then
    touch "$tasks_file"
fi

# Start the main menu
main_menu

