class AxilTty < Formula
  desc "axil-tty binary package"
  homepage "https://github.com/tty-pt/axil-tty"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.4.1/axil-tty-1.4.1-brew-arm64.tar.gz"
    sha256 "e2c3091cdc0436f76985c1b79aa3c3e0b6f17b8ce7b2e22b769731d6a3699756"
  else
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.4.1/axil-tty-1.4.1-brew-x86_64.tar.gz"
    sha256 "ab992534b702cf3e137f93cd5726863716196efbaf1b9d9c48d93d28df2cf998"
  end
  version "1.4.1"
  depends_on "axil"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
