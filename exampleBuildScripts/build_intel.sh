CC=mpiicc FC=mpiifort CMAKE_BUILD_TYPE=Release PROGRESS_OPENMP=yes PROGRESS_MPI=yes PROGRESS_GRAPHLIB=yes PROGRESS_TESTING=yes PROGRESS_EXAMPLES=yes PKG_CONFIG_PATH=/home/mewall/gitlab/bml/install/lib64/pkgconfig CMAKE_INSTALL_PREFIX=/home/mewall/gitlab/progress EXTRA_LINK_FLAGS="-L/home/mewall/packages/metis-5.1.0/build/Linux-x86_64/ -lmetis -L${MKLROOT}/lib/intel64 -lmkl_gf_lp64 -lmkl_core -lmkl_gnu_thread" ./build.sh configure
