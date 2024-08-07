# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class JwtCli < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "1.2.0"

  on_macos do
    on_intel do
      url "https://github.com/sgaunet/jwt-cli/releases/download/v1.2.0/jwt-cli_1.2.0_darwin_amd64"
      sha256 "0e85a39b3217cb5c19ebe01f29bcb578726fe42f2550bb64b40e7bb11ac6d269"

      def install
        bin.install "jwt-cli_1.2.0_darwin_amd64" => "jwt-cli"
      end
    end
    on_arm do
      url "https://github.com/sgaunet/jwt-cli/releases/download/v1.2.0/jwt-cli_1.2.0_darwin_arm64"
      sha256 "4793efddd5f323e460d9112b4da86ab0381a02b6f87ff01d1c60df0a470a356e"

      def install
        bin.install "jwt-cli_1.2.0_darwin_arm64" => "jwt-cli"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/jwt-cli/releases/download/v1.2.0/jwt-cli_1.2.0_linux_amd64"
        sha256 "09aa0e416c58a3a53628d2e5562b8de422c786fe85e340810627a546c8030a01"

        def install
          bin.install "jwt-cli_1.2.0_linux_amd64" => "jwt-cli"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/jwt-cli/releases/download/v1.2.0/jwt-cli_1.2.0_linux_armv6"
        sha256 "6659c5ded88548b440734e0d2ada73e14872af9c6f26f2e2c379a1ba552ea58e"

        def install
          bin.install "jwt-cli_1.2.0_linux_armv6" => "jwt-cli"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/jwt-cli/releases/download/v1.2.0/jwt-cli_1.2.0_linux_arm64"
        sha256 "8c496b799f4ce27c7e372e94b3271fe6a76e1b02dedad7de21daad2baa0083a6"

        def install
          bin.install "jwt-cli_1.2.0_linux_arm64" => "jwt-cli"
        end
      end
    end
  end
end
