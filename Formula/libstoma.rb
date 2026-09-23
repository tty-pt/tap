class Libstoma < Formula
  desc "libstoma binary package"
  homepage "https://github.com/tty-pt/libstoma"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstoma/releases/download/v1.0.0/libstoma-1.0.0-brew-arm64.tar.gz"
    sha256 "4db1e4fff5bf3405acb90885bb497bd55d5658d29628ce7f92eddf5dd114a075"
  else
    url "https://github.com/tty-pt/libstoma/releases/download/v1.0.0/libstoma-1.0.0-brew-x86_64.tar.gz"
    sha256 "79c0abb0d6de9d9a8965c224e3413734b4fa3d4e93e663a90800703ba68a6e1e"
  end
  version "1.0.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
