defmodule CcBlog.Application do
  use Application

  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec

    # Define workers and child supervisors to be supervised
    children = [
      # Start the Ecto repository
      supervisor(CcBlog.Repo, []),
      # Start the endpoint when the application starts
      supervisor(CcBlogWeb.Endpoint, []),
      # Start your own worker by calling: CcBlog.Worker.start_link(arg1, arg2, arg3)
      # worker(CcBlog.Worker, [arg1, arg2, arg3]),
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: CcBlog.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    CcBlogWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
