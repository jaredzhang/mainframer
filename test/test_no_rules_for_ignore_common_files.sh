#!/bin/bash
set -e

# You can run it from any directory.
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Execute common pre-setup, include test functions.
source "$DIR/common.sh"

printTestStarted

# Make sure common ignore rules do not exist. 
rm -f "$COMMON_IGNORE_FILE"

# Run mainframer.sh that noops to make sure that it does not exit with error.
bash "$BUILD_DIR"/mainframer.sh 'echo noop'

printTestEnded
