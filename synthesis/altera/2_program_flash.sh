#!/bin/bash

###############################################################################
#                            Parameter Check                                  #
###############################################################################
EXPECTED_ARGS=1
if [ $# -ne $EXPECTED_ARGS ]; then
    echo ""
    echo "ERROR          : wrong number of arguments"
    echo "USAGE          : ./2_program_flash.sh <bitstream name>"
    echo "EXAMPLE        : ./2_program_flash.sh    leds"
    echo ""
    echo "AVAILABLE BITSTREAMS:"
    for fullfile in ./bitstreams/*.sof ; do
        filename=$(basename "$fullfile")
        filename="${filename%.*}"
        echo "                       - $filename"
    done
    echo ""
  exit 1
fi

###############################################################################
#                     Check if the required files exist                       #
###############################################################################
soffile=./bitstreams/$1.sof;
poffile=./bitstreams/$1.pof;

if [ ! -e $soffile ]; then
    echo ""
    echo "ERROR: Specified SOF file doesn't exist: $soffile"
    echo ""
    exit 1
fi

###############################################################################
#                             Generate POF file
###############################################################################
echo " ---------------------------------------------------------"
echo "|  GENERATE POF FILE"
echo "|"
echo "|  $soffile --> $poffile"
echo "|"
echo " ---------------------------------------------------------"
echo ""

# Copy and process COF file
cp scripts/sof2pof.cof ./bitstreams/.
sed -ie "s/BITSTREAM_NAME/$1/g"  ./bitstreams/sof2pof.cof

# Convert SOF file to POF
quartus_cpf.exe -c ./bitstreams/sof2pof.cof

# Cleanup
rm -rf ./bitstreams/sof2pof.cof*


###############################################################################
#                             Program FLASH                                   #
###############################################################################
echo ""
echo " ---------------------------------------------------------"
echo "|  PROGRAM FLASH: $poffile"
echo " ---------------------------------------------------------"
echo ""
echo "Note: if failing:"
echo "                  - try killing 'jtagd', running 'jtagconfig'"
echo "                  - try as 'root'"
echo "                  - check dev usb permissions"
echo ""

## Program flash
quartus_pgm.exe --mode=AS -o p\;$poffile

