#!/usr/bin/env nextflow
nextflow.enable.dsl=2

workflow {

	input:
	1 2 3

	script:
	"""
	something else 2 3 4
	"""
}

process test {

	script:
	"""
	echo '${params.something} here'
	"""
}



