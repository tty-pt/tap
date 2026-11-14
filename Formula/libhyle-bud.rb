class LibhyleBud < Formula
  desc "libhyle-bud binary package"
  homepage "https://github.com/tty-pt/libhyle-bud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-bud/releases/download/v1.2.0/libhyle-bud-1.2.0-brew-arm64.tar.gz"
    sha256 "304d3f322ac8e47197fc527fdb5c338994399822d21992bc2154f06657a97480"
  else
    url "https://github.com/tty-pt/libhyle-bud/releases/download/v1.2.0/libhyle-bud-1.2.0-brew-x86_64.tar.gz"
    sha256 "b01ae6cb39fb4dca5f67cec7eabe948b70c763b92aebd7ffbf0ef3a7ffb6148a"
  end
  version "1.2.0"
  depends_on "libstele"
  depends_on "libcorm"
  depends_on "libhyle"
  depends_on "libbud"
  depends_on "libhyle-source"
  depends_on "json-c"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
