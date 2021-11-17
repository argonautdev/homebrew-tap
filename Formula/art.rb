# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Art < Formula
  desc "Argonaut makes DevOps Simple"
  homepage "https://argonaut.dev/"
  version "0.4.6-alpha.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/argonautdev/public/releases/download/v0.4.6-alpha.2/art_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "43b33f1d8852a4b619fbaeaf3bcf674d5ebfc02ccb0a01670e5d48cb336180f7"

      def install
        bin.install "art"
        bash_completion.install "completions/art.bash" => "art"
        zsh_completion.install "completions/art.zsh" => "_art"
        fish_completion.install "completions/art.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/argonautdev/public/releases/download/v0.4.6-alpha.2/art_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "8a99fa30e3f00e1b6ed167e95c8298316da1340d32eec4b5ccd85f50f896152e"

      def install
        bin.install "art"
        bash_completion.install "completions/art.bash" => "art"
        zsh_completion.install "completions/art.zsh" => "_art"
        fish_completion.install "completions/art.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/argonautdev/public/releases/download/v0.4.6-alpha.2/art_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "4a6f95d981d6b67c21cd3d66691d03cefe3d9bf6c6fbed3b7fd8539653cee70f"

      def install
        bin.install "art"
        bash_completion.install "completions/art.bash" => "art"
        zsh_completion.install "completions/art.zsh" => "_art"
        fish_completion.install "completions/art.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/argonautdev/public/releases/download/v0.4.6-alpha.2/art_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "8d8c61072d1f02b55041402ecc41b26a34e42f261ae92eb243fed03d412066ae"

      def install
        bin.install "art"
        bash_completion.install "completions/art.bash" => "art"
        zsh_completion.install "completions/art.zsh" => "_art"
        fish_completion.install "completions/art.fish"
      end
    end
  end

  test do
    system "#{bin}/art -v"
  end
end
