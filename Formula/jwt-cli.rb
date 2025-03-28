# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class JwtCli < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "1.2.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/jwt-cli/releases/download/v1.2.2/jwt-cli_1.2.2_darwin_amd64"
      sha256 "3b60dd15cf04d8eff3477c07514534509aa76ae34b4e61a7778570e4262bd44d"

      def install
        bin.install "jwt-cli_1.2.2_darwin_amd64" => "jwt-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sgaunet/jwt-cli/releases/download/v1.2.2/jwt-cli_1.2.2_darwin_arm64"
      sha256 "be080159cba90dafc58e801a3af3b5604c44d51d101efc7ba01e5433a3442bd0"

      def install
        bin.install "jwt-cli_1.2.2_darwin_arm64" => "jwt-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/jwt-cli/releases/download/v1.2.2/jwt-cli_1.2.2_linux_amd64"
        sha256 "837f7b06ca5c8045c71ef39ea4fd7ec387ef04649d9ba2dc1c1d983ed65138b3"

        def install
          bin.install "jwt-cli_1.2.2_linux_amd64" => "jwt-cli"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/jwt-cli/releases/download/v1.2.2/jwt-cli_1.2.2_linux_armv6"
        sha256 "d59aa4af01edc17a95ba732209f4be661a25ba053169761710b69045d46b0e64"

        def install
          bin.install "jwt-cli_1.2.2_linux_armv6" => "jwt-cli"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/jwt-cli/releases/download/v1.2.2/jwt-cli_1.2.2_linux_arm64"
        sha256 "68fd530252e93e3c1153e81b05fd3e2861d066f825d9b3a2ef97a5441192222c"

        def install
          bin.install "jwt-cli_1.2.2_linux_arm64" => "jwt-cli"
        end
      end
    end
  end
end
