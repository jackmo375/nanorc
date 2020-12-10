#!/usr/bin/env nextflow
nextflow.enable.dsl=2

workflow {

	channel
		.of(1..10) \
		| test

}

process test {
	echo true

	input:
	val x

	output:
	stdout

	script:
	"""
	echo '${params.something} here ${x}'
	"""
}



