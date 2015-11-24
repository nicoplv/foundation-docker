# Pull base image.
FROM debian

# Install necessary package.
RUN \
    apt-get update \
    && apt-get install -y \
        nodejs-legacy \
        npm \
        git \
    && npm install -g bower \
    && npm install -g foundation-cli \
    && adduser foundation --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password

# Define the user.
USER foundation

# Define workdir.
WORKDIR /home/foundation

# Define default command.
CMD ["foundation", "watch"]