#!/bin/bash -e
#
# S2I run script for the 'apollo-configservice-build' image.
# The run script executes the server that runs your application.
#
# For more information see the documentation:
#	https://github.com/openshift/source-to-image/blob/master/docs/builder_image.md

echo "==== starting apollo portal ===="
/opt/portal/scripts/startup.sh
