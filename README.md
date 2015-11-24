# Foundation Docker Image

## Build or get docker image

	docker build -t nicoplv/foundation 'PATH_TO_DOCKERFILE'

or

	docker pull nicoplv/foundation

## Create a new foundation project

	docker run -it --rm -v 'PATH_TO_PARENT_FOLDER':/home/foundation nicoplv/foundation foundation new

## Watch foundation project for changes

	docker run -it --rm -v 'PATH_TO_FOUNDATION_FOLDER':/home/foundation nicoplv/foundation

## Build foundation project for production

	docker run -it --rm -v 'PATH_TO_FOUNDATION_FOLDER':/home/foundation nicoplv/foundation foundation build