require 'rails_helper'
describe Item do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品' do
    context '商品出品がうまくいくとき' do
      it 'name,image,price,user,explanation,genre_id,quality_id,payment,_id,prefecture_id,days_idが存在していれば保存できること' do
        expect(@item).to be_valid
      end
    end
    context '商品出品がうまくいかないとき' do
      it 'nameが空では保存できないこと' do
        @item.name = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end
      it 'imageが空では保存できないこと' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it 'explanationが空では保存できないこと' do
        @item.explanation = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Explanation can't be blank")
      end
      it 'genre_idが空では保存できないこと' do
        @item.genre = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Genre can't be blank")
      end
      it 'quality_idが空では保存できないこと' do
        @item.quality = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Quality can't be blank")
      end
      it 'payment_idが空では保存できないこと' do
        @item.payment = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Payment can't be blank")
      end
      it 'prefecture_idが空では保存できないこと' do
        @item.prefecture = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Prefecture can't be blank")
      end
      it 'days_idが空では保存できないこと' do
        @item.days = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Days can't be blank")
      end
      it 'priceが空では保存できないこと' do
        @item.price = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end
      it 'userが紐づいていないと出品できない' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("User must exist")
      end
      it 'priceが299以下では保存できないこと' do
        @item.price = 299
        @item.valid?
        expect(@item.errors.full_messages).to include('Price must be greater than 300')
      end
      it 'priceが10000000以上では保存できないこと' do
        @item.price = 10_000_000
        @item.valid?
        expect(@item.errors.full_messages).to include('Price must be less than 9999999')
      end
      it "genre_idの値が、id: 0,name:'--'の時は保存できないこと" do
        @item.genre_id = [0]
        @item.valid?
        expect(@item.errors.full_messages).to include("Genre can't be blank", 'Genre is not a number')
      end
      it "quality_idの値が、id:0,name:'--'の時は保存できないこと" do
        @item.quality_id = [0]
        @item.valid?
        expect(@item.errors.full_messages).to include("Quality can't be blank", 'Quality is not a number')
      end
      it "payment_idの値が、id:0,name:'--'の時は保存できないこと" do
        @item.payment_id = [0]
        @item.valid?
        expect(@item.errors.full_messages).to include("Payment can't be blank", 'Payment is not a number')
      end
      it "prefecture_idの値が、id:0,name:'--'の時は保存できないこと" do
        @item.prefecture_id = [0]
        @item.valid?
        expect(@item.errors.full_messages).to include("Prefecture can't be blank", 'Prefecture is not a number')
      end
      it "days_idの値が、id:0,name:'--'の時は保存できないこと" do
        @item.days_id = [0]
        @item.valid?
        expect(@item.errors.full_messages).to include("Days can't be blank", 'Days is not a number')
      end
      it 'priceに全角文字があると出品できないこと' do
        @item.price = 'う'
        @item.valid?
        expect(@item.errors.full_messages).to include("Price is not a number")
      end
    end
  end
end