# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mdtohtml < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/mdtohtml/releases/download/v0.6.1/mdtohtml_0.6.1_Darwin_x86_64.tar.gz"
      sha256 "3a8a190ff7df6613cb75b0e6aa5a7224aaa066c03dc6897866bf520e6e33bbea"

      def install
        bin.install "mdtohtml"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sgaunet/mdtohtml/releases/download/v0.6.1/mdtohtml_0.6.1_Darwin_arm64.tar.gz"
      sha256 "eb9f32c1afc7773528cb0b3e15ad664aa4f47bd6bc52526c5981a6541fb77c9c"

      def install
        bin.install "mdtohtml"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/mdtohtml/releases/download/v0.6.1/mdtohtml_0.6.1_Linux_armv6.tar.gz"
      sha256 "f84b284f20861357c8d7c0fcf746b399b2fab42f5fb02d48ad5e94a601849856"

      def install
        bin.install "mdtohtml"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/mdtohtml/releases/download/v0.6.1/mdtohtml_0.6.1_Linux_x86_64.tar.gz"
      sha256 "35c078aad9fef872b34bdc278c5267e128486a1c7d8e33fd463ffc5e8fd06c60"

      def install
        bin.install "mdtohtml"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/mdtohtml/releases/download/v0.6.1/mdtohtml_0.6.1_Linux_arm64.tar.gz"
      sha256 "82e0ed5f0d8d375ec94f532a9e809238c2677cff672772513e6a94113d4228ce"

      def install
        bin.install "mdtohtml"
      end
    end
  end
end
