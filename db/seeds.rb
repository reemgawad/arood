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
    pattern: "011011 01011 0101011 01011",
    mnemonic: "فعولن مفاعيلن فعولن مفاعلن"
  }
)

almadeed = Meter.create(
  {
    name: "المديد",
    pattern: "",
    mnemonic: ""
  }
)

albaseet = Meter.create(
  {
    name: "البسيط",
    pattern: "0111 0110101 01101 0110101",
    mnemonic: "مستفعلن فاعلن مستفعلن فعلن"
  }
)

alkamel = Meter.create(
  {
    name: "الكامل",
    pattern: "0110111 0110111 0110111",
    mnemonic: "متفاعلن متفاعلن متفاعلن"
  }
)

alwafer = Meter.create(
  {
    name: "الوافر",
    pattern: "01011 0111011 0111011",
    mnemonic: ""
  }
)

alhazaj = Meter.create(
  {
    name: "الهزج",
    pattern: "0101011 0101011",
    mnemonic: "مفاعيلن مفاعيلن"
  }
)

alrajaz = Meter.create(
  {
    name: "الرجز",
    pattern: "0110101 0110101 0110101",
    mnemonic: "مستفعلن مستفعلن مستفعلن"
  }
)

alramal = Meter.create(
  {
    name: "الرمل",
    pattern: "0101101 0101101 0101101",
    mnemonic: ""
  }
)

alsaree3 = Meter.create(
  {
    name: "السريع",
    pattern: "01101 0110101 0110101",
    mnemonic: "مستفعلن مستفعلن فاعلن"
  }
)

almonsare7 = Meter.create(
  {
    name: "",
    pattern: "",
    mnemonic: ""
  }
)

alkhafeef = Meter.create(
  {
    name: "",
    pattern: "",
    mnemonic: ""
  }
)

almodare3 = Meter.create(
  {
    name: "",
    pattern: "",
    mnemonic: ""
  }
)

almoktadeb = Meter.create(
  {
    name: "",
    pattern: "",
    mnemonic: ""
  }
)

almojtath = Meter.create(
  {
    name: "",
    pattern: "",
    mnemonic: ""
  }
)

almutakarab = Meter.create(
  {
    name: "",
    pattern: "",
    mnemonic: ""
  }
)

almohdath = Meter.create(
  {
    name: "",
    pattern: "",
    mnemonic: ""
  }
)

puts "Done."
