# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Calcdate < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sgaunet/calcdate/releases/download/v1.3.0/calcdate_1.3.0_Darwin_arm64"
      sha256 "476cb68573fa34343300587c699dac034b552d648784980bb65455af0b3ec80b"

      def install
        bin.install "calcdate_1.3.0_Darwin_arm64" => "calcdate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/calcdate/releases/download/v1.3.0/calcdate_1.3.0_Darwin_x86_64"
      sha256 "6ef59dec56994a1999a0ada8e49f59fbb4a5f7ef2450b5efdb395b7d126dced5"

      def install
        bin.install "calcdate_1.3.0_Darwin_x86_64" => "calcdate"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/calcdate/releases/download/v1.3.0/calcdate_1.3.0_Linux_arm64"
      sha256 "57f863c1e7d1695dd33d8b7f0e5bd1b75c1794eb651132f8cf5a02654c717553"

      def install
        bin.install "calcdate_1.3.0_Linux_arm64" => "calcdate"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/calcdate/releases/download/v1.3.0/calcdate_1.3.0_Linux_armv6"
      sha256 "e44f63b1cd8e58d5428ddb69e2e411ebaf065802e3bd454089c642f6be5fc45d"

      def install
        bin.install "calcdate_1.3.0_Linux_armv6" => "calcdate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/calcdate/releases/download/v1.3.0/calcdate_1.3.0_Linux_x86_64"
      sha256 "cae7cfd9f84e9f6704a30b6baa0ebbb1b613ff8ac8a9232ae417ccb44616af6b"

      def install
        bin.install "calcdate_1.3.0_Linux_x86_64" => "calcdate"
      end
    end
  end
end