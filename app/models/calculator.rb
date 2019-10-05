class Calculator
    include ActiveModel::Model
    attr_accessor :ml
    attr_accessor :percent
    attr_accessor :weight #これを書かなかったらどうなるか
    validates :ml , presence: true
    validates :percent, presence: true
    validates :weight, presence: true
    #バリデーションはデータベースに保存するときだからいらないんじゃないか
end 
    