class Lichado < Formula
  desc "Tool to check whether an Azure DevOps License should be updated"
  homepage "https://github.com/whiteducksoftware/azure-devops-license-checker"
  version "v1.0.0"
  license "MIT"
  
  # Define all platform-specific URLs and SHA256 checksums
  if Hardware::CPU.intel?
    url "https://github.com/whiteducksoftware/azure-devops-license-checker/releases/download/v1.0.0/lichado-osx-x64.tar.gz"
    sha256 "0f5554e0394bae0c170860fc27344b332a37a1eca269598b03942b9ca0ea0424"
  elsif Hardware::CPU.arm?
    url "https://github.com/whiteducksoftware/azure-devops-license-checker/releases/download/v1.0.0/lichado-osx-arm64.tar.gz"
    sha256 "3f63a5f14ef64e34ebd41c3456776b30954c6ad0933bed86bb45e5dfc03254b4"
  end

  # Linux (assuming x64)
  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/whiteducksoftware/azure-devops-license-checker/releases/download/v1.0.0/lichado-linux-x64.tar.gz"
      sha256 "75ea202d8e59ec2938608a0f9112f623c6bc1dbbf68106cdf6d398df1ed9e6d5"
    elsif Hardware::CPU.arm?
      url "https://github.com/whiteducksoftware/azure-devops-license-checker/releases/download/v1.0.0/lichado-linux-arm64.tar.gz"
      sha256 "fcb49f16ecab4918f8a16f35af55adfa66d9a90d90ef5e9c06ca64f6c6d1c2bf"
    end
  end

  def install
    # Installation commands depending on platform
    bin.install "lichado"
  end
end
