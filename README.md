# 🛠️ Hello DevOps – ISO/IEC/IEEE 12207-Compliant Project

> A complete, minimal DevOps software system that prints `"Hello, world!"` using exactly two functions.
> Built with full ISO 12207 lifecycle documentation, containerization, CI/CD, testing, release, and disposal.

---

## 📌 Project Summary

| Property           | Description                             |
|--------------------|------------------------------------------|
| **Purpose**        | Demonstrate ISO-compliant DevOps process |
| **Output**         | `Hello, world!`                          |
| **Version**        | 1.0.0                                    |
| **Language**       | Python 3.10                              |
| **Runtime**        | Docker (debian-slim base)                |
| **CI/CD**          | GitHub Actions                           |
| **Security**       | CodeQL + Trivy scans                     |

---

## 📁 File Structure

hello-devops/

├── hello_world.py          # Source code

├── test_hello.py           # Unit tests

├── test_integration.py     # Integration test

├── Dockerfile              # Container config

├── run.sh                  # Runtime executor

├── maintenance.sh          # Post-deploy validation

├── disposal.sh             # Teardown script

│

├── .github/workflows/

│   ├── ci.yml              # CI build/test

│   ├── release.yml         # GitHub release

│   ├── codeql.yml          # Static security scan

│   └── docker-scan.yml     # Image vulnerability scan

│

├── docs/

│   ├── requirements.md

│   ├── design.md

│   ├── architecture.md

│   ├── interface.md

│   ├── system_analysis.md

│   ├── implementation.md

│   └── ...

## 🚀 Quick Start

### 🔧 Prerequisites

- [Docker](https://docs.docker.com/)
- Python 3.10 (optional for local test)
- Git CLI
- GitHub CLI (optional for release control)

### 🐳 Run in Docker

```bash
docker build -t hello-devops:ci .
docker run --rm hello-devops:ci
# Output: Hello, world!