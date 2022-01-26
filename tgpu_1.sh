#!/bin/bash
#SBATCH -n 4 # Number of coresy
#SBATCH -p dcc # Partition to submit to
#SBATCH --mem 4096  # 2GB solicitados.
#SBATCH --gres gpu:1 # Para pedir Pascales MAX 8
#SBATCH -o %x_%u_%j.out # File to which STDOUT will be written
#SBATCH -e %x_%u_%j.err # File to which STDERR will be written


python3 /home/dduran/My_TFG/DeepRelight-master/train.py --checkpoints_dir /home/dduran/My_TFG/DeepRelight-master/v1 --gpu_ids 9 --batchSize 1
 
