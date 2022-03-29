# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Art < Formula
  desc "Argonaut makes DevOps Simple"
  homepage "https://argonaut.dev/"
  version "0.7.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/argonautdev/public/releases/download/v0.7.3/art_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "64d30db75b531462dafe3dda8278f621d09f5d684fd9f5bfd3fc6961042d1730"

      def install
        bin.install "art"
        bash_completion.install "completions/art.bash" => "art"
        zsh_completion.install "completions/art.zsh" => "_art"
        fish_completion.install "completions/art.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/argonautdev/public/releases/download/v0.7.3/art_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "4de481d3dfeb1f559ff0bb36b90a66bc6d3787e88a23ea018b9e5d33d4c776c2"

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
      url "https://github.com/argonautdev/public/releases/download/v0.7.3/art_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "693af19f615570e592a739415afddb6cbb17deb5ee0cbc1a35e0b150ada388c2"

      def install
        bin.install "art"
        bash_completion.install "completions/art.bash" => "art"
        zsh_completion.install "completions/art.zsh" => "_art"
        fish_completion.install "completions/art.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/argonautdev/public/releases/download/v0.7.3/art_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "df57c97e079ffb9132546a08b424f93cf0c326f4bf6f172633969decb54ec439"

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
