# Belajar Unit Testing di Ruby on Rails

## Persiapan
Sebelum memulai unit testing, pastikan Anda telah menginstal Ruby on Rails dan memiliki proyek Rails yang siap untuk diuji.

## Menulis Unit Test
Ruby on Rails menggunakan framework `Minitest` untuk menulis dan menjalankan unit test. Berikut adalah langkah-langkah dasar untuk menulis unit test:

1. **Buat File Test**: Buat file test di dalam direktori `test/models` atau `test/controllers`.
2. **Tulis Test Case**: Gunakan kelas `ActiveSupport::TestCase` untuk menulis test case.
3. **Jalankan Test**: Gunakan perintah `rails test` untuk menjalankan semua test.

### Contoh
Berikut adalah contoh sederhana unit test untuk model `User`:

```ruby
# test/models/user_test.rb
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save user without email" do
    user = User.new
    assert_not user.save, "Saved the user without an email"
  end
end
```

## Menjalankan Test
Untuk menjalankan semua test, gunakan perintah berikut di terminal:

```sh
rails test
```
