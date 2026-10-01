class NdLevel < Formula
  desc "nd-level binary package"
  homepage "https://github.com/tty-pt/nd-level"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-level/releases/download/v1.0.1/nd-level-1.0.1-brew-arm64.tar.gz"
    sha256 "29bcc99bc44793f70989422c5f85dfab2b2a79380421385dded6d2f93a1fe0f7"
  else
    url "https://github.com/tty-pt/nd-level/releases/download/v1.0.1/nd-level-1.0.1-brew-x86_64.tar.gz"
    sha256 "ed41c5222dcf82fe8fbe3e565e924d9c3be714deeda1c10c4860473b305eb933"
  end
  version "1.0.1"
  depends_on "axil-nd"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
