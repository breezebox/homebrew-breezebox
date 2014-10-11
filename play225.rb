
require "formula"

class Play225 < Formula
  homepage "http://www.playframework.org/"
  url "http://downloads.typesafe.com/play/2.2.5/play-2.2.5.zip"
  sha1 "73b7249fc06c378d153ec7fd5c9389621491a9f9"

  # conflicts_with "sox", :because => "both install `play` binaries"


  # depends_on "cmake" => :build
  depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    # system "./configure", "--disable-debug",
    #                      "--disable-dependency-tracking",
    #                      "--disable-silent-rules",
    #                      "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    # system "make", "install" # if this fails, try separate make/make install steps

    rm_rf Dir["**/*.bat"]
    libexec.install Dir["*"]
    bin.install_symlink libexec/"play"
  end

end


