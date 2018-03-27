defmodule CcBlogWeb.PageController do
  use CcBlogWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def politics(conn, _params) do
    render conn, "politics.html"
  end

  def strip_test(conn, _params) do
    render conn, "strip_test.html"
  end
end
