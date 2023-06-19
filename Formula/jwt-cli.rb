# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class JwtCli < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sgaunet/jwt-cli/releases/download/0.1.0/jwt-cli_0.1.0_darwin_arm64"
      sha256 "3fc4a2dc23326ff5556abfbdc071c45e1605bf6ad019168b57294f475048898f"

      def install
        bin.install "jwt-cli_0.1.0_darwin_arm64" => "jwt-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/jwt-cli/releases/download/0.1.0/jwt-cli_0.1.0_darwin_amd64"
      sha256 "d6ad99d3b2f3213f658811b555e14823db89ca21575261d05094190cb614f706"

      def install
        bin.install "jwt-cli_0.1.0_darwin_amd64" => "jwt-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/jwt-cli/releases/download/0.1.0/jwt-cli_0.1.0_linux_arm64"
      sha256 "079fb05293619ac10e2ff2fc28db26d01af0a536c25e343fbdf6f235237ec87e"

      def install
        bin.install "jwt-cli_0.1.0_linux_arm64" => "jwt-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/jwt-cli/releases/download/0.1.0/jwt-cli_0.1.0_linux_amd64"
      sha256 "29caccb2ff4a85486f87a444cba46c2b9ae7f4e730875247502563d97c9dded1"

      def install
        bin.install "jwt-cli_0.1.0_linux_amd64" => "jwt-cli"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/jwt-cli/releases/download/0.1.0/jwt-cli_0.1.0_linux_armv6"
      sha256 "ee8bc19ffa6e4a8d1d5b5deb630adc1b152bf14d6d255ddd38fc3bb4c577c714"

      def install
        bin.install "jwt-cli_0.1.0_linux_armv6" => "jwt-cli"
      end
    end
  end
end
