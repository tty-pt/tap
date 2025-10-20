class Libgeo < Formula
  desc "libgeo binary package"
  homepage "https://github.com/tty-pt/libgeo"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libgeo/releases/download/v0.1.1/libgeo-0.1.1-brew-arm64.tar.gz"
    sha256 "4133e5e2cf775a92948f750ebee8a51188e7c0a424bc5b3884642a9c165a65b9"
  else
    url "https://github.com/tty-pt/libgeo/releases/download/v0.1.1/libgeo-0.1.1-brew-x86_64.tar.gz"
    sha256 "0f8ffd6a84ff06e9946bd694fe3cf0c65e82bd5d8b4d59aecbebe5acabc15169"
  end
  version "0.1.1"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
