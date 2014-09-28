# Bottle Base Docker Image

The Dockerfile included in the repository creates an image based on the
ubuntu14.04 image with pip and python dev libraries installed. It also
installs the [bottle microframework](http://bottlepy.org) and the [gunicorn
WSGI server](http://gunicorn.org).

The image created will have a user names "apprunner" and group named
"apprunner" which are appropriate for running without root privileges. This
base image does not switch to that user, as the time and place for that is
appropriate for the derived image to determine.
