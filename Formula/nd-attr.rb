class NdAttr < Formula
  desc "nd-attr binary package"
  homepage "https://github.com/tty-pt/nd-attr"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-attr/releases/download/v1.0.1/nd-attr-1.0.1-brew-arm64.tar.gz"
    sha256 "9acc19f47f1cbf9782e376b286ee05fe31369ebbedf116ce6a0c446af1a0abbd"
  else
    url "https://github.com/tty-pt/nd-attr/releases/download/v1.0.1/nd-attr-1.0.1-brew-x86_64.tar.gz"
    sha256 "9f2f77c2669ace0bd84751e36264b7517610955ba89577e3bc9d227d4e3618f6"
  end
  version "1.0.1"
  depends_on "axil-nd"
  depends_on "libxylem"
  depends_on "nd-level"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
