# wasm-variants

## Steps to build

1. Make sure **Ninja** build tool is installed.

```sh
python -m pip install ninja
```

2. Create and change to build directory

```sh
mkdir build
cd build
```

3. Build

```sh
emcmake cmake .. -G "Ninja"
cmake --build .
```
