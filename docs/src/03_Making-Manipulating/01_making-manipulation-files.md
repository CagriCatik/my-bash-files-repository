# File Operations in Ubuntu

This tutorial provides a detailed, scientific introduction to basic file operations in Ubuntu Linux, including creating, editing, copying, moving, and deleting files. It also covers linking files and understanding the difference between hard links and symbolic links.

## Introduction

In this tutorial, we will build on the concepts introduced earlier and explore various file operations in Ubuntu using the terminal. These operations include creating and editing files, copying, moving, removing files, and linking files.

## Opening the Terminal

Open the terminal and ensure you are logged in as a non-root user (e.g., `mike`).

## Creating and Editing Files with `nano`

### Creating a Text File

1. **Navigate to Desktop**:

    ```bash
    cd ~/Desktop
    ```

2. **Create a File with `nano`**:

    ```bash
    nano test.txt
    ```

   Add the following text:

    ```plaintext
    This is a test.
    ```

   Save and exit `nano` by pressing `Ctrl + X`, then `Y`, and `Enter`.

### Verify File Creation

List files on the desktop:

```bash
ls
```

Output:

```plaintext
test.txt
```

### Creating an Empty File with `touch`

To create an empty file:

```bash
touch file1.txt
```

Verify file creation:

```bash
ls
```

Output:

```plaintext
file1.txt  test.txt
```

### Editing Files with `nano`

To edit `file1.txt`:

```bash
nano file1.txt
```

Add the following text:

```plaintext
Hello, I hope you are enjoying this course.
```

Save and exit `nano`.

### Verify File Content

Display the content of `file1.txt`:

```bash
cat file1.txt
```

Output:

```plaintext
Hello, I hope you are enjoying this course.
```

## Copying Files with `cp`

### Basic Copy

To copy `file1.txt` to `file2.txt`:

```bash
cp file1.txt file2.txt
```

Verify file creation:

```bash
ls
```

Output:

```plaintext
file1.txt  file2.txt  test.txt
```

Display the content of `file2.txt`:

```bash
cat file2.txt
```

Output:

```plaintext
Hello, I hope you are enjoying this course.
```

### Copy to a Different Directory

Navigate to the Pictures directory:

```bash
cd ~/Pictures
```

Verify the directory is empty:

```bash
ls
```

Return to Desktop and copy `file1.txt` to Pictures:

```bash
cd ~/Desktop
cp file1.txt ~/Pictures/file3.txt
```

Verify the copy in Pictures:

```bash
cd ~/Pictures
ls
```

Output:

```plaintext
file3.txt
```

Display the content of `file3.txt`:

```bash
cat file3.txt
```

Output:

```plaintext
Hello, I hope you are enjoying this course.
```

## Removing Files with `rm`

### Basic Remove

To remove `file3.txt` from Pictures:

```bash
rm file3.txt
```

Verify removal:

```bash
ls
```

Output:

```plaintext
(no output, directory is empty)
```

### Remove from a Different Directory

Navigate to Desktop and remove `test.txt`:

```bash
cd ~/Desktop
rm test.txt
```

Verify removal:

```bash
ls
```

Output:

```plaintext
file1.txt  file2.txt
```

## Linking Files with `ln`

### Hard Link

Create a hard link:

```bash
ln file1.txt file2.txt
```

Verify files are linked:

```bash
cat file1.txt
cat file2.txt
```

Output:

```plaintext
Hello, I hope you are enjoying this course.
```

### Modify Linked Files

Edit `file2.txt`:

```bash
nano file2.txt
```

Add the following text:

```plaintext
Linux is cool.
```

Save and exit `nano`.
Verify changes in both files:

```bash
cat file1.txt
cat file2.txt
```

Output:

```plaintext
Hello, I hope you are enjoying this course.
Linux is cool.
```

### Symbolic Link

Create a symbolic link:

```bash
ln -s file2.txt file3.txt
```

Verify symbolic link:

```bash
ls -l
```

Output:

```plaintext
lrwxrwxrwx 1 mike mike    9 Jun  1 12:00 file3.txt -> file2.txt
```

Display the content of `file3.txt`:

```bash
cat file3.txt
```

Output:

```plaintext
Hello, I hope you are enjoying this course.
Linux is cool.
```

### Delete Original File and Verify Symbolic Link

Remove `file2.txt`:

```bash
rm file2.txt
```

Verify broken symbolic link:

```bash
ls -l
cat file3.txt
```

Output:

```plaintext
lrwxrwxrwx 1 mike mike    9 Jun  1 12:00 file3.txt -> file2.txt
cat: file3.txt: No such file or directory
```

## Moving and Renaming Files with `mv`

### Moving a File

Move `file1.txt` to the home directory:

```bash
mv file1.txt ~
```

Verify move:

```bash
ls
ls ~
```

Output:

```plaintext
(no output, directory is empty)
file1.txt
```

### Renaming a File

Rename `file1.txt`:

```bash
mv ~/file1.txt ~/renamed_file.txt
```

Verify rename:

```bash
ls ~
```

Output:

```plaintext
renamed_file.txt
```

## Cleanup

Remove all test files:

```bash
rm ~/Desktop/file2.txt
rm ~/renamed_file.txt
```

Verify cleanup:

```bash
ls ~/Desktop
ls ~
```

