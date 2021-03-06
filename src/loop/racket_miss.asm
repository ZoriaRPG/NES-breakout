; ---[ FLIPPER MISS ]---------------------
; Should be called whenever the ball gets below racket

RacketMiss:
    JSR PlayDeathSound
    LDX score
    BEQ @game_over
    DEX
    STX score
    JSR DrawScore
    
    JSR DecreaseRacketWidth

    LDA #TRUE
    STA holding_ball
    RTS

    @game_over: 
        LDA #0
        STA x_velocity
        STA y_velocity
        RTS
