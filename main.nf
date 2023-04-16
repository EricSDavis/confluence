#!/usr/bin/env nextflow
nextflow.enable.dsl=2 

process test {
  input: 
    val x
  output:
    stdout
  script:
    """
    echo '$x'
    java --version
    R -e 'packageVersion("strawr")'
    """
}

workflow {
  Channel.of('Testing pipeline') | test | view
}