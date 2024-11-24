#!/bin/bash

  make_options=(
    prefix=/mnt/data/julia
    bindir=/mnt/data/julia/bin
    sysconfdir=/mnt/data/julia/etc
    libexecdir=/mnt/data/julia/lib
    USE_BINARYBUILDER=0
    USE_SYSTEM_CSL=1
    USE_SYSTEM_LLVM=1
    USE_SYSTEM_LLD=1
    USE_SYSTEM_LIBUNWIND=1
    USE_SYSTEM_PCRE=1
    USE_SYSTEM_BLAS=1
    USE_SYSTEM_LAPACK=1
    USE_SYSTEM_LIBBLASTRAMPOLINE=1
    USE_SYSTEM_GMP=1
    USE_SYSTEM_MPFR=1
    USE_SYSTEM_LIBSUITESPARSE=1
    USE_SYSTEM_LIBWHICH=1
    USE_SYSTEM_DSFMT=0
    USE_SYSTEM_LIBUV=0
    USE_SYSTEM_UTF8PROC=1
    USE_SYSTEM_LIBGIT2=1
    USE_SYSTEM_LIBSSH2=1
    USE_SYSTEM_MBEDTLS=1
    USE_SYSTEM_CURL=0
    USE_SYSTEM_PATCHELF=1
    USE_SYSTEM_ZLIB=1
    USE_SYSTEM_P7ZIP=1
    USE_SYSTEM_OPENLIBM=1
    USE_BLAS64=1
    LIBBLAS=-lblas64
    LIBBLASNAME=libblas64
    LIBLAPACK=-llapack64
    LIBLAPACKNAME=liblapack64
    MARCH=x86-64
    JULIA_CPU_TARGET="generic;sandybridge,-xsaveopt,clone_all;haswell,-rdrnd,base(1)"
    VERBOSE=1
    JLDFLAGS="$LDFLAGS -lLLVM-16jl"
    LLVM_CONFIG=/usr/lib/llvm-julia/bin/llvm-config
  )

  LD_LIBRARY_PATH="/usr/lib/mbedtls2" make "${make_options[@]}" "$@"

