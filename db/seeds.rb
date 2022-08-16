# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
print "Cleaning up db..."
Meter.destroy_all
puts "Done."
print "Seeding meters..."

altaweel = Meter.create(
  {
    name: "الطويل",
    pattern: "11010110101011010110110",
    mnemonic: "فعولن مفاعيلن فعولن مفاعلن"
  }
)

almadeed = Meter.create(
  {
    name: "المديد",
    pattern: "1011010101101011010",
    mnemonic: "فاعلاتن فاعلن فاعلاتن"
  }
)

albaseet = Meter.create(
  {
    name: "البسيط",
    pattern: "10101101011010101101110",
    mnemonic: "مستفعلن فاعلن مستفعلن فعلن"
  }
)

alkamel = Meter.create(
  {
    name: "الكامل",
    pattern: "111011011101101110110",
    mnemonic: "متفاعلن متفاعلن متفاعلن"
  }
)

alwafer = Meter.create(
  {
    name: "الوافر",
    pattern: "1101110110111011010",
    mnemonic: "مفاعلتن مفاعلتن فعولن"
  }
)

alhazaj = Meter.create(
  {
    name: "الهزج",
    pattern: "11010101101010",
    mnemonic: "مفاعيلن مفاعيلن"
  }
)

alrajaz = Meter.create(
  {
    name: "الرجز",
    pattern: "101011010101101010110",
    mnemonic: "مستفعلن مستفعلن مستفعلن"
  }
)

alramal = Meter.create(
  {
    name: "الرمل",
    pattern: "101101010110101011010",
    mnemonic: "فاعلاتن فاعلاتن فاعلاتن"
  }
)

alsaree3 = Meter.create(
  {
    name: "السريع",
    pattern: "1010110101011010110",
    mnemonic: "مستفعلن مستفعلن فاعلن"
  }
)

almonsare7 = Meter.create(
  {
    name: "المنسرح",
    pattern: "101011010101011010110",
    mnemonic: "مستفعلن مفعولات مستفعلن"
  }
)

alkhafeef = Meter.create(
  {
    name: "الخفيف",
    pattern: "101101010101101011010",
    mnemonic: "فاعلاتن مستفعلن فاعلاتن"
  }
)

almodare3 = Meter.create(
  {
    name: "المضارع",
    pattern: "11010101011010",
    mnemonic: "مفاعيلن فاعلاتن"
  }
)

almoktadeb = Meter.create(
  {
    name: "",
    pattern: "10101011010110",
    mnemonic: ""
  }
)

almojtath = Meter.create(
  {
    name: "",
    pattern: "10101101011010",
    mnemonic: ""
  }
)

almutakarab = Meter.create(
  {
    name: "",
    pattern: "11010110101101011010",
    mnemonic: ""
  }
)

almohdath = Meter.create(
  {
    name: "",
    pattern: "10110101101011010110",
    mnemonic: ""
  }
)

puts "Done."
