class AxilAuren < Formula
  desc "axil-auren binary package"
  homepage "https://github.com/tty-pt/axil-auren"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.5.0/axil-auren-1.5.0-brew-arm64.tar.gz"
    sha256 "60ed8ee5de377eff71ccd4c21c2b8b1c3e6ccb6a1aff26c0d5cda4fca0768a96"
  else
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.5.0/axil-auren-1.5.0-brew-x86_64.tar.gz"
    sha256 "82bcd8e6ec68d0403b78075f9893f48512ffcf15148283790b4058411393e064"
  end
  version "1.5.0"
  depends_on "axil"
  depends_on "libxylem"
  depends_on "libstele"
  depends_on "libcorm"
  depends_on "libsepal"
  depends_on "cmake"
  depends_on "libomp"
  depends_on "json-c"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
