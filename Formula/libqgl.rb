class Libqgl < Formula
  desc "libqgl binary package"
  homepage "https://github.com/tty-pt/libqgl"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqgl/releases/download/v1.1.0/libqgl-1.1.0-brew-arm64.tar.gz"
    sha256 "70ea14c55fad993f26e11d31f43a4d7fc534be1ce3b8e533598082f12dffb54e"
  else
    url "https://github.com/tty-pt/libqgl/releases/download/v1.1.0/libqgl-1.1.0-brew-x86_64.tar.gz"
    sha256 "2891079073878f93e57fb94fb2be3a09fa5ea0d6728ff5dd2726e4935932b454"
  end
  version "1.1.0"
  depends_on "libcorm"
  depends_on "glfw"
  depends_on "libpng"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
