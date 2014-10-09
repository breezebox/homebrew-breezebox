require "formula"

class Play225 < Formula
  homepage "http://www.playframework.org/"
  url "http://downloads.typesafe.com/play/2.2.5/play-2.2.5.zip"
  sha1 "18d44b5bc6dea0188a448920e40b659dd23ffef3"

  conflicts_with "sox", :because => "both install `play` binaries"

  def install
    rm_rf Dir["**/*.bat"]
    libexec.install Dir["*"]
    bin.install_symlink libexec/"play"
  end
end
