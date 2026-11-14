class AxilAuth < Formula
  desc "axil-auth binary package"
  homepage "https://github.com/tty-pt/axil-auth"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.3.2/axil-auth-1.3.2-brew-arm64.tar.gz"
    sha256 "478d32609fad5aff9c62c5e7f59579776b642d6109bae88a4bd877c14a108ee4"
  else
    url "https://github.com/tty-pt/axil-auth/releases/download/v1.3.2/axil-auth-1.3.2-brew-x86_64.tar.gz"
    sha256 "86210393a55ecf1212b787c24deed41ca9debd7a335273b1a5fc3ceb94fa2a24"
  end
  version "1.3.2"
  depends_on "axil"
  depends_on "libcorm"
  depends_on "libxylem"
  depends_on "libstele"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
