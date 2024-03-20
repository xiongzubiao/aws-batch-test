#!/usr/bin/env nextflow

process counter {
  container 'quay.io/nextflow/bash'

  output:
  stdout

  '''
  i=0; while true; do echo $i; i=$(expr $i + 1); sleep 1; done
  '''
}

workflow {
  counter | view
}
