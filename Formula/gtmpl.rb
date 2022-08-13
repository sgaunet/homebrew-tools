# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gtmpl < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/gtmpl/releases/download/v1.0.1/gtmpl_Darwin_x86_64.tar.gz"
      sha256 "516f998f968336a9d526501c85a170486c93c658893f098f06f59ae596fede25"

      def install
        bin.install "gtmpl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sgaunet/gtmpl/releases/download/v1.0.1/gtmpl_Darwin_arm64.tar.gz"
      sha256 "137319452aa5c4f5df3f289e7dad84c3714cdc13947982b761b695fbeda9e3b7"

      def install
        bin.install "gtmpl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/gtmpl/releases/download/v1.0.1/gtmpl_Linux_armv6.tar.gz"
      sha256 "b2ffb064135ca701c13127defc3dc8f6931c9eb17e57a2a11f0ab68ef9784557"

      def install
        bin.install "gtmpl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/gtmpl/releases/download/v1.0.1/gtmpl_Linux_arm64.tar.gz"
      sha256 "3653efb1444baf3a2f18df56b9248e27a074a0287882b6bb0cc52b5027a47953"

      def install
        bin.install "gtmpl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/gtmpl/releases/download/v1.0.1/gtmpl_Linux_x86_64.tar.gz"
      sha256 "7e1a74ed5eb577ef607b9ef53b65a957e9e1898cb715a78465ae669317939360"

      def install
        bin.install "gtmpl"
      end
    end
  end
end
