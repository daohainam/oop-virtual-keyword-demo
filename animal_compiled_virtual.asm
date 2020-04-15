.LC0:
        .string "Running"
Dog::move():
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        nop
        leave
        ret
.LC1:
        .string "Swimming"
Fish::move():
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    printf
        nop
        leave
        ret
dog:
        .quad   vtable for Dog+16
fish:
        .quad   vtable for Fish+16
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], OFFSET FLAT:dog
        mov     rax, QWORD PTR [rbp-8]
        mov     rax, QWORD PTR [rax]
        mov     rdx, QWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        mov     rdi, rax
        call    rdx
        mov     QWORD PTR [rbp-8], OFFSET FLAT:fish
        mov     rax, QWORD PTR [rbp-8]
        mov     rax, QWORD PTR [rax]
        mov     rdx, QWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        mov     rdi, rax
        call    rdx
        mov     eax, 0
        leave
        ret
vtable for Fish:
        .quad   0
        .quad   typeinfo for Fish
        .quad   Fish::move()
vtable for Dog:
        .quad   0
        .quad   typeinfo for Dog
        .quad   Dog::move()
typeinfo for Fish:
        .quad   vtable for __cxxabiv1::__si_class_type_info+16
        .quad   typeinfo name for Fish
        .quad   typeinfo for Animal
typeinfo name for Fish:
        .string "4Fish"
typeinfo for Dog:
        .quad   vtable for __cxxabiv1::__si_class_type_info+16
        .quad   typeinfo name for Dog
        .quad   typeinfo for Animal
typeinfo name for Dog:
        .string "3Dog"
typeinfo for Animal:
        .quad   vtable for __cxxabiv1::__class_type_info+16
        .quad   typeinfo name for Animal
typeinfo name for Animal:
        .string "6Animal"
__static_initialization_and_destruction_0(int, int):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], edi
        mov     DWORD PTR [rbp-8], esi
        cmp     DWORD PTR [rbp-4], 1
        jne     .L7
        cmp     DWORD PTR [rbp-8], 65535
        jne     .L7
        mov     edi, OFFSET FLAT:_ZStL8__ioinit
        call    std::ios_base::Init::Init() [complete object constructor]
        mov     edx, OFFSET FLAT:__dso_handle
        mov     esi, OFFSET FLAT:_ZStL8__ioinit
        mov     edi, OFFSET FLAT:_ZNSt8ios_base4InitD1Ev
        call    __cxa_atexit
.L7:
        nop
        leave
        ret
_GLOBAL__sub_I_dog:
        push    rbp
        mov     rbp, rsp
        mov     esi, 65535
        mov     edi, 1
        call    __static_initialization_and_destruction_0(int, int)
        pop     rbp
        ret
