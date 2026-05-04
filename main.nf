#!/usr/bin/env nextflow
params.time_sleep = 1200
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
    sleep( params.time_sleep )
}
