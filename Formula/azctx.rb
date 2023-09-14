# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azctx < Formula
  desc "Faster switching between Azure Subscriptions in your Azure CLI"
  homepage "https://github.com/whiteducksoftware/azctx"
  version "2023.09.2"
  license "MIT"

  depends_on "azure-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whiteducksoftware/azctx/releases/download/2023.09.2/azctx_darwin_arm64.zip"
      sha256 "5d0905b06f78c503811113c37319cf27538324af03cf382eeb9dc5fe448b1c34"

      def install
        bin.install "azctx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/whiteducksoftware/azctx/releases/download/2023.09.2/azctx_darwin_amd64.zip"
      sha256 "fd2cdfbeff4e65c8e071f7c8d257de8a3c7c73fc7b52e26b5125e96bef72c33f"

      def install
        bin.install "azctx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/whiteducksoftware/azctx/releases/download/2023.09.2/azctx_linux_armv6.zip"
      sha256 "a970d3cfad13fb4b3c36a434ca0dec2720d2aec18e33563560dbcdb3da749be2"

      def install
        bin.install "azctx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/whiteducksoftware/azctx/releases/download/2023.09.2/azctx_linux_amd64.zip"
      sha256 "06af30cd717446f13406393c385b4aafbcea85dc6c43984fc2c696dc09429a70"

      def install
        bin.install "azctx"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/whiteducksoftware/azctx/releases/download/2023.09.2/azctx_linux_arm64.zip"
      sha256 "cbba786173a2e85cb6797155573451ec5c0ba27b2ebe850ade9ad24c515575f3"

      def install
        bin.install "azctx"
      end
    end
  end
end
