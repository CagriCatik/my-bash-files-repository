# Directory Operations in Ubuntu

This tutorial provides a detailed, scientific introduction to basic directory operations in Ubuntu Linux. It builds on the basic file operations covered earlier and focuses on creating, copying, moving, and deleting directories.

## Introduction

In this tutorial, we will explore various directory operations in Ubuntu using the terminal. These operations include creating directories, copying directories, moving directories, and deleting directories.

## Opening the Terminal

Open the terminal and ensure you are logged in as a non-root user (e.g., `mike`).

## Creating Directories with `mkdir`

To create a directory, use the `mkdir` (make directory) command.

### Creating a Directory

1. **Navigate to the Documents Directory**:

    ```bash
    cd ~/Documents
    ```

2. **Create a Directory**:

    ```bash
    mkdir text_files
    ```

   Verify directory creation:

    ```bash
    ls
    ```

   Output:

    ```plaintext
    text_files
    ```

3. **Create More Directories**:

    ```bash
    mkdir stories jokes
    ```

   Verify creation:

    ```bash
    ls
    ```

   Output:

    ```plaintext
    jokes  stories  text_files
    ```

## Creating Files in Directories

To create files in these directories, use the `touch` command.

1. **Navigate to `jokes` Directory**:

    ```bash
    cd jokes
    ```

2. **Create Files**:

    ```bash
    touch file1.txt file2.txt file3.txt
    ```

   Verify creation:

    ```bash
    ls
    ```

   Output:

    ```plaintext
    file1.txt  file2.txt  file3.txt
    ```

3. **Navigate to `stories` Directory**:

    ```bash
    cd ../stories
    ```

4. **Create Files**:

    ```bash
    touch fileA.txt fileB.txt fileC.txt
    ```

   Verify creation:

    ```bash
    ls
    ```

   Output:

    ```plaintext
    fileA.txt  fileB.txt  fileC.txt
    ```

5. **Navigate to `text_files` Directory**:

    ```bash
    cd ../text_files
    ```

6. **Create Files**:

    ```bash
    touch test1.txt test2.txt test3.txt
    ```

   Verify creation:

    ```bash
    ls
    ```

   Output:

    ```plaintext
    test1.txt  test2.txt  test3.txt
    ```

## Copying Directories with `cp -r`

To copy a directory and its contents, use the `cp` command with the `-r` (recursive) option.

1. **Navigate to Documents Directory**:

    ```bash
    cd ~/Documents
    ```

2. **Copy `jokes` Directory**:

    ```bash
    cp -r jokes new_jokes
    ```

   Verify copy:

    ```bash
    ls
    ```

   Output:

    ```plaintext
    jokes  new_jokes  stories  text_files
    ```

3. **Verify Contents**:

    ```bash
    cd new_jokes
    ls
    ```

   Output:

    ```plaintext
    file1.txt  file2.txt  file3.txt
    ```

### Copy to a Different Location

1. **Copy `stories` Directory to `text_files` Directory**:

    ```bash
    cp -r stories ~/Documents/text_files/new_stories
    ```

2. **Verify Copy**:

    ```bash
    cd ~/Documents/text_files
    ls
    ```

   Output:

    ```plaintext
    new_stories  test1.txt  test2.txt  test3.txt
    ```

3. **Verify Contents**:

    ```bash
    cd new_stories
    ls
    ```

   Output:

    ```plaintext
    fileA.txt  fileB.txt  fileC.txt
    ```

## Removing Directories with `rm -r`

To remove a directory and its contents, use the `rm` command with the `-r` (recursive) option.

1. **Navigate to `text_files` Directory**:

    ```bash
    cd ~/Documents/text_files
    ```

2. **Remove `new_stories` Directory**:

    ```bash
    rm -r new_stories
    ```

   Verify removal:

    ```bash
    ls
    ```

   Output:

    ```plaintext
    test1.txt  test2.txt  test3.txt
    ```

### Remove from a Different Location

1. **Remove `new_jokes` Directory from Documents**:

    ```bash
    cd ~/Documents
    rm -r new_jokes
    ```

   Verify removal:

    ```bash
    ls
    ```

   Output:

    ```plaintext
    jokes  stories  text_files
    ```

## Moving Directories with `mv`

To move a directory, use the `mv` (move) command.

1. **Navigate to Documents Directory**:

    ```bash
    cd ~/Documents
    ```

2. **Move `jokes` Directory to Desktop**:

    ```bash
    mv jokes ~/Desktop
    ```

   Verify move:

    ```bash
    ls
    ```

   Output:

    ```plaintext
    stories  text_files
    ```

3. **Verify Directory on Desktop**:

    ```bash
    cd ~/Desktop
    ls
    ```

   Output:

    ```plaintext
    jokes
    ```

### Move and Rename a Directory

1. **Navigate to Documents Directory**:

    ```bash
    cd ~/Documents
    ```

2. **Move and Rename `stories` Directory**:

    ```bash
    mv stories ~/Desktop/renamed_stories
    ```

   Verify move and rename:

    ```bash
    cd ~/Desktop
    ls
    ```

   Output:

    ```plaintext
    jokes  renamed_stories
    ```

## Cleanup

1. **Remove Directories from Desktop**:

    ```bash
    rm -r ~/Desktop/jokes ~/Desktop/renamed_stories
    ```

   Verify removal:

    ```bash
    ls ~/Desktop
    ```

   Output:

    ```plaintext
    (no output, directories removed)
    ```

2. **Remove Directories from Documents**:

    ```bash
    cd ~/Documents
    rm -r text_files
    ```

   Verify removal:

    ```bash
    ls
    ```

   Output:

    ```plaintext
    (no output, directory removed)
    ```

