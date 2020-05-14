# DIDE - IntelliJ

Docker IDE Series - IntelliJ Environment

## Overview

Provide a [Duing](https://github.com/ayudadigital/docker-ubuntu-xrdp-mate-custom/tree/master/duing) Integrated Development Environment to execute IntelliJ IDE.

## Usage

Use the Ubuntu Desktop to develop Java applications.

1. Start the `dide-intellij` container.

    ```console
    $ docker run -dit --name dide-intellij \
            -v /var/run/docker.sock:/var/run/docker.sock \
            -p 3389:3389 \
            --shm-size 1g \
            --restart unless-stopped \
            ayudadigital/dide-intellij
    ```

2. Access with a remote desktop client to localhost:3389 using `ubuntu` user and `ubuntu` password.

3. Start IntelliJ under "Menu->Programming" group.

4. You can oppen a terminal using "Menu->Systemn Tools->MATE Terminal" and use the `docker` command.

## Build from scratch

TBD

## Contribute

You can [contribute](CONTRIBUTING.md) to the project following our [covenant code of conduct](CODE_OF_CONDUCT.md).
