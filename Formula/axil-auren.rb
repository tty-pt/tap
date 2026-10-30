class AxilAuren < Formula
  desc "axil-auren binary package"
  homepage "https://github.com/tty-pt/axil-auren"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.4.0/axil-auren-1.4.0-brew-arm64.tar.gz"
    sha256 "2fcf76615de445f045808444e3a9caf76ff3c060e14f07bb3583fceed9391015"
  else
    url "https://github.com/tty-pt/axil-auren/releases/download/v1.4.0/axil-auren-1.4.0-brew-x86_64.tar.gz"
    sha256 "dea33c25da36526ee4f40865c85ff9bb06bb3ef8295b6d6bb64f8112c520d98f"
  end
  version "1.4.0"
  depends_on "axil"
  depends_on "libxylem"
  depends_on "libqsys"
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
