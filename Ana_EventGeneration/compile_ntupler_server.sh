export FJINSTALL=/phys/users/zacmon/Packages/fastjet-3.3.0

echo
echo "Compiling with : "
echo "$ROOTSYS    : "${ROOTSYS}
echo "$FJINSTALL : "${FJINSTALL}
echo

g++ -o NTupler.exe NTupler.cc TelescopingJets.cc -I$ROOTSYS/include -I$FJINSTALL/include  -Wl,-rpath=$ROOTSYS/lib `$ROOTSYS/bin/root-config --glibs` `$FJINSTALL/fastjet-config --cxxflags --libs --plugins` -lNsubjettiness -lEnergyCorrelator   -std=c++1y

