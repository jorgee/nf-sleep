#!/usr/bin/env nextflow
params.time_sleep = 1200
process SLEEP {
    input:
    val time

    script:
    """
    trap "" TERM
    exec sleep $time
    """
}

workflow {
    SLEEP( params.time_sleep )
}
