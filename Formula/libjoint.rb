class Libjoint < Formula
  desc "libjoint binary package"
  homepage "https://github.com/tty-pt/libjoint"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libjoint/releases/download/v1.4.0/libjoint-1.4.0-brew-arm64.tar.gz"
    sha256 "7635610851c34899770b670cabd880e5820599afeaff9d16d526b68d1cdb327f"
  else
    url "https://github.com/tty-pt/libjoint/releases/download/v1.4.0/libjoint-1.4.0-brew-x86_64.tar.gz"
    sha256 "79978c8cdaabd477649225f70b4493a20ce19a2e9b286efef483c884ca22b956"
  end
  version "1.4.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
