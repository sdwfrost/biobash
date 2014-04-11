biobash
=======

A collection of bash scripts for bioinformatics.

* ```cleannames.sh``` : Takes NCBI formatted FASTA file and generates a new FASTA file with only the accessions.
* ```countntbl.sh``` : Generates a table with sequence names and the number of 'N's in the sequence.
* ```extractacc.sh``` : Takes NCBI formatted FASTA file and generates a text file with the accessions.
* ```linfasta.sh``` : Converts a FASTA file into linearized sequences (i.e. alternating titles and sequences). Taken from a hint by Frederic Mahe (see http://www.biostars.org/p/17680).
* ```longorf.sh``` : Extracts the longest open reading frame. Requires ```getorf``` from EMBOSS.
* ```removesmalls.sh``` : Removes sequences shorter than a given threshold. Taken from a hint by Frederic Mahe (see http://www.biostars.org/p/79202/).
* ```sortfasta.sh``` : Sorts a FASTA file into sequences of decreasing length.
* ```startatname.sh``` : Prints a FASTA file beginning at a given sequence name.
* ```stopatname.sh``` : Prints a FASTA file until (and including) a given sequence name.
* ```trimorf.sh```: Trims non-coding regions from the beginning and end of a sequence.
