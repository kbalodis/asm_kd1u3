.text
.global replace
replace:
  STMDB SP!, { R4 - R12, LR } 
    
  @ielade mainigo vertibas registros r4 - r6
  mov r4, r0 @T
  mov r5, r1 @S0
  mov r6, r2 @S2

  mov r0, #0
  ldr r3, =val
  ldrb r3, [r3]
  for1:
    ldrb r2, [r5, r0]
    cmp r2, r3
    beq end
    mov r1, #0
    for2:
      ldrb r7, [r4, r1]
      cmp r7, r3
      beq endfor2
      cmp r2, r7
      beq replacechar
      add r1, r1, #1
      b for2
    endfor2:
    add r0, r0, #1
    b for1

  replacechar:
      ldrb r8, [r6, r0]
      strb r8, [r4, r1]
      add r1, r1, #1
      b for2

  end:
    mov r0, #0
    LDMIA SP!, { R4 - R12, PC }

.data
  val: .byte 0x00
         