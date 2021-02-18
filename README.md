# Ubuntu bitcoin development image

For quickly getting up and running contributing to bitcoin

## Docker

1) Install docker and make sure ```docker``` is on your path
2) Create a dev image with ```sh build.sh```
3) Launch and jump into a container from the image with ```sh run.sh```
4) If you lose your container blow away containers with ```sh purge-containers.sh``` then repeat number 3
5) To delete all images and containers ```sh purge.sh```

## Operating bitcoin

1) Enter local repo

```cd /bitcoin```

2) The bitcoin wallet uses berkely db, build/install it once with

```./contrib/install_db4.sh `pwd````

3) Compile bitcoin with

```
> export BDB_PREFIX='/bitcoin/db4'
> ./autogen.sh && ./configure BDB_LIBS="-L${BDB_PREFIX}/lib -ldb_cxx-4.8" BDB_CFLAGS="-I${BDB_PREFIX}/include"
> make clean
> make
> make install
```

5) Execute tests with

```
> make check
> test/functional/test_runner.py
```

