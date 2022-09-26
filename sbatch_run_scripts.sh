#!/bin/bash

model=ddm
machine=cpu

# SINGLESUBJECT
# sbatch -p batch -c 4 --account=carney-frankmj-condo --array=0-19 sbatch_numpyro.sh --model $model --modeltype singlesubject --nwarmup 2000 --nmcmc 3000 --idrange 10 --machine $machine

# sbatch -p batch -c 4 --account=carney-frankmj-condo --array=0-19 sbatch_hddm.sh --model $model --modeltype singlesubject --nwarmup 2000 --nmcmc 3000 --idrange 10 --machine $machine

# sbatch -p gpu --gres=gpu:1 -c 4 --account=carney-frankmj-condo --array=0-19 sbatch_numpyro.sh --model $model --modeltype singlesubject --nwarmup 2000 --nmcmc 3000 --idrange 10 --machine gpu

# sbatch -p gpu --gres=gpu:1 -c 4 --account=carney-frankmj-condo --array=0-19 sbatch_hddm.sh --model $model --modeltype singlesubject --nwarmup 2000 --nmcmc 3000 --idrange 10 --machine gpu

# sbatch -p batch -c 4 --array=0-19 sbatch_pyro.sh --model $model --modeltype singlesubject --machine $machine --nsteps 2000 --nparticles 1 --guide normal --idrange 10

# sbatch -p batch -c 4 --array=0-10 sbatch_pyro.sh --model $model --modeltype singlesubject --machine $machine --nsteps 2000 --nparticles 1 --guide mvnormal --idrange 10

# sbatch -p batch -c 4 --array=0-19 sbatch_pyro.sh --model $model --modeltype singlesubject --machine $machine --nsteps 2000 --nparticles 10 --guide normal --idrange 10

# sbatch -p batch -c 4 --array=0-19 sbatch_pyro.sh --model $model --modeltype singlesubject --machine $machine --nsteps 2000 --nparticles 10 --guide mvnormal --idrange 10

# # WITH PEROSNAL: HIERARCHICAL
# sbatch -p batch -c 4 --account=carney-frankmj-condo --array=0-19 sbatch_numpyro.sh --model $model --modeltype hierarchical --nwarmup 2000 --nmcmc 3000 --idrange 10 --machine $machine

# sbatch -p batch -c 4 --account=carney-frankmj-condo --array=0-19 sbatch_hddm.sh --model $model --modeltype hierarchical --nwarmup 2000 --nmcmc 3000 --idrange 10 --machine $machine

# sbatch -p gpu --gres=gpu:1 -c 4 --account=carney-frankmj-condo --array=0-19 sbatch_numpyro.sh --model $model --modeltype hierarchical --nwarmup 2000 --nmcmc 3000 --idrange 10 --machine gpu

# sbatch -p gpu --gres=gpu:1 -c 4 --account=carney-frankmj-condo --array=0-19 sbatch_hddm.sh --model $model --modeltype hierarchical --nwarmup 2000 --nmcmc 3000 --idrange 10 --machine gpu

# sbatch -p batch -c 4 --array=0-19 sbatch_pyro.sh --model $model --modeltype hierarchical --machine $machine --nsteps 2000 --nparticles 1 --guide normal --idrange 10

# sbatch -p batch -c 4 --array=0-10 sbatch_pyro.sh --model $model --modeltype hierarchical --machine $machine --nsteps 2000 --nparticles 1 --guide mvnormal --idrange 10

# sbatch -p batch -c 4 --array=0-19 sbatch_pyro.sh --model $model --modeltype hierarchical --machine $machine --nsteps 2000 --nparticles 10 --guide normal --idrange 10

# sbatch -p batch -c 4 --array=0-19 sbatch_pyro.sh --model $model --modeltype hierarchical --machine $machine --nsteps 2000 --nparticles 10 --guide mvnormal --idrange 10