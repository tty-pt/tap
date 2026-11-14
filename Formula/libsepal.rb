class Libsepal < Formula
  desc "libsepal binary package"
  homepage "https://github.com/tty-pt/libsepal"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libsepal/releases/download/v1.5.0/libsepal-1.5.0-brew-arm64.tar.gz"
    sha256 "05179b325fcf11c3763e51a906f7214fd68970ce40e3457ca8e9b3495c176f97"
  else
    url "https://github.com/tty-pt/libsepal/releases/download/v1.5.0/libsepal-1.5.0-brew-x86_64.tar.gz"
    sha256 "a601ccebec6f7b2321e62604b7ece6d7f8fb866f19cdd60ee79176ae2baa800a"
  end
  version "1.5.0"
  depends_on "libcorm"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
