#!/bin/bash -l

#install requirements
sudo apt-get install zlib1g-dev

# sudo apt-get install -y pkg-config libfreetype6-dev libpng-dev python-matplotlib

#install quast
wget https://downloads.sourceforge.net/project/quast/quast-5.0.2.tar.gz
tar -xzf quast-5.0.2.tar.gz
cd quast-5.0.2
./setup.py install

#run quast
./quast.py analyses/01_genome_assembly/01_assembly_canu/lferriphilum.contigs.fasta -r data/lferriphilum_ref.fasta -o analyses/01_genome_assembly/02_eval_quast/ 
