# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dsn < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "2.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/dsn/releases/download/v2.0.1/dsn_2.0.1_darwin_amd64"
      sha256 "3edc22525537797496000480aba37567d998b82987300dd0bfb397ef1b069862"

      def install
        bin.install "dsn_2.0.1_darwin_amd64" => "dsn"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sgaunet/dsn/releases/download/v2.0.1/dsn_2.0.1_darwin_arm64"
      sha256 "099dec595e9158865e21234ca3806ca1c665cb4710b889641295a77b64de4e80"

      def install
        bin.install "dsn_2.0.1_darwin_arm64" => "dsn"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/dsn/releases/download/v2.0.1/dsn_2.0.1_linux_amd64"
      sha256 "a98eb8f3af1c069d46c68449faadd6e2146967e62bd07989a030c24b9feee2ec"

      def install
        bin.install "dsn_2.0.1_linux_amd64" => "dsn"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/dsn/releases/download/v2.0.1/dsn_2.0.1_linux_arm64"
      sha256 "2f46dd2ee8d1046dd221db399f809fdb30dbb4cea671178c0e055cb57b7a5955"

      def install
        bin.install "dsn_2.0.1_linux_arm64" => "dsn"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/dsn/releases/download/v2.0.1/dsn_2.0.1_linux_armv6"
      sha256 "0cb98108674746dc84f96219a5e77d21b23cf60f16cc02b755bc588e9313b0c9"

      def install
        bin.install "dsn_2.0.1_linux_armv6" => "dsn"
      end
    end
  end
end
