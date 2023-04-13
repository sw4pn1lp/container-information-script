#!/bin/bash

# Check if container or image ID is provided as argument
if [ -z "$1" ]
then
  echo "Error: Please provide a container or image ID as argument"
  exit 1
fi

# Check if docker is installed
if ! command -v docker &> /dev/null
then
    echo "Error: Docker is not installed"
    exit 1
fi

# Get container or image information in JSON format
docker_info=$(docker inspect --format='{{json .}}' "$1")

# Check if container or image exists
if [ -z "$docker_info" ]
then
  echo "Error: Container or image with ID '$1' not found"
  exit 1
fi

# Parse and format the JSON data into a tabular format
docker_info_table=$(echo "$docker_info" | jq -r '. | keys_unsorted[] as $k | "\($k)\t\(.[$k])"')

# Display the tabular formatted data
echo -e "$docker_info_table"
