# cc_docker

This repository is a **containerization and deployment demo** for a Python script that analyzes text files, counts words, reports the most frequent terms, and writes the results to an output file.

## Project Structure

- script.py reads the input text files and generates the summary output
- dockerfile builds the container image
- deployment.yaml contains the Kubernetes deployment definition
- data/ stores the source text files and generated output
- kube_output.txt captures example Kubernetes command output

## What The Script Does

The script:

- reads IF.txt and AlwaysRememberUsThisWay.txt
- counts total words in each file
- computes the grand total
- finds the top three most frequent words in each file
- records the container IP address
- writes the final report to data/output/result.txt

## Run With Docker

`ash
docker build -t cc-docker-demo -f dockerfile .
docker run --rm cc-docker-demo
`

## Kubernetes

Use deployment.yaml as the starting point for deploying the containerized workload to a Kubernetes cluster.
