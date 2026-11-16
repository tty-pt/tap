class AxilAuren < Formula
  desc "axil-auren binary package"
  homepage "https://github.com/tty-pt/axil-auren"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.5.3/axil-auren-1.5.3-brew-arm64.tar.gz"
    sha256 "0c597f5e9f9ae46a002bbd384f6da4db47758b841b5d44ff46dd9bde9fa15ffc"
  else
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.5.3/axil-auren-1.5.3-brew-x86_64.tar.gz"
    sha256 "b262d4b5da5c78ec33629675c0df4fc11ad91a7af480faa21312dab9cd807f48"
  end
  version "1.5.3"
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
