#! -cwd
cd /storage/home/users/pjt6/Sitobion_avenae/pep/


export PATH=/shelf/apps/pjt6/conda/envs/iqtree/bin/:$PATH

conda activate orthofindersep2021

wget http://ftp.ensembl.org/pub/release-104/fasta/drosophila_melanogaster/pep/Drosophila_melanogaster.BDGP6.32.pep.all.fa.gz


#orthofinder -S diamond -t 60 -f /storage/home/users/pjt6/Sitobion_avenae/pep/ -T iqtree -M msa
# let orthofinder do its "all genes" tree
orthofinder -S diamond -t 75 -a 40 -f /storage/home/users/pjt6/Sitobion_avenae/pep/



python /storage/home/users/pjt6/Sitobion_avenae/mcl_to_cafe.py -sp  "Bos Api S_avenae Rpa Mca Mpe Dno ACYP Pentalonia_nigronervosa Eriosoma_lanigerum1 AG rhopalosiphum_maidis DV Aphis_goss" -i /storage/home/users/pjt6/Sitobion_avenae/pep/OrthoFinder_latest_version/Results_Sep16/Orthogroups/Orthogroups.txt -o ../aphids_orthofinder.clusters.txt

