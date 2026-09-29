class AxilTty < Formula
  desc "axil-tty binary package"
  homepage "https://github.com/tty-pt/axil-tty"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.3.0/axil-tty-1.3.0-brew-arm64.tar.gz"
    sha256 "06191b7f79ba4cf3cda764972fe8ce8c41e72e7fac722e6f8aedbc13d2e13741"
  else
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.3.0/axil-tty-1.3.0-brew-x86_64.tar.gz"
    sha256 "5d554c8eb9601ad0a94f974e57fdfbaf06330142730ba1d8f69149d85a014a9d"
  end
  version "1.3.0"
  depends_on "axil"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
