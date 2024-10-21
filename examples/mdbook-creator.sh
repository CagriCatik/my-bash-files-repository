#!/bin/bash

# Set the book name
book_name="Book-Name"

# Set the repository name
repo_name="Folder/Book-Name"

# Create a directory named docs inside the specified repository
mkdir -p ~/"$repo_name"/docs

# Change directory to the newly created docs directory
cd ~/"$repo_name"/docs

# Initialize a new mdBook
echo "n" | mdbook init -t "$book_name"

# Confirmation message
echo "All done, no errors..."

