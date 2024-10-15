#!/bin/bash

# Function to create a backend
create_backend() {
  echo "Creating backend..."

  # Create and navigate to backend directory
  mkdir "${PROJECT_NAME}/backend"
  cd "${PROJECT_NAME}/backend"

  # Initialize npm project and install dependencies
  npm init -y
  npm install express mongoose cors dotenv
  npm install --save-dev nodemon

  # Create server.js file
  cat <<EOL > server.js
const express = require('express');
const mongoose = require('mongoose');
const cors = require('cors');
require('dotenv').config();

const app = express();
const port = process.env.PORT || 5000;

app.use(cors());
app.use(express.json());

// MongoDB Connection
mongoose.connect(process.env.MONGODB_URI, {
  useNewUrlParser: true,
  useUnifiedTopology: true,
});

const connection = mongoose.connection;
connection.once('open', () => {
  console.log('MongoDB database connection established successfully');
});

// Define Routes Here

app.listen(port, () => {
  console.log(\`Server is running on port: \${port}\`);
});
EOL

  # Create .env file
  cat <<EOL > .env
PORT=5000
MONGODB_URI=mongodb://localhost:27017/my_fullstack_app
EOL

  # Create models and routes directories
  mkdir models routes

  # Create User model
  cat <<EOL > models/User.js
const mongoose = require('mongoose');

const userSchema = new mongoose.Schema({
  name: { type: String, required: true },
  email: { type: String, required: true, unique: true },
  password: { type: String, required: true },
});

module.exports = mongoose.model('User', userSchema);
EOL

  # Create users route
  cat <<EOL > routes/users.js
const router = require('express').Router();
const User = require('../models/User');

// Create a new user
router.post('/add', async (req, res) => {
  const newUser = new User(req.body);
  try {
    const savedUser = await newUser.save();
    res.json(savedUser);
  } catch (err) {
    res.status(400).json('Error: ' + err);
  }
});

// Get all users
router.get('/', async (req, res) => {
  try {
    const users = await User.find();
    res.json(users);
  } catch (err) {
    res.status(400).json('Error: ' + err);
  }
});

module.exports = router;
EOL

  # Add users route to server.js
  echo "const usersRouter = require('./routes/users');" >> server.js
  echo "app.use('/users', usersRouter);" >> server.js

  # Modify package.json to include nodemon script
  sed -i '/"scripts": {/a \ \ \ \ "dev": "nodemon server.js",' package.json

  echo "Backend created successfully!"
  cd ../..
}

# Function to create a frontend with React and Tailwind CSS
create_frontend() {
  echo "Creating React app with Tailwind CSS..."

  # Create frontend with Create React App
  npx create-react-app "${PROJECT_NAME}/frontend"
  cd "${PROJECT_NAME}/frontend"

  # Install Tailwind CSS and necessary dependencies
  npm install -D tailwindcss postcss autoprefixer
  npx tailwindcss init -p

  # Configure Tailwind by adding the required imports in tailwind.config.js
  cat <<EOL > tailwind.config.js
module.exports = {
  content: [
    "./src/**/*.{js,jsx,ts,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
EOL

  # Add Tailwind directives to index.css
  cat <<EOL > src/index.css
@tailwind base;
@tailwind components;
@tailwind utilities;
EOL

  echo "Frontend created successfully with Tailwind CSS!"
  cd ../..
}

# Function to create a README.md file
create_readme() {
  echo "Creating README.md file..."

  # Create README.md with basic project description
  cat <<EOL > "${PROJECT_NAME}/README.md"
# ${PROJECT_NAME}

This is a fullstack web application built using:
- **Frontend**: React with Tailwind CSS
- **Backend**: Node.js, Express, and MongoDB

## Setup Instructions

### Backend:
1. Navigate to the \`backend\` directory.
2. Install dependencies: \`npm install\`
3. Create a \`.env\` file and add the necessary environment variables.
4. Start the backend server: \`npm run dev\`

### Frontend:
1. Navigate to the \`frontend\` directory.
2. Install dependencies: \`npm install\`
3. Start the React development server: \`npm start\`

EOL

  echo "README.md created successfully!"
}

# Function to create a .gitignore file
create_gitignore() {
  echo "Creating .gitignore file..."

  # Create .gitignore with common files to exclude
  cat <<EOL > "${PROJECT_NAME}/.gitignore"
# Node modules
node_modules

# Environment variables
.env

# Logs
logs
*.log
npm-debug.log*

# Build outputs
build
dist

# React files
/public/*.html
/public/*.json
.DS_Store

EOL

  echo ".gitignore created successfully!"
}

# Function to initialize Git
initialize_git() {
  echo "Initializing git repository..."
  cd "${PROJECT_NAME}"
  git init
  git add .
  git commit -m "Initial commit"
  echo "Git repository initialized."
  cd ..
}

# Main function
main() {
  # Prompt for project name
  read -p "Give a project name: " PROJECT_NAME

  # Check if the project name is empty
  if [ -z "$PROJECT_NAME" ]; then
    echo "Project name cannot be empty."
    exit 1
  fi

  # Create project directory
  mkdir "${PROJECT_NAME}"

  create_backend
  create_frontend
  create_readme
  create_gitignore
  initialize_git

  echo "Project setup complete! Backend and frontend are ready."
}

# Run the main function
main

