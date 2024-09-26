# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HelmchartHelper < Formula
  desc ""
  homepage "https://github.com/sgaunet/homebrew-tools"
  version "0.1.1"

  on_macos do
    on_intel do
      url "https://github.com/sgaunet/helmchart-helper/releases/download/v0.1.1/helmchart-helper_0.1.1_darwin_amd64"
      sha256 "a1afdaca37e6fbc26fb7680af9c57f81809dbca6091ed4da2a06113aa2d18cc8"

      def install
        bin.install "helmchart-helper"
        # bash_completion.install "completions/foo.bash" => "foo"
        # ...
      end
    end
    on_arm do
      url "https://github.com/sgaunet/helmchart-helper/releases/download/v0.1.1/helmchart-helper_0.1.1_darwin_arm64"
      sha256 "8e3615146b65621e8657184fe5fcca26b1e684b499f497a9d665e2191fbedf43"

      def install
        bin.install "helmchart-helper"
        # bash_completion.install "completions/foo.bash" => "foo"
        # ...
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/helmchart-helper/releases/download/v0.1.1/helmchart-helper_0.1.1_linux_amd64"
        sha256 "7c9c7f0b28d0de1ddce0840268e0fbd3d1e725ff350db8cc69bc1c6ca46d09c4"

        def install
          bin.install "helmchart-helper"
          # bash_completion.install "completions/foo.bash" => "foo"
          # ...
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/helmchart-helper/releases/download/v0.1.1/helmchart-helper_0.1.1_linux_armv6"
        sha256 "49b929d74725525d007220e39d5df57c575d8a2f73f59f7637dc7a7e344369aa"

        def install
          bin.install "helmchart-helper"
          # bash_completion.install "completions/foo.bash" => "foo"
          # ...
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sgaunet/helmchart-helper/releases/download/v0.1.1/helmchart-helper_0.1.1_linux_arm64"
        sha256 "18462bfd2659b0ef9d015e7d979122650bfcde2475e49528a6c9bee7799e072c"

        def install
          bin.install "helmchart-helper"
          # bash_completion.install "completions/foo.bash" => "foo"
          # ...
        end
      end
    end
  end
end