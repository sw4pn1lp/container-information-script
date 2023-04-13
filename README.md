# Container Info Script

This script is used to retrieve information about a Docker container using the docker inspect command. It takes a container ID or image ID as an argument and displays the information in a tabular format.

## Prerequisites

This script requires Docker to be installed and running on the system.

## Usage

To use the script, simply run the container_info.sh file with the container ID or image ID as the argument:

`./container_info.sh <container_id or image_id>`

The script will output the following information in a tabular format:

- Container ID
- Image ID
- Container Name
- Container Status
- Network Settings
- Mounts

## Example

Here's an example of how to use the script:

`$ ./container_inspect.sh abc123456789`

This will output the following information:

| Key | Value |
| --- | --- |
| ID | abc123456789 |
| Name | my_container |
| Image | my_image:latest |
| State | running |
| Ports | 80/tcp |
| Mounts | /data:/var/www/html |


## Note

This script assumes that you have Docker installed and running on your system. If Docker is not installed, the script will not work.

