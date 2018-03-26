defmodule CcBlogWeb.PageController do
  use CcBlogWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def politics(conn, _params) do
    render conn, "politics.html"
  end
end
