# Shorelark

A simulation of evolution, based on the excellent project of the same name, [shorelark](https://github.com/Patryk27/shorelark), by [Patryk27](https://github.com/Patryk27).

## About

This uses a neural network and a genetic algorithm to simulate evolution.

All the simulation is written in Rust, which is then compiled to WebAssembly, to allow us to run the simulation in the browser.

There are 3 main components.

1. The Neural Network
2. The Genetic Algorithm
3. The Simulation itself

### The Neural Network

The kind of network used is a "[feedforward neural network](https://en.wikipedia.org/wiki/Feedforward_neural_network)" and is implemented in [this repo](https://github.com/bendoerry/shorelark-neural-network).

### The Genetic Algorithm

This is used when training the neural network and is implemented in [this repo](https://github.com/bendoerry/shorelark-genetic-algorithm).

### The Simulation

This is brings the network and genetic algorithm together. The neural network is used as a "brain" for some "bird" that are distributed randomly in a world.

The simulation involves two libraries, but most of the logic is contained in [this repo](https://github.com/bendoerry/shorelark-simulation). This is responsible for actually simulating the birds and the world they're in. The second library, which is in [this repo](https://github.com/bendoerry/shorelark-simulation-wasm), is only responsible for allowing this project to be compiled to WebAssembly and therefore able to run in a browser.

## Building

This project requires Rust, wasm-pack, and npm. However building is quite straightforward and can be done by using the included build script

```console
./build.sh
```

If you want to then add the project to your website you just need to take the files that are now in `www/dist` and serve them.

**Warning**: Your web server will need to be aware of the WebAssembly content type.

## Usage

You can run this project locally by first building project using the included build script, and then navigating to the `www` directory and running

```console
npm run start
```

You should now be able to see the simulation working at `http://localhost:8080`.

