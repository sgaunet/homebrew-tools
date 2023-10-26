# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HelmchartHelper < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "0.1.0-beta2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sgaunet/helmchart-helper/releases/download/v0.1.0-beta2/helmchart-helper_0.1.0-beta2_darwin_arm64"
      sha256 "e049a1779b9d500f3c0423c7b8e4a3b96b26b8693ad9221c98b1e56c4d666696"

      def install
        bin.install "helmchart-helper"
        # bash_completion.install "completions/foo.bash" => "foo"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/helmchart-helper/releases/download/v0.1.0-beta2/helmchart-helper_0.1.0-beta2_darwin_amd64"
      sha256 "c949a2b2f897a4b9db351e58f4f80e9c158bd7adccc8ae42c28e8f7d2462d910"

      def install
        bin.install "helmchart-helper"
        # bash_completion.install "completions/foo.bash" => "foo"
        # ...
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/helmchart-helper/releases/download/v0.1.0-beta2/helmchart-helper_0.1.0-beta2_linux_armv6"
      sha256 "32b07cd22f42565be11e76cd8d16ab392c41da9595de1984654e129f874b3b1b"

      def install
        bin.install "helmchart-helper"
        # bash_completion.install "completions/foo.bash" => "foo"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/helmchart-helper/releases/download/v0.1.0-beta2/helmchart-helper_0.1.0-beta2_linux_amd64"
      sha256 "44e4887ae53763b9f9be75696ea44d5f13a397f9956524550e1f601e54b0f23d"

      def install
        bin.install "helmchart-helper"
        # bash_completion.install "completions/foo.bash" => "foo"
        # ...
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/helmchart-helper/releases/download/v0.1.0-beta2/helmchart-helper_0.1.0-beta2_linux_arm64"
      sha256 "ce1df0d00674b903c33e8a180911c3188d3d51793b7882ba5a22752d5436c453"

      def install
        bin.install "helmchart-helper"
        # bash_completion.install "completions/foo.bash" => "foo"
        # ...
      end
    end
  end
end