
./run_simpoint.sh 400.perlbench  perlbench_base           checkspam.pl
./run_simpoint.sh 401.bzip2      bzip2_base               input.source
./run_simpoint.sh 403.gcc        gcc_base                 200.in
./run_simpoint.sh 410.bwaves     bwaves_base              bwaves.in
./run_simpoint.sh 416.gamess     gamess_base              triazolium.inp
./run_simpoint.sh 429.mcf        mcf_base                 inp.in
./run_simpoint.sh 433.milc       milc_base                su3imp.in
./run_simpoint.sh 434.zeusmp     zeusmp_base              zmp_in
./run_simpoint.sh 435.gromacs    gromacs_base             gromacs.tpr
./run_simpoint.sh 436.cactusADM  cactusADM_base           benchADM.par
./run_simpoint.sh 437.leslie3d   leslie3d_base            leslie3d.in
./run_simpoint.sh 445.gobmk      gobmk_base               nngs.tst
./run_simpoint.sh 450.soplex     soplex_base              ref.mps
./run_simpoint.sh 453.povray     povray_base              SPEC-benchmark-ref.pov
./run_simpoint.sh 454.calculix   calculix_base            hyperviscoplastic.inp
./run_simpoint.sh 456.hmmer      hmmer_base               swiss41
./run_simpoint.sh 458.sjeng      sjeng_base               ref.txt
./run_simpoint.sh 459.GemsFDTD   GemsFDTD_base            sphere.pec
./run_simpoint.sh 462.libquantum libquantum_base          control
./run_simpoint.sh 464.h264ref    h264ref_base             sss.yuv
./run_simpoint.sh 465.tonto      tonto_base               stdin
./run_simpoint.sh 470.lbm        lbm_base                 100_100_130_ldc.of
./run_simpoint.sh 471.omnetpp    omnetpp_base             omnetpp.ini
./run_simpoint.sh 473.astar      astar_base               BigLakes2048.bin
./run_simpoint.sh 481.wrf        wrf_base                 wrfinput_d01
./run_simpoint.sh 482.sphinx3    sphinx_livepretend_base  cen4-mdms2-b.be.raw
./run_simpoint.sh 483.xalancbmk  Xalan_base               t5.xml
./run_simpoint.sh 998.specrand   specrand_base            control
./run_simpoint.sh 999.specrand   specrand_base            control
echo "Running benchmarks without any input:"
./run_simpoint_no_inp.sh 444.namd       namd_base  
./run_simpoint_no_inp.sh 447.dealII     dealII_base

