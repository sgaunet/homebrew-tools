# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gocrypt < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "1.5.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/gocrypt/releases/download/v1.5.1/gocrypt_1.5.1_darwin_amd64"
      sha256 "c3965596c2626539dd94626f6e69a56137591ceeba216986cb833143e1afc1e2"

      def install
        bin.install "gocrypt_1.5.1_darwin_amd64" => "gocrypt"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sgaunet/gocrypt/releases/download/v1.5.1/gocrypt_1.5.1_darwin_arm64"
      sha256 "9e8bc0c3c67b20c4b22e10f72143385cf7448f5a113b9dfd3c7ccdce159c8c80"

      def install
        bin.install "gocrypt_1.5.1_darwin_arm64" => "gocrypt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/gocrypt/releases/download/v1.5.1/gocrypt_1.5.1_linux_amd64"
        sha256 "7b9342268b6fa29f5a51b5784076f80ae931c08eced667e6341bd66ef8de30c8"

        def install
          bin.install "gocrypt_1.5.1_linux_amd64" => "gocrypt"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/gocrypt/releases/download/v1.5.1/gocrypt_1.5.1_linux_armv6"
        sha256 "afe303d79ddbec51751064c466c749d3c4b094a0172e5b3d6cfd5ab6fa79f7c6"

        def install
          bin.install "gocrypt_1.5.1_linux_armv6" => "gocrypt"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/gocrypt/releases/download/v1.5.1/gocrypt_1.5.1_linux_arm64"
        sha256 "a5a86585c1c5cf736d2b82fedf35e7962cf87c10f4ccec2df27638b4f63b5428"

        def install
          bin.install "gocrypt_1.5.1_linux_arm64" => "gocrypt"
        end
      end
    end
  end
end
