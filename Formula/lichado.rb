class Lichado < Formula
  desc "Tool to check whether an Azure DevOps License should be updated"
  homepage "https://github.com/whiteducksoftware/azure-devops-license-checker"
  version "v1.0.0"
  license "MIT"
  
  # Define all platform-specific URLs and SHA256 checksums
  if Hardware::CPU.intel?
    url "https://github.com/whiteducksoftware/azure-devops-license-checker/releases/download/v1.0.0/lichado-osx-x64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  elsif Hardware::CPU.arm?
    url "https://github.com/whiteducksoftware/azure-devops-license-checker/releases/download/v1.0.0/lichado-osx-arm64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  # Linux (assuming x64)
  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/whiteducksoftware/azure-devops-license-checker/releases/download/v1.0.0/lichado-linux-x64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    elsif Hardware::CPU.arm?
      url "https://github.com/whiteducksoftware/azure-devops-license-checker/releases/download/v1.0.0/lichado-linux-arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    # Installation commands depending on platform
    bin.install "lichado"
  end
end
