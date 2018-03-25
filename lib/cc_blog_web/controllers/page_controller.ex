defmodule CcBlogWeb.PageController do
  use CcBlogWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
