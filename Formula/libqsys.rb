class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-macos-arm64.tar.gz"
    sha256 "b71991b1bf9adb80a1bf1bc848bb0af7916d8f7c4d053b8eb6cac69acb698122"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-macos-x86_64.tar.gz"
    sha256 "22085e6a210a68525ef7fe781d5f0afe93aa8ebfe36f88256dfdf0c96a04e025"
  end
  version "0.0.11"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
