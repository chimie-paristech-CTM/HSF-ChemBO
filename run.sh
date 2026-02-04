#!/bin/bash

# before running:
# download pretrained model in ./from_pretrained


set -x


python main.py --dataset shields --seed 1337 --mc_runs 20 --batch_size 1 --n_iter 50 --switch_after 5


python main.py --dataset buchwald_hartwig --seed 1337 --mc_runs 20 --batch_size 1 --n_iter 50 --impute_mode ignore --switch_after 5


python main.py --dataset suzuki --seed 1337 --mc_runs 20 --batch_size 1 --n_iter 50 --switch_after 5