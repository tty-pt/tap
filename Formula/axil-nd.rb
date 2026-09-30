class AxilNd < Formula
  desc "axil-nd binary package"
  homepage "https://github.com/tty-pt/axil-nd"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-nd/releases/download/v1.0.0/axil-nd-1.0.0-brew-arm64.tar.gz"
    sha256 "1242ce9608398c251f3d77c6c2024e07679f5548e70bf45d48de9e3bef629efe"
  else
    url "https://github.com/tty-pt/axil-nd/releases/download/v1.0.0/axil-nd-1.0.0-brew-x86_64.tar.gz"
    sha256 "1666554d56b0715329f973c4c409a61a25b1b36ac2264ad1a9a3b9f009ee93c7"
  end
  version "1.0.0"
  depends_on "axil"
  depends_on "libcorm"
  depends_on "libxylem"
  depends_on "libislet"
  depends_on "libqsys"
  depends_on "axil-tty"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
