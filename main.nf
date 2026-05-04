#!/usr/bin/env nextflow
params.sleep = 1200
process sleep {
    input:
    val time

    script:
    """
    trap "" TERM
    exec sleep $time
    """
}

workflow {
    sleep( params.sleep )
}
