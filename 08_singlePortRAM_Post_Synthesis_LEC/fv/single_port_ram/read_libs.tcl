add_search_path /run/media/user1/c2s/cadence/install/SCLPDK/scl_pdk/stdlib/fs120/liberty/lib_flow_ss /run/media/user1/c2s/cadence/install/SCLPDK/scl_pdk/stdlib/fs120/liberty/lib_flow_ff -library -both
read_library -liberty -both \
    /run/media/user1/c2s/cadence/install/SCLPDK/scl_pdk/stdlib/fs120/liberty/lib_flow_ss/tsl18fs120_scl_ss.lib \
    /run/media/user1/c2s/cadence/install/SCLPDK/scl_pdk/iolib/cio150/synopsys/2002.05/models/tsl18cio150_max.lib \
    /run/media/user1/c2s/cadence/install/SCLPDK/scl_pdk/stdlib/fs120/liberty/lib_flow_ss/tsl18fs120_scl_ss.lib \
    /run/media/user1/c2s/cadence/install/SCLPDK/scl_pdk/iolib/cio150/synopsys/2002.05/models/tsl18cio150_max.lib

