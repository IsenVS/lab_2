section .data
    S db "1001", 0
    S_len equ $-S
    x dd 2
    c dd 0
    flag db 1
    N dd S_len
    limit dd 0
    max dd 0
    count dd 0
    one db '1'
    zero db '0'
    yesMsg db "Yes", 0
    noMsg db "No", 0

section .text
    global _start

_start:
    ; Count '1's in S
    mov ecx, S_len
    mov esi, S
count_loop:
    mov al, [esi]
    cmp al, byte [one]
    je increment_c
skip_increment:
    inc esi
    loop count_loop
    jmp calculate_limit
increment_c:
    inc dword [c]
    jmp skip_increment

calculate_limit:
    mov eax, [x]
    imul eax, dword [c]
    inc eax
    mov [limit], eax

    ; Initialize variables for loop
    xor ecx, ecx
    mov ecx, [N]
    dec ecx
    mov [N], ecx
    xor esi, esi ; loop counter i

loop_start:
    cmp esi, ecx
    jge check_flag

    ; Check if S[i] == '0'
    movzx eax, byte [S + esi]
    cmp al, byte [zero]
    jne reset_count

    ; Increment count
    add dword [count], 1
    ; Check if max < count
    mov eax, [count]
    cmp eax, [max]
    jle no_new_max

    ; Update max
    mov [max], eax
    jmp increment_i

no_new_max:
    jmp increment_i

reset_count:
    mov dword [count], 0

increment_i:
    inc esi
    jmp loop_start

check_flag:
    ; Check if max >= limit
    mov eax, [max]
    cmp eax, [limit]
    jl print_no
    ; Set flag to true for "Yes"
    mov byte [flag], 1
    jmp print_message

print_no:
    ; Set flag to false for "No"
    mov byte [flag], 0

print_message:
    mov edx, 4 ; length of "Yes" or "No"
    mov ecx, yesMsg
    cmp byte [flag], 0
    je print_yes_message

print_no_message:
    mov ecx, noMsg
    jmp final_print

print_yes_message:
    mov ecx, yesMsg

final_print:
    mov ebx, 1 ; file descriptor (stdout)
    mov eax, 4 ; syscall number (sys_write)
    int 0x80

    ; Exit
    mov eax, 1 ; syscall number (sys_exit)
    xor ebx, ebx ; status 0
    int 0x80