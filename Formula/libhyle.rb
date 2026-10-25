class Libhyle < Formula
  desc "libhyle binary package"
  homepage "https://github.com/tty-pt/libhyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle/releases/download/v1.5.0/libhyle-1.5.0-brew-arm64.tar.gz"
    sha256 "76602e7379043df5aba7255f00299ff29726d619894748cfe610aaeeeb6ae82f"
  else
    url "https://github.com/tty-pt/libhyle/releases/download/v1.5.0/libhyle-1.5.0-brew-x86_64.tar.gz"
    sha256 "3a030839a2cf4512cbc81aaeeec04c11ad2ddb7533fe91b40e98b11da20de9be"
  end
  version "1.5.0"
  depends_on "libcorm"
  depends_on "liblemma"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
