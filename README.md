# Local Documentation

This is a simple MkDocs dev server running as a SystemD service. Serving linked private notes from various projects.

The virtual environment (`.venv`) must be created manually prior to installing the service.

## Decision log:

* The service will run as a SystemD service instead of docker, because docker does not respect symbolic links.