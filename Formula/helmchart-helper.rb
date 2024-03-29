# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HelmchartHelper < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "0.1.0-beta6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/helmchart-helper/releases/download/v0.1.0-beta6/helmchart-helper_0.1.0-beta6_darwin_amd64"
      sha256 "af532c31ac31c41ae457110409649d3a5a09487aa544773e60ab55df11db9449"

      def install
        bin.install "helmchart-helper"
        # bash_completion.install "completions/foo.bash" => "foo"
        # ...
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sgaunet/helmchart-helper/releases/download/v0.1.0-beta6/helmchart-helper_0.1.0-beta6_darwin_arm64"
      sha256 "76e89908aa62e8b429ea9c397c7cf915da81749ace14ab831288610adc78f4ae"

      def install
        bin.install "helmchart-helper"
        # bash_completion.install "completions/foo.bash" => "foo"
        # ...
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/helmchart-helper/releases/download/v0.1.0-beta6/helmchart-helper_0.1.0-beta6_linux_armv6"
      sha256 "1b17f8165f40127c3c6b2d4ccde88450b458d608e53e7764ba378f121864f592"

      def install
        bin.install "helmchart-helper"
        # bash_completion.install "completions/foo.bash" => "foo"
        # ...
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sgaunet/helmchart-helper/releases/download/v0.1.0-beta6/helmchart-helper_0.1.0-beta6_linux_arm64"
      sha256 "5ab17ce587d48a06af14e073a88d79b70db2be6f4bc10330325f867464a3f9c8"

      def install
        bin.install "helmchart-helper"
        # bash_completion.install "completions/foo.bash" => "foo"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sgaunet/helmchart-helper/releases/download/v0.1.0-beta6/helmchart-helper_0.1.0-beta6_linux_amd64"
      sha256 "7efb23726cd44b72663bd69797d323a1e7321069981a5080510ae95a16e210d0"

      def install
        bin.install "helmchart-helper"
        # bash_completion.install "completions/foo.bash" => "foo"
        # ...
      end
    end
  end
end
