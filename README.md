biobash
=======

A collection of bash scripts for bioinformatics.

* ```cleannames.sh``` : Takes NCBI formatted FASTA file and generates a new FASTA file with only the accessions.
* ```linfasta.sh``` : Converts a FASTA file into linearized sequences (i.e. alternating titles and sequences). Taken from a hint by Frederic Mahe (see http://www.biostars.org/p/17680).
* ```longorf.sh``` : Extracts the longest open reading frame. Requires ```getorf``` from EMBOSS.
* ```sortfasta.sh``` : Sorts a FASTA file into sequences of decreasing length.
