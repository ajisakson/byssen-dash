FROM rustlang/rust:nightly

ARG PORT

ENV ROCKET_ADDRESS=0.0.0.0
ENV ROCKET_ENV=staging

WORKDIR /app
COPY . .

WORKDIR /app/server
RUN cargo build --release

CMD ROCKET_PORT=$PORT ./target/release/byssen-server
