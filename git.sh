#!/bin/bash

# # Your GitHub Repository details

GITHUB_USERNAME="akil-ahmed3"
YOUR_ACCESS_TOKEN="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"
YOUR_EMAIL="akilahmed096@gmail.com"
REPOSITORY="git@github.com:akil-ahmed3/ai_for_medicine.git"
COMMIT_MESSAGE="Update file"

# Configure Git to use your username and email (if not already configured)
git config --global user.name "$GITHUB_USERNAME"
git config --global user.email "$YOUR_EMAIL"

# Add the file to Git
git add .

# Commit the changes
git commit -m "$COMMIT_MESSAGE"

# Set the remote with access token (Replace YOUR_ACCESS_TOKEN with your actual access token)
# Note: It's safer to use credentials or access tokens from environment variables or other secure methods
git remote set-url origin https://$GITHUB_USERNAME:$YOUR_ACCESS_TOKEN@github.com/$GITHUB_USERNAME/$REPOSITORY.git

# Push the changes to GitHub
git push origin main

# Reset the remote URL to hide your access token
git remote set-url origin https://github.com/$GITHUB_USERNAME/$REPOSITORY.git
