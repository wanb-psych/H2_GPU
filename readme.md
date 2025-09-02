## Fast calculation of heritability (h2) for phenotypes in HCP

### Step 1. Pedigree files preparation

```
- Here, in the example data, you can find the five files containing pedigree information: 'house.gz', 'pedigree.info', 'pedindex.cde', 'pedindex.out', 'phi2.gz'.

- Make sure these files are in the working directory. Otherwise, copy them to your working directory where you start to run SOLAR. 

- Suggestion: input.csv, outout.csv, pedigree_files, and script (all files) are in the same folder.
```

### Step 2. Phenotype file preparation

```
- Here, in the example data, you can find the input.csv as our input data.

- This contains the first column: ID, second: age, third: sex. You can also ADD your own covariates. Then your phenotype data, e.g., node_1, node_2, ect. Delimiter use comma.  

- A separate file for the phenotype NAMES (node_1, node_2, etc.). In the example, it's called "trait.header".
```

### Step 3. RUN SOLAR

```
- Note, only a dynamic version of SOLAR can support using GPU. Here, I used solar-eclipse-9.0.0-dynamic-ubuntu, this version.

- Download here: https://www.nitrc.org/projects/se_linux/

- Unzip the file and cd the folder, and run $ ./install_solar `pwd` `pwd`. You can find a single solar file that is the execution file. 

- SOLAR=WHERE_solar_IS. # make a variable linked to the solar execution.

- Make sure you have CUDA installed in the computing machine: $ nvidia-smi

- Before running solar, we have to normalize the phenotype scores by $python inverse_norm.py. Output is input_inorm.csv.

- run $ $SOLAR < run_solar.sh # input is input_inorm.csv, and output is the heritability estimates.
```

### Difference between GPU and CPU computing

```
- Node_1_INORM is the folder containing procedures using CPU to calculate the heritability of node_1.

- output_CPU.csv is the example file of all nodes using CPU. There are a few differences, but the overall pattern/scale is similar. 

```
