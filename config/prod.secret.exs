
# In this file, we load production configuration and secrets
# from environment variables. You can also hardcode secrets,
# although such is generally not recommended and you have to
# remember to add this file to your .gitignore.
use Mix.Config

secret_key_base = "g5vq7jjNOAE2xxkWUU+wFMKOPRz44zJTyhwdFVHhwa48TBGyZp75XrnMaDMkeuI0"


#区块链网页服务
config :phoenixVuecli, PhoenixVuecliWeb.Endpoint,
  http: [
    port: String.to_integer(System.get_env("block_web_port") || "4002"),
    transport_options: [socket_opts: [:inet6]]
  ],
  secret_key_base: secret_key_base