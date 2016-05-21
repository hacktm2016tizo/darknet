#! /usr/bin/env bash
#
# run.sh
# 
# runs yolo with the weights

[[ -f "darknet" ]] || exit "no good"

run () {
	local size

	size=$1

	./darknet yolo test cfg/yolo-${size}.cfg \
		yolo-${size}.weights
}

run $1
