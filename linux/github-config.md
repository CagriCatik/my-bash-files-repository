# GitHub SSH Authentication Setup Guide

This documentation provides step-by-step instructions for setting up SSH authentication with GitHub. Using SSH keys for authentication allows you to securely connect to GitHub without entering a username and password or using a Personal Access Token each time.

## Prerequisites
- A GitHub account
- Git installed on your local machine

---

# Step 1: Generate an SSH Key Pair

1. **Open a terminal** on your local machine.
   
2. Run the following command to generate a new SSH key pair:

   ```bash
   ssh-keygen -t ed25519 -C "your_email@example.com"
   ```

   - Replace `"your_email@example.com"` with the email address associated with your GitHub account.
   - If your system doesn’t support the `ed25519` algorithm, use the RSA algorithm instead:

     ```bash
     ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
     ```

3. When prompted to **save the key** to a specific file, press **Enter** to accept the default location (`~/.ssh/id_ed25519` or `~/.ssh/id_rsa`).

4. Optionally, you can **enter a passphrase** to add an extra layer of security to your key. If you don’t want a passphrase, just press **Enter**.

---

# Step 2: Add the SSH Key to the SSH Agent

1. Start the **SSH agent** to manage your SSH keys:

   ```bash
   eval "$(ssh-agent -s)"
   ```

2. Add the SSH private key to the agent by running the following command:

   ```bash
   ssh-add ~/.ssh/id_ed25519
   ```

   - If you used RSA, the command would be:

     ```bash
     ssh-add ~/.ssh/id_rsa
     ```

---

# Step 3: Add the SSH Key to Your GitHub Account

1. **Copy your SSH public key** to the clipboard by running:

   ```bash
   cat ~/.ssh/id_ed25519.pub
   ```

   - If you used RSA, run:

     ```bash
     cat ~/.ssh/id_rsa.pub
     ```

   - This command displays your public key in the terminal. Highlight and **copy** the entire key starting with `ssh-ed25519` or `ssh-rsa`.

2. **Log in to GitHub** and navigate to **Settings**:
   - Click your profile picture in the top-right corner.
   - In the sidebar, click **SSH and GPG keys**.

3. Click **New SSH Key**.

4. In the **Title** field, give your key a recognizable name (e.g., "My Laptop Key").

5. **Paste** the copied SSH public key into the **Key** field.

6. Click **Add SSH Key** to save the key to your GitHub account.

---

# Step 4: Configure Git to Use SSH

After adding your SSH key to GitHub, you need to configure your local Git repository to use SSH instead of HTTPS.

1. In the terminal, **navigate to your repository**:

   ```bash
   cd ~/my-bash-files-repository
   ```

2. Update the **Git remote URL** to use SSH:

   ```bash
   git remote set-url origin git@github.com:CagriCatik/my-bash-files-repository.git
   ```

   - This command updates the repository's origin URL to use SSH for future operations like pulling and pushing.

---

# Step 5: Test the SSH Connection

Before pushing any changes, test the SSH connection to GitHub to ensure that everything is set up correctly.

1. Run the following command to test the SSH connection:

   ```bash
   ssh -T git@github.com
   ```

2. If everything is working, you should see a message like this:

   ```
   Hi CagriCatik! You've successfully authenticated, but GitHub does not provide shell access.
   ```

---

# Step 6: Push Changes to GitHub

Now that your SSH authentication is set up, you can push changes to your GitHub repository without entering your username or password.

1. Use the following command to **push changes** to your repository:

   ```bash
   git push origin
   ```

   - From now on, Git will use the SSH connection, and you won't need to provide credentials.

---

# Additional Tips

- If you have multiple SSH keys, you can specify which key to use for GitHub by creating or updating the `~/.ssh/config` file. Add the following lines:

   ```bash
   Host github.com
     HostName github.com
     User git
     IdentityFile ~/.ssh/id_ed25519
   ```

- If you ever need to generate a new key or change your existing key, follow the same steps above, and make sure to update your SSH key on GitHub.

