class User < ApplicationRecord
 #passと確認pass一致チェック
 has_secure_password

 #validation check
  validates :name,
    uniqueness: true,
    presence: true,
    length: { maximum: 16 },
    format: {
      with: /\A[a-z0-9]+\z/,
      message: 'は小文字英数字で入力してください'
    }

  validates :password,
    length: { minimum: 8 },
    format: {
      with: /\A[A-Za-z0-9]+\z/,
      message: 'は大文字小文字英数字を含んだ８文字以上である必要があります'
    }
end
