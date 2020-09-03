#sudo systemctl start docker.service
#cargo install cross
cross build --release --target x86_64-unknown-linux-gnu
cross build --release --target aarch64-linux-android
cross build --release --target x86_64-pc-windows-gnu

cp target/x86_64-unknown-linux-gnu/release/rhex bin/rhex
cp target/aarch64-linux-android/release/rhex bin/rhex-aarch64-linux-android
cp target/x86_64-pc-windows-gnu/release/rhex.exe bin/rhex.exe