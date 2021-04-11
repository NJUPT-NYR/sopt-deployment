FROM rust:1.51

LABEL maintainer="cattchen<chen749923710@gmail.com>"

WORKDIR /usr/src/app

RUN mkdir -p ~/.cargo

RUN echo "[source.crates-io]\nregistry = \"https://github.com/rust-lang/crates.io-index\"\nreplace-with = 'tuna'\n[source.tuna]\nregistry = \"https://mirrors.tuna.tsinghua.edu.cn/git/crates.io-index.git\"\n" > ~/.cargo/config.toml

RUN cargo install sqlx-cli

RUN export PATH=~/.cargo/bin:$PATH

CMD cargo sqlx migrate run && cargo run