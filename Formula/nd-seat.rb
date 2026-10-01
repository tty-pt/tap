class NdSeat < Formula
  desc "nd-seat binary package"
  homepage "https://github.com/tty-pt/nd-seat"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-seat/releases/download/v1.0.2/nd-seat-1.0.2-brew-arm64.tar.gz"
    sha256 "c14e0fafc2681adec4098f32364f6cbd02bc465674cde164215bcffc2606fb8f"
  else
    url "https://github.com/tty-pt/nd-seat/releases/download/v1.0.2/nd-seat-1.0.2-brew-x86_64.tar.gz"
    sha256 "3b90174c025924595b7c5ba3b0b27545843d4e44b4c65a7a1d4932e7846f3159"
  end
  version "1.0.2"
  depends_on "axil-nd"
  depends_on "libxylem"
  depends_on "nd-fight"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
