#!/bin/bash

# Make sure all the paths are correct

rm -r build
rm -r install

MY_PATH=$(pwd)
BML_LIB="${MY_PATH}/../bml/install"
export ESSL_DIR=${ESSL_DIR:="${OLCF_ESSL_ROOT}"}
export CC=${CC:=gcc}
export FC=${FC:=gfortran}
#export FC=${FC:=mpif90}
export CXX=${CXX:=g++}
export BLAS_VENDOR=${BLAS_VENDOR:=GNU}
export PROGRESS_OPENMP=${PROGRESS_OPENMP:=yes}
#export PROGRESS_MPI=${PROGRESS_MPI:=yes}
export INSTALL_DIR=${INSTALL_DIR:="${MY_PATH}/install"}
export PROGRESS_TESTING=${PROGRESS_TESTING:=yes}
export PROGRESS_EXAMPLES=${PROGRESS_EXAMPLES:=yes}
export CMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE:=Release}
export EXTRA_FCFLAGS=${EXTRA_FCFLAGS:=" -I${BML_LIB}/include/ -fopenmp -ffree-line-length-none -lblas -llapack"}
export EXTRA_LINK_FLAGS=${EXTRA_LINK_FLAGS:="-L${BML_LIB}/lib64/ -lbml_fortran -lbml -fopenmp -lblas -llapack"}
export CMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH:=$BML_LIB}



./build.sh configure

                                                                                                                                                                                              
                                    
