# msc_project
```md
# Web Prevalence of Password Storage Functions and their Parameters

## Abstract

This project investigates the implementation and adoption of password-hashing and key-derivation algorithms in public GitHub repositories. We mine repository code, detect algorithm usage, clean and rank the resulting dataset, and extract concrete parameter values from real-world implementations. The study focuses on widely used algorithms, including Argon2, bcrypt, PBKDF2, scrypt, yescrypt, and Lyra2, across multiple programming languages.

The workflow is designed to support reproducible empirical analysis of cryptographic practice in open-source software. It combines GitHub search data, repository metadata, and code-level pattern extraction to build a structured dataset suitable for comparative evaluation and downstream analysis.

## Keywords

GitHub mining, password hashing, key derivation, Argon2, bcrypt, PBKDF2, scrypt, yescrypt, Lyra2, repository analysis, cryptographic implementations, software security

## Overview

This repository implements a multi-stage pipeline for collecting and analysing real-world password-related cryptographic implementations from public GitHub repositories. The workflow proceeds through:

1. Directory preparation
2. GitHub code search
3. Dataset deduplication
4. Data cleaning and repository enrichment
5.Parameter extraction

The pipeline is designed for reproducibility and extensibility, enabling comparisons across repository popularity, programming language, and algorithm class.

## Motivation

Password storage and key derivation remain critical components of secure software engineering. While standards and best practices are well established, real-world implementations vary widely across projects. Understanding how developers implement cryptographic primitives in practice is essential for security research, code-quality analysis, and empirical software engineering studies.

This work contributes an automated workflow for collecting and analysing real-world cryptographic implementation patterns at scale.

## Research Questions

- What password hashing or password related algorithms are prevalent within the analysed software repositories?
- To what extent do observed password hashing implementations and parameter configurations align with established recommendations?
- How does the prevalence and configuration of password hashing algorithms vary across the programming languages analysed?


## Methodology

The proposed pipeline comprises the following stages:

### 1. Search and Candidate Discovery
GitHub code search is used to identify candidate repositories and files containing relevant cryptographic usage. Search queries incorporate keywords related to password handling, authentication, and hashing.

### 2. Collection and Deduplication
Search results are cleaned and deduplicated to reduce duplicate repository representations and improve data quality.

### 3. Dataset Cleaning
Raw results are parsed into structured records containing repository, file, language, algorithm, and URL information. GitHub star counts are added to support repository popularity analysis.

### 4. Parameter Extraction
Candidate source files are downloaded and analysed using regex-based extraction to recover algorithm-specific parameter values such as cost factors, iteration counts, and memory/time settings.

### 5. Comparative Analysis
The extracted dataset is grouped by algorithm, language, and repository tier, enabling comparative analysis of implementation patterns and repository characteristics.

## Key Contributions

- Workflow for mining and analysing password-hashing implementations on GitHub.
- Automated pipeline for deduplication, cleaning, and metadata enrichment.
- Extraction of  algorithm parameters from real-world open source projects.
- Comparative evaluation framework across repository popularity and language.


## Limitations

This study is limited by GitHub API constraints, search coverage, repository duplication, and the heuristic nature of code-pattern detection. As a result, extracted findings should be interpreted as evidence of implementation patterns rather than definitive repository-wide security assessments.

## Ethical Considerations

This work analyses publicly available source code and follows responsible research practices. All data collection respects GitHub rate limits and platform terms of use.

