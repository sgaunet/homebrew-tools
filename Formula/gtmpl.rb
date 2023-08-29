# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gtmpl < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sgaunet/gtmpl/releases/download/v1.0.2/gtmpl_Darwin_arm64.tar.gz"
      sha256 "35d14d3d91c34497c106f5a95c8a03c636ef3deceb303319692ffceb1aa4e1cd"

      def install
        bin.install "gtmpl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/gtmpl/releases/download/v1.0.2/gtmpl_Darwin_x86_64.tar.gz"
      sha256 "ef33208f240c9a588d571fdac71201c094963446dcd43f1a7e0770c2665bb820"

      def install
        bin.install "gtmpl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/gtmpl/releases/download/v1.0.2/gtmpl_Linux_armv6.tar.gz"
      sha256 "c898faf7d375c8a89a2a5c24190472b1452d24908f4f38a59201130b38a8664d"

      def install
        bin.install "gtmpl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/gtmpl/releases/download/v1.0.2/gtmpl_Linux_arm64.tar.gz"
      sha256 "5fc5712b7b0e3f38e9318a0e6117aa5694e8a8b202db813e4927fa94c7b45da3"

      def install
        bin.install "gtmpl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/gtmpl/releases/download/v1.0.2/gtmpl_Linux_x86_64.tar.gz"
      sha256 "3c9258f45de53ecb68a5823c258712ad088d74813ff72856d955b4ecf80176bf"

      def install
        bin.install "gtmpl"
      end
    end
  end
end
