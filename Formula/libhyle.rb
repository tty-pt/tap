class Libhyle < Formula
  desc "libhyle binary package"
  homepage "https://github.com/tty-pt/libhyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle/releases/download/v1.3.0/libhyle-1.3.0-brew-arm64.tar.gz"
    sha256 "046fb62099ef0acd5e4d1907b064521d9d0a88e04402d2ae76d4e84ff65abd56"
  else
    url "https://github.com/tty-pt/libhyle/releases/download/v1.3.0/libhyle-1.3.0-brew-x86_64.tar.gz"
    sha256 "bee3238633d414036e3edd7fe63ad5930a4ab32f61a61215812743c941e01d7f"
  end
  version "1.3.0"
  depends_on "libcorm"
  depends_on "libstoma"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
