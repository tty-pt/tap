class AxilAuth < Formula
  desc "axil-auth binary package"
  homepage "https://github.com/tty-pt/axil-auth"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.2.0/axil-auth-1.2.0-brew-arm64.tar.gz"
    sha256 "5deb54bb239a7d02f26c957d2a42eb3a190f1224db8cbb14ab5765346b83dff2"
  else
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.2.0/axil-auth-1.2.0-brew-x86_64.tar.gz"
    sha256 "5519bc54b4ea9c933d78485c54b19c3809ea60aca20d5bb0a7f1c67943c28346"
  end
  version "1.2.0"
  depends_on "axil"
  depends_on "libcorm"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
