#! /bin/bash
cd "$(dirname "$0")"

source_code_dir=$(cd "$(dirname "$0")";pwd)

echo "src:${source_code_dir}"
cd build
cd build-node.xcodeproj
sed -i '' "s|LD_RUNPATH_SEARCH_PATHS = (\"|LD_RUNPATH_SEARCH_PATHS = (\"@loader_path |g" project.pbxproj

sed -i '' "s|FRAMEWORK_SEARCH_PATHS = (\"|FRAMEWORK_SEARCH_PATHS = (\"\$(SRCROOT) |g" project.pbxproj

sed -i '' "s|MACOSX_DEPLOYMENT_TARGET = 12.6|MACOSX_DEPLOYMENT_TARGET = 11.0|g" project.pbxproj
