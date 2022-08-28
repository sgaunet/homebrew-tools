# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Calcdate < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/calcdate/releases/download/v1.0.0/calcdate_1.0.0_Darwin_x86_64"
      sha256 "2c1e5327408e84a4cbb03344a88ed41b9e6961c5c4bbd52f361188f88874d9f7"

      def install
        bin.install "calcdate_1.0.0_Darwin_x86_64" => "calcdate"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sgaunet/calcdate/releases/download/v1.0.0/calcdate_1.0.0_Darwin_arm64"
      sha256 "a789b5fd9548b9e9bb566f34d4efa4a49e4dff600e634e3524c25eb16c3cd135"

      def install
        bin.install "calcdate_1.0.0_Darwin_arm64" => "calcdate"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/calcdate/releases/download/v1.0.0/calcdate_1.0.0_Linux_arm64"
      sha256 "83302017083f534978918e54429e16c240af038d6c04f647243f904d620346d6"

      def install
        bin.install "calcdate_1.0.0_Linux_arm64" => "calcdate"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/calcdate/releases/download/v1.0.0/calcdate_1.0.0_Linux_armv6"
      sha256 "758501ff0de7cc14056a7a9be8999f80bfb3a2be439ac2988bf9ae7a00e10716"

      def install
        bin.install "calcdate_1.0.0_Linux_armv6" => "calcdate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/calcdate/releases/download/v1.0.0/calcdate_1.0.0_Linux_x86_64"
      sha256 "53ef64ec33a39f659f014d59963e626c33fbc741a9c3838a5d4c2d2e4192965f"

      def install
        bin.install "calcdate_1.0.0_Linux_x86_64" => "calcdate"
      end
    end
  end
end
