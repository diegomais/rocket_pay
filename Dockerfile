FROM elixir:alpine

RUN mix local.hex --force && \
  mix archive.install hex phx_new 1.5.3 --force && \
  mix local.rebar --force

ENV APP_HOME /usr/src/app

WORKDIR $APP_HOME

COPY mix.exs mix.lock ./

RUN mix do deps.get, deps.compile

COPY . .

RUN mix ecto.create

RUN mix ecto.migrate

CMD ["mix", "phx.server"]
