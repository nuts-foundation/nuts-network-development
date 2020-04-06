# dirs
mkdir -p bin
mkdir -p cordapps

# download corda network bootstrapper
curl https://repo1.maven.org/maven2/net/corda/corda-tools-network-bootstrapper/4.1/corda-tools-network-bootstrapper-4.4.jar --output bin/corda-tools-network-bootstrapper-4.4.jar

# download cordapps as they are needed to whitelist
curl https://repo1.maven.org/maven2/nl/nuts/consent/cordapp/contract/0.13.0/contract-0.13.0.jar --output cordapps/contract-0.13.0.jar
curl https://repo1.maven.org/maven2/nl/nuts/consent/cordapp/flows/0.13.0/flows-0.13.0.jar --output cordapps/flows-0.13.0.jar
