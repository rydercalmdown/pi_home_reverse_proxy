#!/bin/bash
# establish_remote_connection.sh
# Establishes a remote connection with the cloud server
# intended to be run on a Raspberry Pi serving something


# The IP of your running service in the cloud
export REMOTE_HOST=your_remote_ip_address

# Keep this at 5000, it is configured in nginx config remotely
export REMOTE_PORT=5000

# The local host of the service to forward (usually 0.0.0.0)
export LOCAL_HOST=0.0.0.0

# The local port of the running service to forward
export LOCAL_PORT=80


ssh -N -T -R $REMOTE_PORT:$LOCAL_HOST:$LOCAL_PORT piconnect@$REMOTE_HOST
