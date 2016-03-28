# ramcloud-deb-packaging
Contains the files required for packaging RamCloud as a deb file.

The deb is available at https://public-debs.ticketscale.io/

To install add new repository to /etc/apt/sources.list:

```
deb [arch=amd64] http://public-debs.ticketscale.io/ticketscale-public/ trusty main
```

And import key that is used to sign the release:

```
wget -O - https://www.ticketscale.io/ticketscale.gpg.key|apt-key add -
```

See [https://ticketscale.io/opensource.html](https://ticketscale.io/opensource.html) for more info.
