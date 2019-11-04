# nuts-network-development

Temporary project for bootstrapping the development network

## about

This project helps in generating the needed keys and files for setting up the development network. This project is no longer needed when the https://github.com/nuts-foundation/nuts-discovery service has been extended and is being hosted for the development network.

## requirements

current scripts have only been tested on MacOS. The corda network bootstrapper needs Java to operate. Currently Java 8 is required (next version will require Java 11). Make sure it is installed and selected. Test this with `java -version`.

You might also have to change the permissions on the scripts:

```
chmod +x *.sh 
```

## dependencies

This project uses the network bootstrapper from Corda. The `dependencies.sh` script will download it. Apart from the bootstrapper tool, the current Nuts cordapps are downloaded as well. All downloaded dependencies:

- corda bootstrapper jar
- Nuts contract jar
- Nuts flows jar

## config

The `config` dir holds the different config files for the nodes you wish to include in the network. Adding a config file will expand the network with an additional node.

```
Note: changing anything requires the entire network to get the new files including keys, nodeInfo files and network parameters.  
```

## generate the network

run

```
./generate.sh
```

## deploy nodes

In the `build` dir, a dir is created for each node. To deploy a node the following files are needed in the exact same dir structure:

- network-parameters
- node.conf
- nodeInfo-{HASH}
- additional-node-infos/{ALL_NODE_INFO_FILES}
- certificates/nodekeystore.jks
- certificates/sslkeystore.jks
- certificates/truststore.jks
 