# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Art < Formula
  desc "Argonaut makes DevOps Simple"
  homepage "https://argonaut.dev/"
  version "0.4.6-alpha.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/argonautdev/public/releases/download/v0.4.6-alpha.3/art_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "a154e7768e277fcc08d210867aac8d400d6ae8ec05d8324c44cf409ffb93ad69"

      def install
        bin.install "art"
        bash_completion.install "completions/art.bash" => "art"
        zsh_completion.install "completions/art.zsh" => "_art"
        fish_completion.install "completions/art.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/argonautdev/public/releases/download/v0.4.6-alpha.3/art_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "599a96b5d2ea31b6acf86b600388773ec38845caf038b6bfb03deea18cc692dc"

      def install
        bin.install "art"
        bash_completion.install "completions/art.bash" => "art"
        zsh_completion.install "completions/art.zsh" => "_art"
        fish_completion.install "completions/art.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/argonautdev/public/releases/download/v0.4.6-alpha.3/art_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "4f3f064c3774bc02c814a2ce023e5f0827c69af4ac44a5dfd9149ab5acc93269"

      def install
        bin.install "art"
        bash_completion.install "completions/art.bash" => "art"
        zsh_completion.install "completions/art.zsh" => "_art"
        fish_completion.install "completions/art.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/argonautdev/public/releases/download/v0.4.6-alpha.3/art_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "a51d9e84430cda8d88ed7de7ad5b1b2b8e8205b967d7e23486c2e6103d8a6c02"

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
