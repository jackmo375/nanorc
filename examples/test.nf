#!/usr/bin/env nextflow
nextflow.enable.dsl=2

workflow {

	input:
	val x
	output:
	stdout

	script:
	"""
	something else 2 + 3 + 4
	"""
}

process test {
	echo true

	script:
	"""
	echo '${params.something} here'
	"""
}



