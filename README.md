# Foundation Docker Image

#### What is this image?

This image includes all necessary tools to use [Foundation CLI](https://github.com/zurb/foundation-cli), the command-line interface for [Foundation frameworks](http://foundation.zurb.com/).

#### How to use this image?

###### Build or get docker image:

	docker build -t nicoplv/foundation 'PATH_TO_DOCKERFILE'

or

	docker pull nicoplv/foundation

###### Create a new foundation project:

Starts the setup process for a new Foundation project. The CLI will ask you which framework you want to use and a folder name for the project.

	docker run -it --rm -v 'PATH_TO_PARENT_FOLDER':/home/foundation nicoplv/foundation foundation new

###### Watch foundation project for changes:

While inside of your app's folder, use this command to assemble your app automatically when a change appear.

	docker run -it --rm -v 'PATH_TO_FOUNDATION_FOLDER':/home/foundation nicoplv/foundation

###### Build foundation project for production:

To build your app for production

	docker run -it --rm -v 'PATH_TO_FOUNDATION_FOLDER':/home/foundation nicoplv/foundation foundation build

###### Update foundation project:

Run this command to update an existing project to the newest version of Foundation.

	docker run -it --rm -v 'PATH_TO_FOUNDATION_FOLDER':/home/foundation nicoplv/foundation foundation update