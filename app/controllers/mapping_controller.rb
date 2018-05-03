class MappingController < ApplicationController
    before_action :set_mapping, only: [:index, :check]
    def index
        @hasil =   @nilai.inject(0){|sum,x| sum + x }
        @rata = @hasil/@jumlah
        render json: {
                status: 'OK',
                jumlah: @hasil,
                rata: @rata

        }, status: :ok
    end
    
    def self.redicate
        if @rata > 80 and @rata <=100
            predicate= 'A'
        elsif @rata > 60 and @rata <=80
            predicate='B'
        elsif @rata > 40 and @rata <=60
            predicate='C'
        elsif @rata > 20 and @rata <=40
            predicate='D'
        else 
            predicate = 'E'
        end
    end

    private 
    def set_mapping
        @nilai = Course.all.map { |n| n.value }
        @jumlah = Course.count
    end

    
end

    
