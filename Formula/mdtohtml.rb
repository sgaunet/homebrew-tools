# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mdtohtml < Formula
  desc "A simple and efficient Markdown to HTML converter"
  homepage "https://github.com/sgaunet/mdtohtml"
  version "0.7.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/mdtohtml/releases/download/v0.7.3/mdtohtml_0.7.3_darwin_amd64.tar.gz"
      sha256 "5caa927b577ec6c21d20d7b7f68951be4114f3b1e6758e8901348fa86bd1c5af"

      def install
        bin.install "mdtohtml"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sgaunet/mdtohtml/releases/download/v0.7.3/mdtohtml_0.7.3_darwin_arm64.tar.gz"
      sha256 "dfa9215b1556412d93f9709554b93fdaf2155ab0a692fc96ef1b2e0fdd8a2a1a"

      def install
        bin.install "mdtohtml"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/mdtohtml/releases/download/v0.7.3/mdtohtml_0.7.3_linux_amd64.tar.gz"
      sha256 "a6d9f47412c6e01ae70f9ef47581a197ce378e4493f7a4792a8c1edf61f8f171"
      def install
        bin.install "mdtohtml"
      end
    end
    if Hardware::CPU.arm? and !Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/mdtohtml/releases/download/v0.7.3/mdtohtml_0.7.3_linux_armv6.tar.gz"
      sha256 "a1370b457608fbf82a3d986483f89897763224b0343b9efe8f7fb7ec93a6355e"
      def install
        bin.install "mdtohtml"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/mdtohtml/releases/download/v0.7.3/mdtohtml_0.7.3_linux_arm64.tar.gz"
      sha256 "1d388467d91916fba82f8e345d3c0e164cb15807b3b76d52f024eeac69d4204a"
      def install
        bin.install "mdtohtml"
      end
    end
  end

  test do
    system "#{bin}/mdtohtml", "--help"
  end
end
