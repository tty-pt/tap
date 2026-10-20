class LibhyleSource < Formula
  desc "libhyle-source binary package"
  homepage "https://github.com/tty-pt/libhyle-source"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.1.0/libhyle-source-1.1.0-brew-arm64.tar.gz"
    sha256 "dff1133d1eb9e9167ec0666cdd449ea876262174475558f158f4018f50e3914f"
  else
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.1.0/libhyle-source-1.1.0-brew-x86_64.tar.gz"
    sha256 "f0526c4994b8becfa3167537a6c56924963c43c879205aba156abf5f518ec2d0"
  end
  version "1.1.0"
  depends_on "libqsys"
  depends_on "libcorm"
  depends_on "liblemma"
  depends_on "libhyle"
  depends_on "json-c"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
