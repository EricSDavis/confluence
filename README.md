# Confluence: Bringing the Hi-Cs Together

## Overview
`confluence` merges `.hic` files without
requiring any upstream files (e.g. `FASTQ`,
`merged_nodups.txt`, `inter.txt`).

## Getting started
1. Install [`nextflow`](https://www.nextflow.io/) (you may skip this step if `nextflow` is already installed on your system):

    ```bash
    curl -s https://get.nextflow.io | bash
    ```
2. Run:

    ```bash
    ./nextflow run ericsdavis/confluence -r main
    ```
