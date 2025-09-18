#!/usr/bin/env nextflow

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
    sleep( "1200" )
}
