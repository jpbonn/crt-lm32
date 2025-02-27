# See the multi-arch.mk file for an example of how to build for
# architectures variants (e.g. fp support, barrel shift).

Description := LatticeMico32

Configs := lm32
Arch := lm32

CC := clang
AS=lm32-elf-as
LD=lm32-elf-ld
OBJCOPY=lm32-elf-objcopy
AR=lm32-elf-ar
RANLIB=lm32-elf-ranlib

CFLAGS := -ffreestanding -Wall -Werror -O3 --target=lm32-elf -DKERNEL_USE 

#
# These functions were determined by:  make info-functions | egrep "lib/builtins)|lib/builtins "
#
FUNCTIONS := absvdi2 absvsi2 absvti2 adddf3 addsf3 addtf3 addvdi3 addvsi3 addvti3 ashldi3 ashlti3 ashrdi3 ashrti3 clear_cache clzdi2 clzsi2 clzti2 cmpdi2 cmpti2 comparedf2 comparesf2 comparetf2 ctzdi2 ctzsi2 ctzti2 divdc3 divdf3 divdi3 divmoddi4 divmodsi4 divsc3 divsf3 divsi3 divtf3 divti3 divxc3 extenddftf2 extendsfdf2 extendsftf2 ffsdi2 ffsti2 fixdfdi fixdfsi fixdfti fixsfdi fixsfsi fixsfti fixunsdfdi fixunsdfsi fixunsdfti fixunssfdi fixunssfsi fixunssfti fixunsxfdi fixunsxfsi fixunsxfti fixxfdi fixxfti floatdidf floatdisf floatdixf floatsidf floatsisf floatsitf floattidf floattisf floattixf floatundidf floatundisf floatundixf floatunsidf floatunsisf floatunsitf floatuntidf floatuntisf floatuntixf int_util lshrdi3 lshrti3 moddi3 modsi3 modti3 muldc3 muldf3 muldi3 mulodi4 mulosi4 muloti4 mulsc3 mulsf3 multf3 multi3 mulvdi3 mulvsi3 mulvti3 mulxc3 negdf2 negdi2 negsf2 negti2 negvdi2 negvsi2 negvti2 paritydi2 paritysi2 parityti2 popcountdi2 popcountsi2 popcountti2 powidf2 powisf2 powitf2 powixf2 subdf3 subsf3 subtf3 subvdi3 subvsi3 subvti3 trampoline_setup truncdfsf2 trunctfdf2 trunctfsf2 ucmpdi2 ucmpti2 udivdi3 udivmoddi4 udivmodsi4 udivmodti4 udivsi3 udivti3 umoddi3 umodsi3 umodti3
