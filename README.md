# docker-activity-automator

[![Auto Update Container and Logs](https://github.com/YOUR_GITHUB_USERNAME/docker-activity-automator/actions/workflows/auto-update.yml/badge.svg)](https://github.com/YOUR_GITHUB_USERNAME/docker-activity-automator/actions)

An automated, Docker-based activity and log generator driven by GitHub Actions. This project demonstrates containerized execution, modern Bash scripting, and automated repository maintenance via CI/CD pipelines.

---

## 🚀 Overview

This repository runs a containerized micro-service that tracks execution metrics, generates activity timestamps, and automatically updates the repository logs. The entire lifecycle is managed via GitHub Actions workflows, generating consistent repository contributions and demonstrating practical infrastructure automation.

### Key Features

- **Containerized Environment:** Powered by a lightweight Alpine Linux Docker image.
- **Modern Bash Scripting:** Built using robust and secure Bash standards (`set -euo pipefail`).
- **Automated CI/CD Pipeline:** Scheduled executions via GitHub Actions to maintain up-to-date logs without manual intervention.
- **Manual Trigger Support:** Workflows can be triggered directly from the GitHub UI (`workflow_dispatch`).

---

## 📂 Project Structure

```text
docker-activity-automator/
├── .github/
│   └── workflows/
│       └── auto-update.yml      # CI/CD pipeline configuration
├── Dockerfile                   # Container definition
├── script.sh                    # Modern Bash automation script
└── README.md                    # Project documentation
```

---

## 🛠️ Technology Stack

- **Runtime Environment:** Docker
- **Base Image:** Alpine Linux
- **Scripting Language:** Bash (Modern Style)
- **Automation Platform:** GitHub Actions

---

## ⚙️ CI/CD Workflow Details

The automation pipeline (`auto-update.yml`) follows a strict sequential process:

1. **Trigger**
   - Runs automatically every day at midnight (UTC) using a cron schedule.
   - Can also be executed manually via the **Actions** tab using `workflow_dispatch`.

2. **Build**
   - Initializes the GitHub Actions runner.
   - Builds the custom Docker image.

3. **Execution**
   - Runs the containerized `script.sh`.
   - Safely updates the local `activity_log.txt` file.

4. **Synchronization**
   - Copies the updated log file from the container to the GitHub Actions runner.

5. **Commit**
   - Detects changes.
   - Automatically commits and pushes the updated `activity_log.txt` to the `main` branch using the GitHub Actions bot token.

---

## 💻 Local Execution & Testing

Clone the repository:

```bash
git clone https://github.com/YOUR_GITHUB_USERNAME/docker-activity-automator.git
cd docker-activity-automator
```

Build the Docker image:

```bash
docker build -t docker-activity-automator .
```

Run the container:

```bash
docker run --name automator-container docker-activity-automator
```

Copy the generated log file from the container:

```bash
docker cp automator-container:/app/activity_log.txt ./activity_log.txt
```

View the generated log:

```bash
cat activity_log.txt
```

---

## 📝 License

This project is open source and available under the MIT License.

---

## 📌 Customization

Before publishing the repository, replace every occurrence of:

```text
YOUR_GITHUB_USERNAME
```

with your actual GitHub username. This includes:

- The GitHub Actions badge URL.
- The GitHub Actions page link.
- The repository clone URL.

Once updated, the badge will correctly display the workflow status and all repository links will function properly.
