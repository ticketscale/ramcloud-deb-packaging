# ramcloud-deb-packaging
Contains the files required for packaging RamCloud as a deb file.

The deb is available at https://public-debs.ticketscale.io/

This is a apt repo containing the packaged up debs that we open source.

To install add new repository to /etc/apt/sources.list:

```
deb https://public-debs.ticketscale.io/ trusty main
```

And import key that is used to sign the release:

```
wget -O - https://www.ticketscale.io/ticketscale.gpg.key|apt-key add -
```
