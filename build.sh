pushd ./libs/simulation-wasm
wasm-pack build --release
popd

pushd ./www
npm instal
npm run build
popd
