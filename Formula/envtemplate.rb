# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Envtemplate < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/envtemplate/releases/download/v0.2.0/envtemplate_0.2.0_darwin_amd64"
      sha256 "edf53e179ffa8cd7ebca2c3ec6deba439040da0dcb08d6349d8a5ed69cb62d4b"

      def install
        bin.install "envtemplate"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sgaunet/envtemplate/releases/download/v0.2.0/envtemplate_0.2.0_darwin_arm64"
      sha256 "e63b5b122fbd2fed95d53c37d5269b74a912d6a27e30c8c56f38148feb017f02"

      def install
        bin.install "envtemplate"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/envtemplate/releases/download/v0.2.0/envtemplate_0.2.0_linux_arm64"
      sha256 "1a55928ac3b629f118b3e23fa7d74474405f7a5f0bca55df30e897a742de07e9"

      def install
        bin.install "envtemplate"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/envtemplate/releases/download/v0.2.0/envtemplate_0.2.0_linux_armv6"
      sha256 "97ea4a4ccac3fb3d9e42df6ca68afbb964da71a93d07a791474d740bdb57987a"

      def install
        bin.install "envtemplate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/envtemplate/releases/download/v0.2.0/envtemplate_0.2.0_linux_amd64"
      sha256 "5cd0e4226259fb7df4cebca74d7b6568ce3bf20b441a23a42a01873e4dce0cc6"

      def install
        bin.install "envtemplate"
      end
    end
  end
end
