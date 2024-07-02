# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gini < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "0.4.1"

  on_macos do
    on_intel do
      url "https://github.com/sgaunet/gini/releases/download/v0.4.1/gini_0.4.1_darwin_amd64"
      sha256 "7b02a9968ea4ca938d4db5d33e4c68a5c914b42645bebd134b2fe8d3114ef21d"

      def install
        bin.install "gini_0.4.1_darwin_amd64" => "gini"
      end
    end
    on_arm do
      url "https://github.com/sgaunet/gini/releases/download/v0.4.1/gini_0.4.1_darwin_arm64"
      sha256 "5d2cad62d0bddb584ad39781d57adc29e2f2bb056a5c3401365dac8975cc92bd"

      def install
        bin.install "gini_0.4.1_darwin_arm64" => "gini"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/gini/releases/download/v0.4.1/gini_0.4.1_linux_amd64"
        sha256 "92a58f1a08b473765c0baa3b560f4b52d57c04403495084712aac221c667a963"

        def install
          bin.install "gini_0.4.1_linux_amd64" => "gini"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/gini/releases/download/v0.4.1/gini_0.4.1_linux_armv6"
        sha256 "16d8d862d44e873bc37c1a9b851d09ce0c592dffbe5eff79c8e4ff83a5f71fed"

        def install
          bin.install "gini_0.4.1_linux_armv6" => "gini"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/gini/releases/download/v0.4.1/gini_0.4.1_linux_arm64"
        sha256 "e36b46c0c97e10c35864a649b0b95ab0e71e8c7eaf2782317a6d9ebb83858ee4"

        def install
          bin.install "gini_0.4.1_linux_arm64" => "gini"
        end
      end
    end
  end
end
