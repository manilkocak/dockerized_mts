#!/bin/bash

# read in flagged arguments
while getopts ":b:o:d:" arg; do
  case $arg in
    b) # specify input folder
      data_dir=${OPTARG};;
    o) # specifcy output folder
      output_dir=${OPTARG};;
    d) # specify directory with -omics data
      biomarker_dir=${OPTARG};;
  esac
done

chmod +x /biomarkers.R
chmod +x /src/biomarker_functions.R
export HDF5_USE_FILE_LOCKING=FALSE
echo "${data_dir}" "${output_dir}" "${biomarker_dir}"
Rscript /biomarkers.R -b "${data_dir}" -o "${output_dir}" -d "${biomarker_dir}"

exit_code=$?

echo "$exit_code"
exit $exit_code
