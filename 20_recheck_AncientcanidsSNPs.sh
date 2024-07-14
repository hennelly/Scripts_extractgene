#!/usr/bin/env bash
#SBATCH --job-name=Dstat_ancient
#SBATCH -c 1
#SBATCH --time 1:20:00
#SBATCH --mem-per-cpu 1G
#SBATCH -o /home/crq857/projects/TSHRpaper/slurmout/pulloutAncientsnpsdogs.out
#SBATCH -e /home/crq857/projects/TSHRpaper/slurmout/pulloutAncientsnpsdogs.err

module load perl
module load vcftools

## To ancient again
SNPLIST=/projects/mjolnir1/people/crq857/Katia/Ancientdogs_snplist_TSHRhap.txt
VCF=/projects/mjolnir1/people/crq857/Katia/merged_phased_annotated.chr8_MAF_0.01_recalibrated_INFO_0.8.vcf
OUT=/projects/mjolnir1/people/crq857/Katia/merged_phased_annotated.chr8_MAF_0.01_recalibrated_INFO_0.8_TSHRhap

vcftools --gzvcf ${VCF} --positions ${SNPLIST} --out ${OUT}  --recode --recode-INFO-all
