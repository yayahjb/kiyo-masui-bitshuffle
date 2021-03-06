ifelse(h5plugindir,`',`define(`h5plugindir',`/usr/local/hdf5/lib/plugin')')dnl
ifelse(omp,`',`define(`omp',`0')')dnl
`[install]
# These control the installation of the hdf5 dynamically loaded filter plugin.
h5plugin = 0
h5plugin-dir = 'h5plugindir`

[build_ext]
# Whether to compile with OpenMP multi-threading. Default is system dependant:
# False on OSX (since the clang compiler does not yet support OpenMP) and True
# otherwise.
omp = 'omp
