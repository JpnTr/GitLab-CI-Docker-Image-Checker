# GitLab CI Docker Image Deployment Checker

This Bash script is designed to check if GitLab CI has deployed a new Docker image after changing code.

## Usage

1. Copy the script to your project's root directory.
2. Replace `your-docker-image-name` with your Docker image name and `your-registry-url` with the URL of your Docker registry.
3. Run the script using the command: `./deploy-check.sh`

The script will check the latest commit hash of your code and compare it with the hash of the latest deployed Docker image. If they differ, it means that GitLab CI has not yet deployed the latest version, so you can run your deployment commands. Otherwise, it means that the latest version is already deployed and no further action is required.

## Requirements

- Bash
- Git
- CURL
- JQ

## Notes

- This script assumes that your GitLab CI pipeline is set up to deploy the Docker image automatically.
- You can modify the deployment commands in the "Run your deployment commands here" section of the script to suit your needs.
- If you encounter any issues with the script, please feel free to contact the developer for assistance.
