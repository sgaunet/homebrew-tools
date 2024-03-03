# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dsn < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "2.2.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/dsn/releases/download/v2.2.3/dsn_2.2.3_darwin_amd64"
      sha256 "243e07003f0a7c11b89a7bd410c83ebd66ebc26e461c6092b68c16ee32a631ea"

      def install
        bin.install "dsn_2.2.3_darwin_amd64" => "dsn"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sgaunet/dsn/releases/download/v2.2.3/dsn_2.2.3_darwin_arm64"
      sha256 "cfd647c26c9e8c48322b37bc12fecd4c382e746d612e9c0d06717275199939ee"

      def install
        bin.install "dsn_2.2.3_darwin_arm64" => "dsn"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/dsn/releases/download/v2.2.3/dsn_2.2.3_linux_armv6"
      sha256 "8e6197e1a496416fe116fdb5e57a4e91dc474668a68cabaf4909fb9c6f7ace78"

      def install
        bin.install "dsn_2.2.3_linux_armv6" => "dsn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/dsn/releases/download/v2.2.3/dsn_2.2.3_linux_amd64"
      sha256 "857a586ff5b7346e85b687c57a89c46a184e3ea7f4b3be70441dbc377fc5d4be"

      def install
        bin.install "dsn_2.2.3_linux_amd64" => "dsn"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/dsn/releases/download/v2.2.3/dsn_2.2.3_linux_arm64"
      sha256 "3eb4965a80b111a8d4eaf700022eb1cdb078a2b64feeb5fa83cabee66acdb282"

      def install
        bin.install "dsn_2.2.3_linux_arm64" => "dsn"
      end
    end
  end
end
