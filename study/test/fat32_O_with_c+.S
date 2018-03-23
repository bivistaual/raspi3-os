{
   0x0000000000080d40 <+0>:     sub     sp, sp, #0x850

185             char cwd_temp[1024] = "\0";
   0x0000000000080d44 <+4>:     adrp    x3, 0x83000
   0x0000000000080d48 <+8>:     mov     x2, #0x3fe                      // #1022

184     {
   0x0000000000080d4c <+12>:    stp     x29, x30, [sp]
   0x0000000000080d50 <+16>:    mov     x29, sp
   0x0000000000080d54 <+20>:    stp     x19, x20, [sp, #16]
   0x0000000000080d58 <+24>:    mov     x20, x0

185             char cwd_temp[1024] = "\0";
   0x0000000000080d5c <+28>:    ldrh    w0, [x3, #2152]

184     {
   0x0000000000080d60 <+32>:    mov     w19, w1

185             char cwd_temp[1024] = "\0";
   0x0000000000080d64 <+36>:    strh    w0, [x29, #80]
   0x0000000000080d68 <+40>:    mov     w1, #0x0                        // #0
   0x0000000000080d6c <+44>:    add     x0, x29, #0x52
   0x0000000000080d70 <+48>:    bl      0x80318 <memset>

189             char *path_part;
190
191     #define PUSH(p)                                                                                                                                 \
192             do {                                                                                                                                            \
193                     stack[++top] = p;                                                                                                               \
194             } while (0)
195
196     #define POP(s)                                                                                                                                  \
197             (top >= 0 ? *((s) + (top--)) : 0)
198
199             if (num > 1) {
   0x0000000000080d74 <+52>:    cmp     w19, #0x1
   0x0000000000080d78 <+56>:    b.hi    0x80ecc <cd+396>  // b.pmore

201                     return;
202             }
203
204             if (num == 0) {
   0x0000000000080d7c <+60>:    cbz     w19, 0x80ebc <cd+380>
   0x0000000000080d80 <+64>:    str     x23, [x29, #48]

210                     strcpy(cwd_temp, cwd);
   0x0000000000080d84 <+68>:    add     x19, x29, #0x50

209             if (array[0][0] != '/')
   0x0000000000080d88 <+72>:    ldrb    w0, [x20]
   0x0000000000080d8c <+76>:    cmp     w0, #0x2f
   0x0000000000080d90 <+80>:    b.ne    0x80ee8 <cd+424>  // b.any

211             strcat(cwd_temp, array[0]);
   0x0000000000080d94 <+84>:    mov     x1, x20
   0x0000000000080d98 <+88>:    mov     x0, x19
   0x0000000000080d9c <+92>:    bl      0x801e8 <strcat>

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
212
213             pf = fat32_open(pfat32_global, cwd_temp);
   0x0000000000080da0 <+96>:    adrp    x0, 0x85000 <cwd+1016>
---Type <return> to continue, or q <return> to quit---
   0x0000000000080da4 <+100>:   mov     x1, x19
   0x0000000000080da8 <+104>:   ldr     x0, [x0, #56]
   0x0000000000080dac <+108>:   ldr     x0, [x0]
   0x0000000000080db0 <+112>:   bl      0x829d4 <fat32_open>
   0x0000000000080db4 <+116>:   mov     x23, x0

214
215             if (pf == NULL) {
   0x0000000000080db8 <+120>:   cbz     x0, 0x80f20 <cd+480>

218             }
219
220             if (!FAT32_IS_DIR(pf->attribute)) {
   0x0000000000080dbc <+124>:   ldrb    w0, [x0, #16]
   0x0000000000080dc0 <+128>:   tbz     w0, #4, 0x80efc <cd+444>
   0x0000000000080dc4 <+132>:   str     x21, [x29, #32]

223             }
224
225             path_part = strtok(cwd_temp, "/");
   0x0000000000080dc8 <+136>:   adrp    x21, 0x83000
   0x0000000000080dcc <+140>:   add     x21, x21, #0xd10
   0x0000000000080dd0 <+144>:   mov     x0, x19
   0x0000000000080dd4 <+148>:   mov     x1, x21
   0x0000000000080dd8 <+152>:   bl      0x80218 <strtok>
   0x0000000000080ddc <+156>:   mov     x20, x0

226             while (path_part != NULL) {
   0x0000000000080de0 <+160>:   cbz     x0, 0x80f38 <cd+504>
   0x0000000000080de4 <+164>:   str     x22, [x29, #40]
   0x0000000000080de8 <+168>:   adrp    x22, 0x83000
   0x0000000000080dec <+172>:   stp     x24, x25, [x29, #56]

230
231                     // NOT a . directory
232                     if (strcmp(".", path_part))
   0x0000000000080df0 <+176>:   add     x22, x22, #0xd20
   0x0000000000080df4 <+180>:   adrp    x24, 0x83000

233                             PUSH(path_part);
   0x0000000000080df8 <+184>:   add     x25, x29, #0x450

228                     if (!strcmp("..", path_part))
   0x0000000000080dfc <+188>:   add     x24, x24, #0xd18

188             int top = -1;
   0x0000000000080e00 <+192>:   mov     w19, #0xffffffff                // #-1
   0x0000000000080e04 <+196>:   nop

227                     // a .. directory
228                     if (!strcmp("..", path_part))
   0x0000000000080e08 <+200>:   mov     x1, x20
   0x0000000000080e0c <+204>:   mov     x0, x24
   0x0000000000080e10 <+208>:   bl      0x80070 <strcmp>
   0x0000000000080e14 <+212>:   cbnz    w0, 0x80e24 <cd+228>

229                             POP(stack);
   0x0000000000080e18 <+216>:   cmn     w19, #0x1
   0x0000000000080e1c <+220>:   cset    w0, ne  // ne = any
   0x0000000000080e20 <+224>:   sub     w19, w19, w0

230
231                     // NOT a . directory
232                     if (strcmp(".", path_part))
---Type <return> to continue, or q <return> to quit---
   0x0000000000080e24 <+228>:   mov     x1, x20
   0x0000000000080e28 <+232>:   mov     x0, x22
   0x0000000000080e2c <+236>:   bl      0x80070 <strcmp>
   0x0000000000080e30 <+240>:   cbz     w0, 0x80e3c <cd+252>

233                             PUSH(path_part);
   0x0000000000080e34 <+244>:   add     w19, w19, #0x1
   0x0000000000080e38 <+248>:   str     x20, [x25, w19, sxtw #3]

234
235                     path_part = strtok(NULL, "/");
   0x0000000000080e3c <+252>:   mov     x1, x21
   0x0000000000080e40 <+256>:   mov     x0, #0x0                        // #0
   0x0000000000080e44 <+260>:   bl      0x80218 <strtok>
   0x0000000000080e48 <+264>:   mov     x20, x0

226             while (path_part != NULL) {
   0x0000000000080e4c <+268>:   cbnz    x0, 0x80e08 <cd+200>

236             }
237
238             strcpy(cwd, "/");
   0x0000000000080e50 <+272>:   adrp    x22, 0x84000
   0x0000000000080e54 <+276>:   add     x22, x22, #0xc08
   0x0000000000080e58 <+280>:   mov     x1, x21
   0x0000000000080e5c <+284>:   mov     x0, x22
   0x0000000000080e60 <+288>:   bl      0x800b8 <strcpy>

239             for (int i = 0; i <= top; i++) {
   0x0000000000080e64 <+292>:   cmn     w19, #0x1
   0x0000000000080e68 <+296>:   b.eq    0x80ea4 <cd+356>  // b.none
   0x0000000000080e6c <+300>:   sxtw    x19, w19
   0x0000000000080e70 <+304>:   add     x24, x29, #0x450
   0x0000000000080e74 <+308>:   add     x19, x19, #0x1
   0x0000000000080e78 <+312>:   mov     x20, #0x0                       // #0
   0x0000000000080e7c <+316>:   nop

240                     strcat(cwd, stack[i]);
   0x0000000000080e80 <+320>:   ldr     x1, [x24, x20, lsl #3]
   0x0000000000080e84 <+324>:   mov     x0, x22
   0x0000000000080e88 <+328>:   add     x20, x20, #0x1
   0x0000000000080e8c <+332>:   bl      0x801e8 <strcat>

241                     strcat(cwd, "/");
   0x0000000000080e90 <+336>:   mov     x1, x21
   0x0000000000080e94 <+340>:   mov     x0, x22
   0x0000000000080e98 <+344>:   bl      0x801e8 <strcat>

239             for (int i = 0; i <= top; i++) {
   0x0000000000080e9c <+348>:   cmp     x19, x20
   0x0000000000080ea0 <+352>:   b.ne    0x80e80 <cd+320>  // b.any
   0x0000000000080ea4 <+356>:   ldr     x22, [x29, #40]
   0x0000000000080ea8 <+360>:   ldp     x24, x25, [x29, #56]

242             }
243
244             free(pf);
   0x0000000000080eac <+364>:   mov     x0, x23
   0x0000000000080eb0 <+368>:   bl      0x80878 <free>
   0x0000000000080eb4 <+372>:   ldr     x21, [x29, #32]
   0x0000000000080eb8 <+376>:   ldr     x23, [x29, #48]

245
246     #undef PUSH
---Type <return> to continue, or q <return> to quit---
247     #undef POP
248
249             return;
250     }
   0x0000000000080ebc <+380>:   ldp     x29, x30, [sp]
   0x0000000000080ec0 <+384>:   ldp     x19, x20, [sp, #16]
   0x0000000000080ec4 <+388>:   add     sp, sp, #0x850
   0x0000000000080ec8 <+392>:   ret

200                     kprintf("too many arguments\n");
   0x0000000000080ecc <+396>:   adrp    x0, 0x83000
   0x0000000000080ed0 <+400>:   add     x0, x0, #0xc90
   0x0000000000080ed4 <+404>:   bl      0x81b60 <kprintf>

245
246     #undef PUSH
247     #undef POP
248
249             return;
250     }
   0x0000000000080ed8 <+408>:   ldp     x29, x30, [sp]
   0x0000000000080edc <+412>:   ldp     x19, x20, [sp, #16]
   0x0000000000080ee0 <+416>:   add     sp, sp, #0x850
   0x0000000000080ee4 <+420>:   ret

210                     strcpy(cwd_temp, cwd);
   0x0000000000080ee8 <+424>:   adrp    x1, 0x84000
   0x0000000000080eec <+428>:   mov     x0, x19
   0x0000000000080ef0 <+432>:   add     x1, x1, #0xc08
   0x0000000000080ef4 <+436>:   bl      0x800b8 <strcpy>
   0x0000000000080ef8 <+440>:   b       0x80d94 <cd+84>

221                     kprintf("not a directory: %s\n", cwd_temp);
   0x0000000000080efc <+444>:   mov     x1, x19
   0x0000000000080f00 <+448>:   adrp    x0, 0x83000
   0x0000000000080f04 <+452>:   add     x0, x0, #0xcf8
   0x0000000000080f08 <+456>:   bl      0x81b60 <kprintf>

222                     return;
   0x0000000000080f0c <+460>:   ldr     x23, [x29, #48]

245
246     #undef PUSH
247     #undef POP
248
249             return;
250     }
   0x0000000000080f10 <+464>:   ldp     x29, x30, [sp]
   0x0000000000080f14 <+468>:   ldp     x19, x20, [sp, #16]
   0x0000000000080f18 <+472>:   add     sp, sp, #0x850
   0x0000000000080f1c <+476>:   ret

216                     kprintf("no such file or directory: %s\n", cwd_temp);
   0x0000000000080f20 <+480>:   adrp    x0, 0x83000
   0x0000000000080f24 <+484>:   mov     x1, x19
   0x0000000000080f28 <+488>:   add     x0, x0, #0xcc0
   0x0000000000080f2c <+492>:   bl      0x81b60 <kprintf>

217                     return;
   0x0000000000080f30 <+496>:   ldr     x23, [x29, #48]
   0x0000000000080f34 <+500>:   b       0x80ebc <cd+380>

236             }
237
---Type <return> to continue, or q <return> to quit---
238             strcpy(cwd, "/");
   0x0000000000080f38 <+504>:   adrp    x0, 0x84000
   0x0000000000080f3c <+508>:   mov     x1, x21
   0x0000000000080f40 <+512>:   add     x0, x0, #0xc08
   0x0000000000080f44 <+516>:   bl      0x800b8 <strcpy>
   0x0000000000080f48 <+520>:   b       0x80eac <cd+364>
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   



{
   0x00000000000829d4 <+0>:     stp     x29, x30, [sp, #-128]!
   0x00000000000829d8 <+4>:     mov     x29, sp
   0x00000000000829dc <+8>:     str     x19, [sp, #16]
   0x00000000000829e0 <+12>:    str     x22, [sp, #40]
   0x00000000000829e4 <+16>:    str     x24, [sp, #56]
   0x00000000000829e8 <+20>:    mov     x22, x0
   0x00000000000829ec <+24>:    mov     x19, x1

313             char *p, *path_part;
314             dir_entry_t *pdir_entry = NULL;
   0x00000000000829f0 <+28>:    str     xzr, [x29, #120]

320         
321         memset(&dir_sub_bk, 0, sizeof(dir_entry_t));
   0x00000000000829f4 <+32>:    mov     x2, #0x20                       // #32
   0x00000000000829f8 <+36>:    mov     w1, #0x0                        // #0
   0x00000000000829fc <+40>:    add     x0, x29, #0x58
   0x0000000000082a00 <+44>:    bl      0x80318 <memset>

322
323             if (path == NULL)
   0x0000000000082a04 <+48>:    cbz     x19, 0x82a6c <fat32_open+152>

325
326             // make a copy of constant path string
327
328             p = (char *)malloc(sizeof(char) * (strlen(path) + 1));
   0x0000000000082a08 <+52>:    mov     x0, x19
   0x0000000000082a0c <+56>:    bl      0x80050 <strlen>
   0x0000000000082a10 <+60>:    add     x0, x0, #0x1
   0x0000000000082a14 <+64>:    bl      0x80760 <malloc>
   0x0000000000082a18 <+68>:    mov     x24, x0

329             if (p == NULL)
   0x0000000000082a1c <+72>:    cbz     x0, 0x82a94 <fat32_open+192>

331             strcpy(p, path);
   0x0000000000082a20 <+76>:    mov     x1, x19
   0x0000000000082a24 <+80>:    mov     x0, x24
   0x0000000000082a28 <+84>:    bl      0x800b8 <strcpy>

332
333             path_part = strtok(p, "/");
   0x0000000000082a2c <+88>:    adrp    x1, 0x83000
   0x0000000000082a30 <+92>:    add     x1, x1, #0xd10
   0x0000000000082a34 <+96>:    mov     x0, x24
   0x0000000000082a38 <+100>:   bl      0x80218 <strtok>
   0x0000000000082a3c <+104>:   mov     x19, x0

   
   
   
   
   
   
   
   
334             while (path_part != NULL) {
   0x0000000000082a40 <+108>:   cbz     x0, 0x82cdc <fat32_open+776>
   0x0000000000082a44 <+112>:   stp     x20, x21, [x29, #24]
   0x0000000000082a48 <+116>:   str     x23, [x29, #48]
   0x0000000000082a4c <+120>:   str     x25, [x29, #64]

318             bool is_root = true;
   0x0000000000082a50 <+124>:   mov     w1, #0x1                        // #1

353
354                             // read next directory entry
355                             dirs = fat32_read_chain(pfat32,
   0x0000000000082a54 <+128>:   add     x23, x29, #0x78

342                             DEBUG("Root cluster read.\n");
   0x0000000000082a58 <+132>:   adrp    x25, 0x84000
   0x0000000000082a5c <+136>:   adrp    x21, 0x84000
   0x0000000000082a60 <+140>:   add     x21, x21, #0x8e0
   0x0000000000082a64 <+144>:   add     x21, x21, #0x60
   0x0000000000082a68 <+148>:   b       0x82b24 <fat32_open+336>

324                     panic("path is NULL");
   0x0000000000082a6c <+152>:   adrp    x3, 0x84000
   0x0000000000082a70 <+156>:   add     x3, x3, #0xb50
   0x0000000000082a74 <+160>:   adrp    x2, 0x84000
   0x0000000000082a78 <+164>:   add     x2, x2, #0x8e0
   0x0000000000082a7c <+168>:   add     x2, x2, #0x60
   0x0000000000082a80 <+172>:   mov     w1, #0x144                      // #324
   0x0000000000082a84 <+176>:   adrp    x0, 0x84000
   0x0000000000082a88 <+180>:   add     x0, x0, #0x9e0
   0x0000000000082a8c <+184>:   bl      0x81bd8 <__panic>
   0x0000000000082a90 <+188>:   b       0x82a08 <fat32_open+52>

330                     panic("Run out of memory!\n");
   0x0000000000082a94 <+192>:   adrp    x3, 0x84000
   0x0000000000082a98 <+196>:   add     x3, x3, #0xb60
   0x0000000000082a9c <+200>:   adrp    x2, 0x84000
   0x0000000000082aa0 <+204>:   add     x2, x2, #0x8e0
   0x0000000000082aa4 <+208>:   add     x2, x2, #0x60
   0x0000000000082aa8 <+212>:   mov     w1, #0x14a                      // #330
   0x0000000000082aac <+216>:   adrp    x0, 0x84000
   0x0000000000082ab0 <+220>:   add     x0, x0, #0x9e0
   0x0000000000082ab4 <+224>:   bl      0x81bd8 <__panic>
   0x0000000000082ab8 <+228>:   b       0x82a20 <fat32_open+76>

337
338                             dirs = fat32_read_chain(pfat32,
   0x0000000000082abc <+232>:   mov     x2, x23
   0x0000000000082ac0 <+236>:   ldr     w1, [x22, #176]
   0x0000000000082ac4 <+240>:   mov     x0, x22
   0x0000000000082ac8 <+244>:   bl      0x824b8 <fat32_read_chain>
   0x0000000000082acc <+248>:   lsr     x20, x0, #5

339                                             pfat32->root_cluster,
340                                             (char **)(&pdir_entry)) / sizeof(dir_entry_t);
341
342                             DEBUG("Root cluster read.\n");
   0x0000000000082ad0 <+252>:   add     x1, x25, #0xb78
   0x0000000000082ad4 <+256>:   mov     x0, x21
   0x0000000000082ad8 <+260>:   bl      0x81d08 <__debug>

358                                             (char **)(&pdir_entry)) / sizeof(dir_entry_t);
359                     }
360
361                     DEBUG("Finding sub-directory \"%s\".\n", path_part);
   0x0000000000082adc <+264>:   mov     x2, x19
   0x0000000000082ae0 <+268>:   adrp    x1, 0x84000
   0x0000000000082ae4 <+272>:   add     x1, x1, #0xb90
   0x0000000000082ae8 <+276>:   mov     x0, x21
   0x0000000000082aec <+280>:   bl      0x81d08 <__debug>

362
363                     pdir_sub = fat32_find_entry(path_part, pdir_entry, dirs);
   0x0000000000082af0 <+284>:   mov     x2, x20
   0x0000000000082af4 <+288>:   ldr     x1, [x29, #120]
   0x0000000000082af8 <+292>:   mov     x0, x19
   0x0000000000082afc <+296>:   bl      0x828b8 <fat32_find_entry>
   0x0000000000082b00 <+300>:   mov     x20, x0

364
365                     // no corresponding entry in directory entries
366                     if (pdir_sub == NULL)
   0x0000000000082b04 <+304>:   cbz     x0, 0x82ca0 <fat32_open+716>

367                             goto fat32_open_return;
368
369                     path_part = strtok(NULL, "/");
   0x0000000000082b08 <+308>:   adrp    x1, 0x83000
   0x0000000000082b0c <+312>:   add     x1, x1, #0xd10
   0x0000000000082b10 <+316>:   mov     x0, #0x0                        // #0
   0x0000000000082b14 <+320>:   bl      0x80218 <strtok>
   0x0000000000082b18 <+324>:   mov     x19, x0
   0x0000000000082b1c <+328>:   mov     w1, #0x0                        // #0

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
334             while (path_part != NULL) {
   0x0000000000082b20 <+332>:   cbz     x0, 0x82d00 <fat32_open+812>

335                     // determine to read root cluster or sub-directory cluster
336                     if (is_root) {
   0x0000000000082b24 <+336>:   cbnz    w1, 0x82abc <fat32_open+232>

343
344                             is_root = false;
345                     } else {
346                             // open fail when the last entry found is not a directory
347                             if (!FAT32_IS_DIR(pdir_sub->reg_dir.attribute))
   0x0000000000082b28 <+340>:   ldrb    w0, [x20, #11]
   0x0000000000082b2c <+344>:   tbz     w0, #4, 0x82c8c <fat32_open+696>

348                                     goto fat32_open_return;
349
350                             // copy the directory entry found and free current entries
351                             dir_sub_bk = *pdir_sub;
   0x0000000000082b30 <+348>:   ldp     x0, x1, [x20]
   0x0000000000082b34 <+352>:   stp     x0, x1, [x29, #88]
   0x0000000000082b38 <+356>:   ldp     x0, x1, [x20, #16]
   0x0000000000082b3c <+360>:   stp     x0, x1, [x29, #104]

   
   
   
   
   
   
   
   
352                             free(pdir_entry);
   0x0000000000082b40 <+364>:   ldr     x0, [x29, #120]
   0x0000000000082b44 <+368>:   bl      0x80878 <free>

356                                             (uint32_t)(dir_sub_bk.reg_dir.cluster_high << 16) +
   0x0000000000082b48 <+372>:   ldrh    w1, [x29, #108]

357                                             dir_sub_bk.reg_dir.cluster_low,
   0x0000000000082b4c <+376>:   ldrh    w0, [x29, #114]

355                             dirs = fat32_read_chain(pfat32,
   0x0000000000082b50 <+380>:   mov     x2, x23
   0x0000000000082b54 <+384>:   add     w1, w0, w1, lsl #16
   0x0000000000082b58 <+388>:   mov     x0, x22
   0x0000000000082b5c <+392>:   bl      0x824b8 <fat32_read_chain>
   0x0000000000082b60 <+396>:   lsr     x20, x0, #5
   0x0000000000082b64 <+400>:   b       0x82adc <fat32_open+264>

   
   
   
   
   
   
   
   
   
379             } else {
380
381                     DEBUG("before write pfile.\n");
   0x0000000000082b68 <+404>:   adrp    x23, 0x84000
   0x0000000000082b6c <+408>:   add     x23, x23, #0x8e0
   0x0000000000082b70 <+412>:   add     x23, x23, #0x60
   0x0000000000082b74 <+416>:   adrp    x1, 0x84000
   0x0000000000082b78 <+420>:   add     x1, x1, #0xbb0
   0x0000000000082b7c <+424>:   mov     x0, x23
   0x0000000000082b80 <+428>:   bl      0x81d08 <__debug>

382
383                     memcpy(((uint16_t *)(&pfile->cluster) + 1), &dir_sub_bk.reg_dir.cluster_high, 2);
   0x0000000000082b84 <+432>:   add     x21, x29, #0x58
   0x0000000000082b88 <+436>:   mov     x2, #0x2                        // #2
   0x0000000000082b8c <+440>:   add     x1, x29, #0x6c
   0x0000000000082b90 <+444>:   add     x0, x19, x2
   0x0000000000082b94 <+448>:   bl      0x80030 <memcpy>

384                     memcpy(&pfile->cluster, &dir_sub_bk.reg_dir.cluster_low, 2);
   0x0000000000082b98 <+452>:   mov     x2, #0x2                        // #2
   0x0000000000082b9c <+456>:   add     x1, x21, #0x1a
   0x0000000000082ba0 <+460>:   mov     x0, x19
   0x0000000000082ba4 <+464>:   bl      0x80030 <memcpy>

385
386     //              pfile->cluster = ((uint32_t)(dir_sub_bk.reg_dir.cluster_high) << 16) +
387     //                      dir_sub_bk.reg_dir.cluster_low;
388                     kprintf("+");
   0x0000000000082ba8 <+468>:   adrp    x20, 0x84000
   0x0000000000082bac <+472>:   add     x20, x20, #0xbc8			// x20 = 0x84bc8
   0x0000000000082bb0 <+476>:   mov     x0, x20
   0x0000000000082bb4 <+480>:   bl      0x81b60 <kprintf>

389                     pfile->attribute = dir_sub_bk.reg_dir.attribute;
   0x0000000000082bb8 <+484>:   ldrb    w0, [x29, #99]
   0x0000000000082bbc <+488>:   strb    w0, [x19, #16]

390                     kprintf("+");
   0x0000000000082bc0 <+492>:   mov     x0, x20
   0x0000000000082bc4 <+496>:   bl      0x81b60 <kprintf>

391                     pfile->pfat32 = pfat32;
   0x0000000000082bc8 <+500>:   str     x22, [x19, #8]

392                     kprintf("+");
   0x0000000000082bcc <+504>:   mov     x0, x20
   0x0000000000082bd0 <+508>:   bl      0x81b60 <kprintf>

393                     pfile->time_ts = dir_sub_bk.reg_dir.time_ts;
   0x0000000000082bd4 <+512>:   ldrb    w0, [x29, #101]
   0x0000000000082bd8 <+516>:   strb    w0, [x19, #17]

394                     kprintf("+");
   0x0000000000082bdc <+520>:   mov     x0, x20
   0x0000000000082be0 <+524>:   bl      0x81b60 <kprintf>

395
396                     memcpy(&pfile->creation_time, &dir_sub_bk.reg_dir.creation_time, 2);
   0x0000000000082be4 <+528>:   mov     x2, #0x2                        // #2
   0x0000000000082be8 <+532>:   add     x1, x21, #0xe
   0x0000000000082bec <+536>:   add     x0, x19, #0x12
   0x0000000000082bf0 <+540>:   bl      0x80030 <memcpy>

397     //              pfile->creation_time = dir_sub_bk.reg_dir.creation_time;
398                     kprintf("+");
   0x0000000000082bf4 <+544>:   mov     x0, x20
   0x0000000000082bf8 <+548>:   bl      0x81b60 <kprintf>

399
400                     memcpy(&pfile->creation_date, &dir_sub_bk.reg_dir.creation_date, 2);
   0x0000000000082bfc <+552>:   mov     x2, #0x2                        // #2
   0x0000000000082c00 <+556>:   add     x1, x21, #0x10
   0x0000000000082c04 <+560>:   add     x0, x19, #0x14
   0x0000000000082c08 <+564>:   bl      0x80030 <memcpy>

401     //              pfile->creation_date = dir_sub_bk.reg_dir.creation_date;
402                     kprintf("+");
   0x0000000000082c0c <+568>:   mov     x0, x20
   0x0000000000082c10 <+572>:   bl      0x81b60 <kprintf>

403
404                     memcpy(&pfile->last_acc_date, &dir_sub_bk.reg_dir.last_acc_date, 2);
   0x0000000000082c14 <+576>:   mov     x2, #0x2                        // #2
   0x0000000000082c18 <+580>:   add     x1, x21, #0x12
   0x0000000000082c1c <+584>:   add     x0, x19, #0x16
   0x0000000000082c20 <+588>:   bl      0x80030 <memcpy>

405                     kprintf("+");
   0x0000000000082c24 <+592>:   mov     x0, x20
   0x0000000000082c28 <+596>:   bl      0x81b60 <kprintf>

406                     memcpy(&pfile->last_mod_time, &dir_sub_bk.reg_dir.last_mod_time, 2);
   0x0000000000082c2c <+600>:   mov     x2, #0x2                        // #2
   0x0000000000082c30 <+604>:   add     x1, x21, #0x16
   0x0000000000082c34 <+608>:   add     x0, x19, #0x18
   0x0000000000082c38 <+612>:   bl      0x80030 <memcpy>

407                     kprintf("+");
   0x0000000000082c3c <+616>:   mov     x0, x20
   0x0000000000082c40 <+620>:   bl      0x81b60 <kprintf>

408                     memcpy(&pfile->last_mod_date, &dir_sub_bk.reg_dir.last_mod_date, 2);
   0x0000000000082c44 <+624>:   mov     x2, #0x2                        // #2
   0x0000000000082c48 <+628>:   add     x1, x21, #0x18
   0x0000000000082c4c <+632>:   add     x0, x19, #0x1a
   0x0000000000082c50 <+636>:   bl      0x80030 <memcpy>

409                     kprintf("+\n");
   0x0000000000082c54 <+640>:   mov     x0, x20
   0x0000000000082c58 <+644>:   bl      0x81b60 <kprintf>

410                     memcpy(&pfile->size, &dir_sub_bk.reg_dir.size, 4);
   0x0000000000082c5c <+648>:   mov     x2, #0x4                        // #4
   0x0000000000082c60 <+652>:   add     x1, x21, #0x1c
   0x0000000000082c64 <+656>:   add     x0, x19, #0x1c
   0x0000000000082c68 <+660>:   bl      0x80030 <memcpy>

411     /*
412                     pfile->last_acc_date = dir_sub_bk.reg_dir.last_acc_date;
413                     kprintf("+");
414                     pfile->last_mod_time = dir_sub_bk.reg_dir.last_mod_time;
415                     kprintf("+");
416                     pfile->last_mod_date = dir_sub_bk.reg_dir.last_mod_date;
417                     kprintf("+");
418                     pfile->size = dir_sub_bk.reg_dir.size;*/
419
420                     DEBUG("after write pfile.\n");

























   0x0000000000082c6c <+664>:   adrp    x1, 0x84000
   0x0000000000082c70 <+668>:   add     x1, x1, #0xbd0
   0x0000000000082c74 <+672>:   mov     x0, x23
   0x0000000000082c78 <+676>:   bl      0x81d08 <__debug>
   0x0000000000082c7c <+680>:   ldp     x20, x21, [x29, #24]
   0x0000000000082c80 <+684>:   ldr     x23, [x29, #48]
   0x0000000000082c84 <+688>:   ldr     x25, [x29, #64]
   0x0000000000082c88 <+692>:   b       0x82cb0 <fat32_open+732>

   
   
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
   
   
319             file *pfile = NULL;
   0x0000000000082c8c <+696>:   mov     x19, #0x0                       // #0
   0x0000000000082c90 <+700>:   ldp     x20, x21, [x29, #24]
   0x0000000000082c94 <+704>:   ldr     x23, [x29, #48]
   0x0000000000082c98 <+708>:   ldr     x25, [x29, #64]
   0x0000000000082c9c <+712>:   b       0x82cb0 <fat32_open+732>
   0x0000000000082ca0 <+716>:   mov     x19, #0x0                       // #0
   0x0000000000082ca4 <+720>:   ldp     x20, x21, [x29, #24]
   0x0000000000082ca8 <+724>:   ldr     x23, [x29, #48]
   0x0000000000082cac <+728>:   ldr     x25, [x29, #64]


   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
421             }
422
423     fat32_open_return:
424
425             free(p);
   0x0000000000082cb0 <+732>:   mov     x0, x24
   0x0000000000082cb4 <+736>:   bl      0x80878 <free>

426             if (pdir_entry != NULL) {
   0x0000000000082cb8 <+740>:   ldr     x0, [x29, #120]
   0x0000000000082cbc <+744>:   cbz     x0, 0x82cc4 <fat32_open+752>

427                     free(pdir_entry);
   0x0000000000082cc0 <+748>:   bl      0x80878 <free>

428             }
429
430             return pfile;
431     }
   0x0000000000082cc4 <+752>:   mov     x0, x19
   0x0000000000082cc8 <+756>:   ldr     x19, [sp, #16]
   0x0000000000082ccc <+760>:   ldr     x22, [sp, #40]
   0x0000000000082cd0 <+764>:   ldr     x24, [sp, #56]
   0x0000000000082cd4 <+768>:   ldp     x29, x30, [sp], #128
   0x0000000000082cd8 <+772>:   ret

   
   
   
   
   
   
   
   
   
   
   
   
   
   
372             pfile = (file *)malloc(sizeof(file));
   0x0000000000082cdc <+776>:   mov     x0, #0x20                       // #32
   0x0000000000082ce0 <+780>:   bl      0x80760 <malloc>
   0x0000000000082ce4 <+784>:   mov     x19, x0

373             if (pfile == NULL)
   0x0000000000082ce8 <+788>:   cbz     x0, 0x82cb0 <fat32_open+732>

374                     goto fat32_open_return;
375
376             if (is_root) {
377                     pfile->cluster = pfat32->root_cluster;
   0x0000000000082cec <+792>:   ldr     w0, [x22, #176]
   0x0000000000082cf0 <+796>:   str     w0, [x19]

378                     pfile->attribute = 0x10;
   0x0000000000082cf4 <+800>:   mov     w0, #0x10                       // #16
   0x0000000000082cf8 <+804>:   strb    w0, [x19, #16]
   0x0000000000082cfc <+808>:   b       0x82cb0 <fat32_open+732>

372             pfile = (file *)malloc(sizeof(file));
   0x0000000000082d00 <+812>:   mov     x0, #0x20                       // #32
   0x0000000000082d04 <+816>:   bl      0x80760 <malloc>
   0x0000000000082d08 <+820>:   mov     x19, x0

373             if (pfile == NULL)
   0x0000000000082d0c <+824>:   cbnz    x0, 0x82b68 <fat32_open+404>
   0x0000000000082d10 <+828>:   ldp     x20, x21, [x29, #24]
   0x0000000000082d14 <+832>:   ldr     x23, [x29, #48]
   0x0000000000082d18 <+836>:   ldr     x25, [x29, #64]
   0x0000000000082d1c <+840>:   b       0x82cb0 <fat32_open+732>
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   {
   0x0000000000080878 <+0>:     stp     x29, x30, [sp, #-32]!

141             struct mem_chuck * pchuck;
142
143         DEBUG("Freeing 0x%x\n", (uint64_t)ptr);
   0x000000000008087c <+4>:     mov     x2, x0		
   0x0000000000080880 <+8>:     adrp    x1, 0x83000
   0x0000000000080884 <+12>:    add     x1, x1, #0x7b8 // x1 = 0x837b8

140     {
   0x0000000000080888 <+16>:    mov     x29, sp
   0x000000000008088c <+20>:    stp     x19, x20, [sp, #16]

141             struct mem_chuck * pchuck;
142
143         DEBUG("Freeing 0x%x\n", (uint64_t)ptr);
   0x0000000000080890 <+24>:    adrp    x19, 0x83000
   0x0000000000080894 <+28>:    add     x19, x19, #0x728	 

140     {
   0x0000000000080898 <+32>:    mov     x20, x0		 

141             struct mem_chuck * pchuck;
142
143         DEBUG("Freeing 0x%x\n", (uint64_t)ptr);
   0x000000000008089c <+36>:    add     x19, x19, #0x10	 
   0x00000000000808a0 <+40>:    mov     x0, x19			 
   0x00000000000808a4 <+44>:    bl      0x81d08 <__debug>

144             DEBUG("Fetching pchuck at 0x%x\n", (struct mem_chuck *)ptr - 1);
   0x00000000000808a8 <+48>:    sub     x2, x20, #0x18
   0x00000000000808ac <+52>:    mov     x0, x19
   0x00000000000808b0 <+56>:    adrp    x1, 0x83000
   0x00000000000808b4 <+60>:    add     x1, x1, #0x7c8
   0x00000000000808b8 <+64>:    bl      0x81d08 <__debug>

145
146             pchuck = ((struct mem_chuck *)ptr) - 1;
147             MEM_CHUCK_CLR(pchuck);
   0x00000000000808bc <+68>:    ldur    w2, [x20, #-24]

148
149             DEBUG("Free success.\n");
   0x00000000000808c0 <+72>:    mov     x0, x19
   0x00000000000808c4 <+76>:    adrp    x1, 0x83000
   0x00000000000808c8 <+80>:    add     x1, x1, #0x7e8

147             MEM_CHUCK_CLR(pchuck);
   0x00000000000808cc <+84>:    and     w2, w2, #0xfffffffe
   0x00000000000808d0 <+88>:    stur    w2, [x20, #-24]

150
151             return;
152     }
   0x00000000000808d4 <+92>:    ldp     x19, x20, [sp, #16]
   0x00000000000808d8 <+96>:    ldp     x29, x30, [sp], #32

149             DEBUG("Free success.\n");
   0x00000000000808dc <+100>:   b       0x81d08 <__debug>
