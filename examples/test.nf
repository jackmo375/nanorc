#!/usr/bin/env nextflow
nextflow.enable.dsl=2

/*
 * Test comment
 */

workflow {

	Channel
		.of(1..10) \
		| test

}

process test {
	beforeScript "\
		something \
	"
	afterScript = "\
		something else \
	"
	echo true

	input:
	val x	// the story of x is interesting...

	output:
	stdout

	script:
	"""
	echo '${params.something} here ${x}'
	"""
}



