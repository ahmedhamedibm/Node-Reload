# Node-Reloader

## Description
This project automatically takes the server url portion of the oc login command as a positional argument and will then automatically reload all cluster nodes.

## Installation

You can access this project two ways. 
```bash
# Clone this rep
git clone https://github.ibm.com/National-Northeast-1/Node-Reloader.git

# Change into the directory of the repo 
cd Node-Reloader

# Make the python script executable
chmod +x node_reload

# If you would like to use node_reload as a command line utility, run the commands below. If on mac substitute .bashrc with .zshrc.
cp node_reload ~/bin/
echo 'export PATH=$PATH":$HOME/bin"' >> ~/.bashrc
source ~/.bashrc

```


### ----------------------------------------------------------------------------OR----------------------------------------------------------------------
#####	*Note ensure the url is up-to-date in the curl command below by going to the raw view of the node_reload_helper.sh file in the repo and copying the link.
```bash
# Curl the helper script to added the node_reload utility directly to your path.
curl -sSL https://raw.github.ibm.com/National-Northeast-1/Node-Reloader/main/node_reload_helper.sh?token=AACTOHKKQPOUCUWLSCZPDMLDFT3DO | bash

# Source your profile
source ~/.bashrc

```
## Prerequisite
Must have python 3.6 or newer.

## Usage
After installation or pulling the repo.

1. First login to the ibmcloud cli using the command below. Make sure you select the correct account relative to your openshift cluster.
```bash
ibmcloud login --sso --no-region
``` 
2. Login in to the openshift cluster web console and copy just the server portion of the oc login command.In the example below you would only copy https://c111-e.us-east.containers.cloud.ibm.com:31969 .

```bash
oc login --token=sha256~LKh9Gqe0db_BrjlUR2L_e84NRNd1c8CgfkqoOimgAQg --server=https://c111-e.us-east.containers.cloud.ibm.com:31969
```

3. Run the command below based of your environment.
```bash
# If you have added the node_reload script to your path run
node_reload <serverURL>
# If you have not added it to path
cd Node-Reloader
./node_reload <serverURL>
```


## Warning

This is for internal use only to aggregate the reload process. It has only been minimally tested on rhel and ubuntu images.
