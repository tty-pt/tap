class Libit < Formula
  desc "libit binary package"
  homepage "https://github.com/tty-pt/libit"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libit/releases/download/v1.2.1/libit-1.2.1-brew-arm64.tar.gz"
    sha256 "47cf7c32a170b0f67f850109fdf2567b4f650d39ce5e46d8a013f19f332c699c"
  else
    url "https://github.com/tty-pt/libit/releases/download/v1.2.1/libit-1.2.1-brew-x86_64.tar.gz"
    sha256 "03478dab5911e4737e35c3c4c554df23f209a6e632ad7bfda791eaa51da17d23"
  end
  version "1.2.1"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
