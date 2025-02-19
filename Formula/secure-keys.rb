class SecureKeys < Formula
  desc 'Secure Keys is a simple tool to manage your secret keys in your iOS project'.freeze
  homepage 'https://github.com/DerianCordobaPerez/secure-keys-generator'.freeze
  url 'https://github.com/DerianCordobaPerez/secure-keys-generator/archive/refs/tags/v1.1.0.tar.gz'.freeze
  sha256 'de64e9146fd96cfa42a3dcfac1303e90f26a2a0fd8bf379ab9c783333eac6f4c'.freeze
  license 'MIT'.freeze

  depends_on 'ruby@3.3'
  depends_on macos: :sonoma

  def install
    ENV['GEM_HOME'] = libexec
    ENV['GEM_PATH'] = libexec

    system 'gem', 'install', 'secure-keys', '-v', '1.1.0'

    (bin / 'secure-keys').write_env_script libexec / 'bin/secure-keys',
                                           PATH: "#{Formula['ruby@3.3'].opt_bin}:#{libexec}/bin:$PATH",
                                           GEM_HOME: libexec.to_s,
                                           GEM_PATH: libexec.to_s
  end

  test do
    system 'which', 'secure-keys'
  end
end
