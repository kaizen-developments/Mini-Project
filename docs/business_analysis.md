# 📘 Business or Mission Analysis

## 🔰 Purpose

This artifact documents the business or mission analysis process in compliance with **ISO/IEC/IEEE 12207:2017 §6.4.1**, to define the problem and solution space for realizing a minimal, traceable, and automated DevOps process.

---

## I. Problem or Opportunity Space

### 🧩 Problem Definition

There is a need for a minimal and formal **reference implementation** of a DevOps process that:

- Demonstrates all life cycle stages from requirements to deployment.
- Is **traceable**, **automatable**, and **compliant** with ISO/IEC 12207.
- Serves as a template for more complex system developments.

**Problem Statement:**  
> *“How can a formal DevOps process be realized and demonstrated using a simple, inspectable, and fully automatable software system?”*

### 🚫 Problem Characteristics

- DevOps education lacks small-scale, ISO-compliant examples.
- Existing pipelines lack visibility, traceability, and structured documentation.
- Manual implementations are prone to inconsistency and incompleteness.

---

## II. Solution Space

### ✅ Desired Characteristics

- **Minimal functional system** demonstrating DevOps pipeline
- Two-function implementation of a `"Hello, world!"` program
- Automated build/test/deploy via CI/CD
- Full traceability from requirements to deployment
- Portable, deterministic, and documentable

---

## III. Evaluation of Alternative Solution Classes

| Solution Class                     | Description                                                  | Evaluation                               |
|-----------------------------------|--------------------------------------------------------------|------------------------------------------|
| Manual ISO-aligned process        | Manually implement each phase without automation            | ❌ Violates DevOps automation principles |
| Complex production software       | Use a real-world system (e.g., web service)                  | ⚠️ Overkill; too complex for this purpose |
| Minimal “Hello, world!” + DevOps  | Small program + full DevOps life cycle                       | ✅ Ideal for demonstration                |
| Code-only, no pipeline            | Implement code, skip CI/CD                                   | ❌ Not a complete DevOps solution         |

✅ **Selected Class:**  
> Use a two-function `"Hello, world!"` system with a fully automated, traceable DevOps pipeline.

---

## IV. Management of Business or Mission Analysis

### 📂 Maintained Artifacts

- `business_analysis.md` (this document)
- `requirements.md`
- `design.md`
- `decision_log.md`
- `traceability_matrix.csv`

### 📌 Decisions Made

- Use a minimal program to focus on the **process**, not the complexity of software
- Use modern, open-source tools: GitHub, Jenkins, Docker, Notion, CodeQL
- Document each ISO 12207 phase for traceability and auditability

### 📎 Constraints

- Must use exactly **two functions**
- Must print **"Hello, world!"** to stdout
- Must use a **fully automated pipeline**
- Must store **documentation** alongside code

---

## V. Resulting Solution Space

### 📋 Stakeholder Requirements

- The program shall print “Hello, world!” using two functions
- Each function must print a portion of the string
- Output must appear on standard output
- The program shall exit with status code 0

### 🧬 Solution Realization

| Aspect         | Realization                                                                          |
|----------------|---------------------------------------------------------------------------------------|
| Process        | CI/CD pipeline with GitHub Actions or Jenkins                                        |
| Infrastructure | Containerized runtime (Docker), managed via Terraform and Ansible (optional)         |
| Code           | `print_hello()`, `print_world()` implemented with corresponding tests                |
| Traceability   | Requirements, design, implementation, and test docs versioned in GitHub and Notion   |
| Outputs        | Terminal output, test results, build artifacts                                        |
| Documentation  | Maintained in Notion and `/docs` folder in the repository                            |

---

## 🔄 Summary Diagram

[ Problem Space ]
|
|-- How to realize a complete, traceable DevOps process?
|
v
[ Solution Space ]
|
|-- Stakeholder requirements: "Hello, world!" using 2 functions
|-- ISO 12207 processes: Requirement → Design → Code → Test → Deploy
|-- Tools: GitHub, Jenkins, Docker, CodeQL, Notion

yaml
Copy
Edit

---

**Document Owner:** [Your Name]  
**Created On:** [Insert Date]  
**Standard Reference:** ISO/IEC/IEEE 12207:2017 §6.4.1