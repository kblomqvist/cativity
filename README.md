# Cativity

## SW Usage

Softdevice s110 has been used by default, see Makefile.projet. So at first flash the softdevice binary:

```
make softdevice
```

The chip gets erased and the softdevice is placed into the beginning of the flash.

Now you can compile the user program. And flash/upload it into the correct flash region:

```
make
make upload
```

## HW Errata
- ANT footprint
- QFN thermal pad paste mask too large
- Remove paste mask from programming pads
- 2u2 pad size too large, should be 0402
