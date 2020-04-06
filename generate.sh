
# setup working dir
mkdir -p build
rm -rf build/*

# copy config files
cp config/*.conf build

# copy cordapps
cp cordapps/* build

# now run the bootstrapper
cd build && java -jar ../bin/corda-tools-network-bootstrapper-4.4.jar --dir . --copy-cordapps Yes
rm *.log
cd -

# remove unneeded files
rm build/*.conf
rm build/*.jar
