#!/bin/bash

# read in flagged arguments
while getopts ":i:o:g:" arg; do
  case $arg in
    i) # specify input folder
      data_dir=${OPTARG};;
    o) # specifcy output folder
      output_dir=${OPTARG};;
    g) # specify assay/build (PR300 or PR500)
      calc_gr=${OPTARG}
  esac
done

chmod +x /calc_lfc.R
chmod +x /src/lfc_functions.R
export HDF5_USE_FILE_LOCKING=FALSE
echo "${data_dir}" "${output_dir}" "${calc_gr}"
Rscript /calc_lfc.R "${data_dir}" "${output_dir}" "${calc_gr}"

exit_code=$?

echo "$exit_code"
exit $exit_code
