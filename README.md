# msc_project
```md
# Web Prevalence of Password Storage Functions and their Parameters

## Abstract

This project investigates the implementation and adoption of password-hashing and key-derivation algorithms in public GitHub repositories. We mine repository code, detect algorithm usage, clean and rank the resulting dataset, and extract concrete parameter values from real-world implementations. The study focuses on widely used algorithms, including Argon2, bcrypt, PBKDF2, scrypt, yescrypt, and Lyra2, across multiple programming languages.

The workflow is designed to support reproducible empirical analysis of cryptographic practice in open-source software. It combines GitHub search data, repository metadata, and code-level pattern extraction to build a structured dataset suitable for comparative evaluation and analysis.

## Keywords

Password hashing, key derivation, Argon2, bcrypt, PBKDF2, scrypt, yescrypt, Lyra2, repository analysis, cryptographic implementations, Memory Hard Functions


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
The study investigated the prevalence of password-hashing algorithms across software repositories, examining adoption across five programming languages: Python, Java, JavaScript, TypeScript and C. A Python-based data collection tool used the GitHub REST API to identify repositories and source files through algorithm/function names and contextual search terms, including password, hash, login and auth.

The collected repositories were organised into three algorithm classes: monolithic hashes, iterative key-derivation functions (KDFs) and memory-hard functions (MHFs). Repository and source-file information was recorded and processed to support comparisons across algorithms and languages.

Source-code analysis used Tree-sitter to parse files into abstract syntax trees (ASTs), helping distinguish relevant code structures from incidental algorithm mentions, such as those appearing in comments, and reduce false-positive matches. Regex-based processing was then used to extract relevant function arguments and parameter information. The extracted data was stored in intermediate files and CSV datasets for subsequent analysis.

Argon2 variants were processed separately using variant-specific data files and parameter workbooks, then summarised under the broader Argon2 category. Some functions with very few recorded observations, including niche algorithms such as Balloon Hashing, were excluded from particular parameter analyses where the available data was insufficient for meaningful comparison.

Repository popularity was examined using GitHub star-count tiers of 0–9, 10–49, 50–100 and 101+ stars. The evaluation aggregated repository counts and algorithm distributions by language and algorithm class, compared the primary corpus with an overlapping University of Durham dataset, and examined observed parameter configurations against relevant security recommendations and benchmark guidance.

The methodology was subject to limitations arising from GitHub search coverage, false-positive and false-negative matches, static source-code analysis, incomplete visibility of dynamically supplied parameters and limited observations for niche algorithms.


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

