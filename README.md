# Cativity

## SW Usage

nRF51 s110 softdevice is used by default (see `Makefile.project`), so at first you need to flash the softdevice binary:

```
make softdevice
```

The above command erase the chip and programs the softdevice binary appropriately. Now compile the user program and flash/upload it:

```
make
make upload
```

## Example/Test SW

Use `segger.py` script directly to flash `.bin` binaries.

### Proximity/RSSI test

```
export BUILD_PATH=./build
python segger.py flash examples/ble_peripheral_proximity_nrf518222_xxaa_s110.bin 0x18000
```

## HW Errata
- ANT footprint
- QFN thermal pad paste mask too large
- Remove paste mask from programming pads
- 2u2 pad size too large, should be 0402
