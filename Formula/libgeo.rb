class Libgeo < Formula
  desc "libgeo binary package"
  homepage "https://github.com/tty-pt/libgeo"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libgeo/releases/download/v0.0.5/libgeo-0.0.5-macos-arm64.tar.gz"
    sha256 "2756bb3d612ea734ebb9e26bd057ee02044d47f3deeb4d19f8ab21d009a6ee17"
  else
    url "https://github.com/tty-pt/libgeo/releases/download/v0.0.5/libgeo-0.0.5-macos-x86_64.tar.gz"
    sha256 "596249dff6a5c513d326a00e1693ec4b5c2cea48a8aea8de89f605da84790e5e"
  end
  version "0.0.5"
  depends_on "libqdb"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
